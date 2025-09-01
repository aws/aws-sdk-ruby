# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroups
  # This module contains the types returned by client operations.
  module Types

    # <p>The Resource Groups settings for this Amazon Web Services account.</p>
    # @!attribute group_lifecycle_events_desired_status
    #   <p>The desired target status of the group lifecycle events feature. If</p>
    #   @return [String]
    # @!attribute group_lifecycle_events_status
    #   <p>The current status of the group lifecycle events feature.</p>
    #   @return [String]
    # @!attribute group_lifecycle_events_status_message
    #   <p>The text of any error message occurs during an attempt to turn group lifecycle events on or off.</p>
    #   @return [String]
    class AccountSettings < Struct.new(
      :group_lifecycle_events_desired_status,
      :group_lifecycle_events_status,
      :group_lifecycle_events_status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request includes one or more parameters that violate validation rules.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    #   @return [String]
    class CancelTagSyncTaskInput < Struct.new(
      :task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the group, which is the identifier of the group in other operations. You
    #               can't change the name of a resource group after you create it. A resource group name can
    #               consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
    #               with <code>AWS</code>, <code>aws</code>, or any other possible capitalization; these are
    #               reserved. A resource group name must be unique within each Amazon Web Services Region in your Amazon Web Services
    #               account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource group. Descriptions can consist of letters, numbers,
    #               hyphens, underscores, periods, and spaces.</p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The resource query that determines which Amazon Web Services resources are members of this group.
    #               For more information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #            <note>
    #               <p>A resource group can contain either a <code>ResourceQuery</code> or a
    #                       <code>Configuration</code>, but not both.</p>
    #            </note>
    #   @return [Types::ResourceQuery]
    # @!attribute tags
    #   <p>The tags to add to the group. A tag is key-value pair string.</p>
    #   @return [Hash<String, String>]
    # @!attribute configuration
    #   <p>A configuration associates the resource group with an Amazon Web Services service and specifies how
    #               the service can interact with the resources in the group. A configuration is an array of
    #                   <a>GroupConfigurationItem</a> elements. For details about the syntax of
    #               service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for Resource Groups</a>.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    #   @return [Array<Types::GroupConfigurationItem>]
    # @!attribute criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this application group within your organization. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    #   @return [String]
    class CreateGroupInput < Struct.new(
      :name,
      :description,
      :resource_query,
      :tags,
      :configuration,
      :criticality,
      :owner,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The description of the resource group.</p>
    #   @return [Types::Group]
    # @!attribute resource_query
    #   <p>The resource query associated with the group. For more information about resource
    #               queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #   @return [Types::ResourceQuery]
    # @!attribute tags
    #   <p>The tags associated with the group.</p>
    #   @return [Hash<String, String>]
    # @!attribute group_configuration
    #   <p>The service configuration associated with the resource group. For details about the
    #               syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for Resource Groups</a>.</p>
    #   @return [Types::GroupConfiguration]
    class CreateGroupOutput < Struct.new(
      :group,
      :resource_query,
      :tags,
      :group_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to delete.</p>
    #   @return [String]
    class DeleteGroupInput < Struct.new(
      :group_name,
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>A full description of the deleted resource group.</p>
    #   @return [Types::Group]
    class DeleteGroupOutput < Struct.new(
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource that failed to be added to or removed from a group.</p>
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) of the resource that failed to be added or removed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message text associated with the failure.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code associated with the failure.</p>
    #   @return [String]
    class FailedResource < Struct.new(
      :resource_arn,
      :error_message,
      :error_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The caller isn't authorized to make the request. Check permissions.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>The current settings for the optional features in Resource Groups.</p>
    #   @return [Types::AccountSettings]
    class GetAccountSettingsOutput < Struct.new(
      :account_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group for which you want to retrive the service
    #               configuration.</p>
    #   @return [String]
    class GetGroupConfigurationInput < Struct.new(
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_configuration
    #   <p>A structure that describes the service configuration attached with the specified
    #               group. For details about the service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                   Resource Groups</a>.</p>
    #   @return [Types::GroupConfiguration]
    class GetGroupConfigurationOutput < Struct.new(
      :group_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to retrieve.</p>
    #   @return [String]
    class GetGroupInput < Struct.new(
      :group_name,
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>A structure that contains the metadata details for the specified resource group. Use
    #                   <a>GetGroupQuery</a> and <a>GetGroupConfiguration</a> to get
    #               those additional details of the resource group.</p>
    #   @return [Types::Group]
    class GetGroupOutput < Struct.new(
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to query.</p>
    #   @return [String]
    class GetGroupQueryInput < Struct.new(
      :group_name,
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_query
    #   <p>The resource query associated with the specified group. For more information about
    #               resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>.</p>
    #   @return [Types::GroupQuery]
    class GetGroupQueryOutput < Struct.new(
      :group_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    #   @return [String]
    class GetTagSyncTaskInput < Struct.new(
      :task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the application group. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the application group. </p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The tag key. </p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value. </p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The query you can use to define a resource group or a search for resources. A
    #                   <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                   <code>Query</code> string as JSON string objects. See the examples section for
    #               example JSON strings. For more information about creating a resource group with a
    #               resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html">Build queries and groups in
    #                   Resource Groups</a> in the <i>Resource Groups User Guide</i>
    #            </p>
    #            <p>When you combine all of the elements together into a single string, any double quotes
    #               that are embedded inside another double quote pair must be escaped by preceding the
    #               embedded double quote with a backslash character (\). For example, a complete
    #                   <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #               parameter example:</p>
    #            <p>
    #               <code>--resource-query
    #                   '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #            </p>
    #            <p>In the preceding example, all of the double quote characters in the value part of the
    #                   <code>Query</code> element must be escaped because the value itself is surrounded by
    #               double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                   strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #            <p>For the complete list of resource types that you can use in the array value for
    #                   <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                   you can use with Resource Groups and Tag Editor</a> in the
    #                   <i>Resource Groups User Guide</i>. For example:</p>
    #            <p>
    #               <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #            </p>
    #   @return [Types::ResourceQuery]
    # @!attribute role_arn
    #   <p>The Amazon resource name (ARN) of the role assumed by Resource Groups to tag and untag resources on your behalf. </p>
    #            <p>For more information about this role, review <a href="https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role">Tag-sync required permissions</a>. 
    #           </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the tag-sync task. </p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The tag-sync task is actively managing resources in 
    #                       the application by adding or removing the <code>awsApplication</code> tag from resources 
    #                       when they are tagged or untagged with the specified tag key-value pair. 
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The tag-sync task is not actively managing resources 
    #                       in the application. Review the <code>ErrorMessage</code> for more information about 
    #                       resolving the error. 
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>The specific error message in cases where the tag-sync task status
    #               is <code>ERROR</code>. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the tag-sync task was created. </p>
    #   @return [Time]
    class GetTagSyncTaskOutput < Struct.new(
      :group_arn,
      :group_name,
      :task_arn,
      :tag_key,
      :tag_value,
      :resource_query,
      :role_arn,
      :status,
      :error_message,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group whose tags you want to retrieve.</p>
    #   @return [String]
    class GetTagsInput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>TheAmazon resource name (ARN) of the tagged resource group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the specified resource group.</p>
    #   @return [Hash<String, String>]
    class GetTagsOutput < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A resource group that contains Amazon Web Services resources. You can assign resources to the group
    #             by associating either of the following elements with the group:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>ResourceQuery</a> - Use a resource query to specify a set of tag
    #                     keys and values. All resources in the same Amazon Web Services Region and Amazon Web Services account that
    #                     have those keys with the same values are included in the group. You can add a
    #                     resource query when you create the group, or later by using the <a>PutGroupConfiguration</a> operation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>GroupConfiguration</a> - Use a service configuration to
    #                     associate the group with an Amazon Web Services service. The configuration specifies which
    #                     resource types can be included in the group.</p>
    #             </li>
    #          </ul>
    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the resource group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the resource group.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this application group within your organization. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    #   @return [String]
    # @!attribute application_tag
    #   <p>A tag that defines the application group membership. This tag is only supported 
    #               for application groups. </p>
    #   @return [Hash<String, String>]
    class Group < Struct.new(
      :group_arn,
      :name,
      :description,
      :criticality,
      :owner,
      :display_name,
      :application_tag,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A service configuration associated with a resource group. The configuration options
    #             are determined by the Amazon Web Services service that defines the <code>Type</code>, and specifies
    #             which resources can be included in the group. You can add a service configuration when
    #             you create the group by using <a>CreateGroup</a>, or later by using the <a>PutGroupConfiguration</a> operation. For details about group service
    #             configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    # @!attribute configuration
    #   <p>The configuration currently associated with the group and in effect.</p>
    #   @return [Array<Types::GroupConfigurationItem>]
    # @!attribute proposed_configuration
    #   <p>If present, the new configuration that is in the process of being applied to the
    #               group.</p>
    #   @return [Array<Types::GroupConfigurationItem>]
    # @!attribute status
    #   <p>The current status of an attempt to update the group configuration.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If present, the reason why a request to update the group configuration failed.</p>
    #   @return [String]
    class GroupConfiguration < Struct.new(
      :configuration,
      :proposed_configuration,
      :status,
      :failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An item in a group configuration. A group service configuration can have one or more
    #             items. For details about group service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                 resource groups</a>.</p>
    # @!attribute type
    #   <p>Specifies the type of group configuration item. Each item must have a unique value for
    #                   <code>type</code>. For the list of types that you can specify for a configuration
    #               item, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A collection of parameters for this group configuration item. For the list of
    #               parameters that you can use with each configuration item type, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types">Supported
    #                   resource types and parameters</a>.</p>
    #   @return [Array<Types::GroupConfigurationParameter>]
    class GroupConfigurationItem < Struct.new(
      :type,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A parameter for a group configuration item. For details about group service
    #             configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    # @!attribute name
    #   <p>The name of the group configuration parameter. For the list of parameters that you can
    #               use with each configuration item type, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value or values to be used for the specified parameter. For the list of values you
    #               can use with each parameter, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types">Supported resource types and
    #                   parameters</a>.</p>
    #   @return [Array<String>]
    class GroupConfigurationParameter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupConfigurationStatus
      UPDATING = 'UPDATING'
      UPDATE_COMPLETE = 'UPDATE_COMPLETE'
      UPDATE_FAILED = 'UPDATE_FAILED'
    end

    # <p>A filter collection that you can use to restrict the results from a <code>List</code>
    #             operation to only those you want to include.</p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more filter values. Allowed filter values vary by group filter name, and are
    #               case-sensitive.</p>
    #   @return [Array<String>]
    class GroupFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupFilterName
      ResourceType = 'resource-type'
      ConfigurationType = 'configuration-type'
      Owner = 'owner'
      DisplayName = 'display-name'
      Criticality = 'criticality'
    end

    # <p>The unique identifiers for a resource group.</p>
    # @!attribute group_name
    #   <p>The name of the resource group.</p>
    #   @return [String]
    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the resource group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application group. </p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this group within your organization. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    #   @return [String]
    class GroupIdentifier < Struct.new(
      :group_name,
      :group_arn,
      :description,
      :criticality,
      :owner,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupLifecycleEventsDesiredStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
    end

    module GroupLifecycleEventsStatus
      ACTIVE = 'ACTIVE'
      INACTIVE = 'INACTIVE'
      IN_PROGRESS = 'IN_PROGRESS'
      ERROR = 'ERROR'
    end

    # <p>A mapping of a query attached to a resource group that determines the Amazon Web Services resources
    #             that are members of the group.</p>
    # @!attribute group_name
    #   <p>The name of the resource group that is associated with the specified resource
    #               query.</p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The resource query that determines which Amazon Web Services resources are members of the associated
    #               resource group.</p>
    #   @return [Types::ResourceQuery]
    class GroupQuery < Struct.new(
      :group_name,
      :resource_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to add resources to.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The list of Amazon resource names (ARNs) of the resources to be added to the group. </p>
    #   @return [Array<String>]
    class GroupResourcesInput < Struct.new(
      :group,
      :resource_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute succeeded
    #   <p>A list of Amazon resource names (ARNs) of the resources that this operation successfully added to the
    #               group.</p>
    #   @return [Array<String>]
    # @!attribute failed
    #   <p>A list of Amazon resource names (ARNs) of any resources that this operation failed to add to the group.</p>
    #   @return [Array<Types::FailedResource>]
    # @!attribute pending
    #   <p>A list of Amazon resource names (ARNs) of any resources that this operation is still in the process adding to
    #               the group. These pending additions continue asynchronously. You can check the status of
    #               pending additions by using the <code>
    #                  <a>ListGroupResources</a>
    #               </code>
    #               operation, and checking the <code>Resources</code> array in the response and the
    #                   <code>Status</code> field of each object in that array. </p>
    #   @return [Array<Types::PendingResource>]
    class GroupResourcesOutput < Struct.new(
      :succeeded,
      :failed,
      :pending,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupingStatus
      SUCCESS = 'SUCCESS'
      FAILED = 'FAILED'
      IN_PROGRESS = 'IN_PROGRESS'
      SKIPPED = 'SKIPPED'
    end

    # <p>The information about a grouping or ungrouping resource action. </p>
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) of a resource. </p>
    #   @return [String]
    # @!attribute action
    #   <p>Describes the resource grouping action with values of 
    #               <code>GROUP</code> or <code>UNGROUP</code>. </p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the resource grouping status with values of 
    #               <code>SUCCESS</code>, <code>FAILED</code>, <code>IN_PROGRESS</code>, 
    #               or <code>SKIPPED</code>. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message that explains the <code>ErrorCode</code>. </p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Specifies the error code that was raised. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>A timestamp of when the status was last updated. </p>
    #   @return [Time]
    class GroupingStatusesItem < Struct.new(
      :resource_arn,
      :action,
      :status,
      :error_message,
      :error_code,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupingType
      GROUP = 'GROUP'
      UNGROUP = 'UNGROUP'
    end

    # <p>An internal error occurred while processing the request. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this parameter. Use the
    #                               <code>Group</code> request field instead.</b>
    #                  </i>
    #               </p>
    #            </important>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply
    #               to a <code>ListGroupResources</code> operation. Filters the results to include only
    #               those of the specified resource types.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resource-type</code> - Filter resources by their type. Specify up to
    #                       five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.
    #                   </p>
    #               </li>
    #            </ul>
    #            <p>When you specify a <code>resource-type</code> filter for
    #                   <code>ListGroupResources</code>, Resource Groups validates your filter resource types
    #               against the types that are defined in the query associated with the group. For example,
    #               if a group contains only S3 buckets because its query specifies only that resource type,
    #               but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups does not
    #               filter for EC2 instances. In this case, a <code>ListGroupResources</code> request
    #               returns a <code>BadRequestException</code> error with a message similar to the
    #               following:</p>
    #            <p>
    #               <code>The resource types specified as filters in the request are not
    #               valid.</code>
    #            </p>
    #            <p>The error includes a list of resource types that failed the validation because they
    #               are not part of the query associated with the group. This validation doesn't occur when
    #               the group query specifies <code>AWS::AllSupported</code>, because a group based on such
    #               a query can contain any of the allowed resource types for the query type (tag-based or
    #               Amazon CloudFront stack-based queries).</p>
    #   @return [Array<Types::ResourceFilter>]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #   @return [String]
    class ListGroupResourcesInput < Struct.new(
      :group_name,
      :group,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure returned by the <a>ListGroupResources</a> operation that
    #             contains identity and group membership status information for one of the resources in
    #             the group.</p>
    # @!attribute identifier
    #   <p>A structure that contains the ARN of a resource and its resource type.</p>
    #   @return [Types::ResourceIdentifier]
    # @!attribute status
    #   <p>A structure that contains the status of this resource's membership in the
    #               group.</p>
    #            <note>
    #               <p>This field is present in the response only if the group is of type
    #                       <code>AWS::EC2::HostManagement</code>.</p>
    #            </note>
    #   @return [Types::ResourceStatus]
    class ListGroupResourcesItem < Struct.new(
      :identifier,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>An array of resources from which you can determine each resource's identity, type, and
    #               group membership status.</p>
    #   @return [Array<Types::ListGroupResourcesItem>]
    # @!attribute resource_identifiers
    #   <important>
    #               <p>
    #                  <b>
    #                     <i>Deprecated - don't use this parameter. Use the
    #                               <code>Resources</code> response field
    #                   instead.</i>
    #                  </b>
    #               </p>
    #            </important>
    #   @deprecated
    #     This field is deprecated, use Resources instead.
    #   @return [Array<Types::ResourceIdentifier>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute query_errors
    #   <p>A list of <code>QueryError</code> objects. Each error contains an
    #               <code>ErrorCode</code> and <code>Message</code>. Possible values for 
    #               ErrorCode are <code>CLOUDFORMATION_STACK_INACTIVE</code>, <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>, 
    #               <code>CLOUDFORMATION_STACK_UNASSUMABLE_ROLE</code> and <code>RESOURCE_TYPE_NOT_SUPPORTED</code>. </p>
    #   @return [Array<Types::QueryError>]
    class ListGroupResourcesOutput < Struct.new(
      :resources,
      :resource_identifiers,
      :next_token,
      :query_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A filter name and value pair that is used to obtain more specific results from the list of grouping statuses. </p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive. </p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive. </p>
    #   @return [Array<String>]
    class ListGroupingStatusesFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ListGroupingStatusesFilterName
      Status = 'status'
      ResourceArn = 'resource-arn'
    end

    # @!attribute group
    #   <p>The application group identifier, expressed as an Amazon resource name (ARN) or the application group name. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resources and their statuses returned in the 
    #               response. </p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>The filter name and value pair that is used to return more 
    #               specific results from a list of resources. </p>
    #   @return [Array<Types::ListGroupingStatusesFilter>]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #               <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #               response indicates that more output is available. Set this parameter to the 
    #               value provided by a previous call's <code>NextToken</code> response to indicate 
    #               where the output should continue from. </p>
    #   @return [String]
    class ListGroupingStatusesInput < Struct.new(
      :group,
      :max_results,
      :filters,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The application group identifier, expressed as an Amazon resource name (ARN) or the application group name.</p>
    #   @return [String]
    # @!attribute grouping_statuses
    #   <p>Returns details about the grouping or ungrouping status of the 
    #               resources in the specified application group. </p>
    #   @return [Array<Types::GroupingStatusesItem>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. 
    #               Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. 
    #               You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. </p>
    #   @return [String]
    class ListGroupingStatusesOutput < Struct.new(
      :group,
      :grouping_statuses,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to
    #               a <code>ListGroups</code> operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resource-type</code> - Filter the results to include only those resource groups that have the specified
    #                       resource type in their <code>ResourceTypeFilter</code>. For example, <code>AWS::EC2::Instance</code> would
    #                       return any resource group with a <code>ResourceTypeFilter</code> that includes
    #                       <code>AWS::EC2::Instance</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>configuration-type</code> - Filter the results to include only those
    #                       groups that have the specified configuration types attached. The current
    #                       supported values are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>AWS::ResourceGroups::ApplicationGroup</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::AppRegistry::Application</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::AppRegistry::ApplicationResourceGroup</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::CloudFormation::Stack</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::CapacityReservationPool</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::EC2::HostManagement</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>AWS::NetworkFirewall::RuleGroup</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<Types::GroupFilter>]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #   @return [String]
    class ListGroupsInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_identifiers
    #   <p>A list of <a>GroupIdentifier</a> objects. Each identifier is an object that
    #               contains both the <code>Name</code> and the <code>GroupArn</code>.</p>
    #   @return [Array<Types::GroupIdentifier>]
    # @!attribute groups
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this field. Use the
    #                               <code>GroupIdentifiers</code> response field
    #                       instead.</b>
    #                  </i>
    #               </p>
    #            </important>
    #   @deprecated
    #     This field is deprecated, use GroupIdentifiers instead.
    #   @return [Array<Types::Group>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListGroupsOutput < Struct.new(
      :group_identifiers,
      :groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns tag-sync tasks filtered by the Amazon resource name (ARN) or name of a 
    #             specified application group. </p>
    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the application group. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the application group. </p>
    #   @return [String]
    class ListTagSyncTasksFilter < Struct.new(
      :group_arn,
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>The Amazon resource name (ARN) or name of the application group for which you want to return a 
    #               list of tag-sync tasks. </p>
    #   @return [Array<Types::ListTagSyncTasksFilter>]
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the response. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a 
    #               <code>NextToken</code> response in a previous request. A <code>NextToken</code> 
    #               response indicates that more output is available. Set this parameter to the 
    #               value provided by a previous call's <code>NextToken</code> response to indicate 
    #               where the output should continue from. </p>
    #   @return [String]
    class ListTagSyncTasksInput < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tag_sync_tasks
    #   <p>A list of tag-sync tasks and information about each task. </p>
    #   @return [Array<Types::TagSyncTaskItem>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is included in the current response. 
    #               Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. 
    #               You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    class ListTagSyncTasksOutput < Struct.new(
      :tag_sync_tasks,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request uses an HTTP method that isn't allowed for the specified resource.</p>
    # @!attribute message
    #   @return [String]
    class MethodNotAllowedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more of the specified resources don't exist.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that identifies a resource that is currently pending addition to the group
    #             as a member. Adding a resource to a resource group happens asynchronously as a
    #             background task and this one isn't completed yet.</p>
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) of the resource that's in a pending state.</p>
    #   @return [String]
    class PendingResource < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The name or Amazon resource name (ARN) of the resource group with the configuration that you want to
    #               update.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The new configuration to associate with the specified group. A configuration
    #               associates the resource group with an Amazon Web Services service and specifies how the service can
    #               interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>
    #            <p>For information about the syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                   Resource Groups</a>.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    #   @return [Array<Types::GroupConfigurationItem>]
    class PutGroupConfigurationInput < Struct.new(
      :group,
      :configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutGroupConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A two-part error structure that can occur in <code>ListGroupResources</code> or
    #                 <code>SearchResources</code>. </p>
    # @!attribute error_code
    #   <p>Specifies the error code that was raised.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that explains the <code>ErrorCode</code>. </p>
    #   @return [String]
    class QueryError < Struct.new(
      :error_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QueryErrorCode
      CLOUDFORMATION_STACK_INACTIVE = 'CLOUDFORMATION_STACK_INACTIVE'
      CLOUDFORMATION_STACK_NOT_EXISTING = 'CLOUDFORMATION_STACK_NOT_EXISTING'
      CLOUDFORMATION_STACK_UNASSUMABLE_ROLE = 'CLOUDFORMATION_STACK_UNASSUMABLE_ROLE'
      RESOURCE_TYPE_NOT_SUPPORTED = 'RESOURCE_TYPE_NOT_SUPPORTED'
    end

    module QueryType
      TAG_FILTERS_1_0 = 'TAG_FILTERS_1_0'
      CLOUDFORMATION_STACK_1_0 = 'CLOUDFORMATION_STACK_1_0'
    end

    # <p>A filter name and value pair that is used to obtain more specific results from a list
    #             of resources.</p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One or more filter values. Allowed filter values vary by resource filter name, and are
    #               case-sensitive.</p>
    #   @return [Array<String>]
    class ResourceFilter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceFilterName
      ResourceType = 'resource-type'
    end

    # <p>A structure that contains the ARN of a resource and its resource type.</p>
    # @!attribute resource_arn
    #   <p>The Amazon resource name (ARN) of a resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>
    #   @return [String]
    class ResourceIdentifier < Struct.new(
      :resource_arn,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The query you can use to define a resource group or a search for resources. A
    #                 <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                 <code>Query</code> string as JSON string objects. See the examples section for
    #             example JSON strings. For more information about creating a resource group with a
    #             resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html">Build queries and groups in
    #                 Resource Groups</a> in the <i>Resource Groups User Guide</i>
    #          </p>
    #          <p>When you combine all of the elements together into a single string, any double quotes
    #             that are embedded inside another double quote pair must be escaped by preceding the
    #             embedded double quote with a backslash character (\). For example, a complete
    #                 <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #             parameter example:</p>
    #          <p>
    #             <code>--resource-query
    #                 '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #          </p>
    #          <p>In the preceding example, all of the double quote characters in the value part of the
    #                 <code>Query</code> element must be escaped because the value itself is surrounded by
    #             double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                 strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #          <p>For the complete list of resource types that you can use in the array value for
    #                 <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                 you can use with Resource Groups and Tag Editor</a> in the
    #                 <i>Resource Groups User Guide</i>. For example:</p>
    #          <p>
    #             <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #          </p>
    # @!attribute type
    #   <p>The type of the query to perform. This can have one of two values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>
    #                        <code>CLOUDFORMATION_STACK_1_0:</code>
    #                     </i> Specifies that you
    #                       want the group to contain the members of an CloudFormation stack. The <code>Query</code>
    #                       contains a <code>StackIdentifier</code> element with an Amazon resource name (ARN) for a CloudFormation
    #                       stack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>
    #                        <code>TAG_FILTERS_1_0:</code>
    #                     </i> Specifies that you want the
    #                       group to include resource that have tags that match the query. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute query
    #   <p>The query that defines a group or a search. The contents depends on the value of the
    #                   <code>Type</code> element.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceTypeFilters</code> – Applies to all
    #                           <code>ResourceQuery</code> objects of either <code>Type</code>. This element
    #                       contains one of the following two items:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The value <code>AWS::AllSupported</code>. This causes the
    #                               ResourceQuery to match resources of any resource type that also match
    #                               the query.</p>
    #                     </li>
    #                     <li>
    #                        <p>A list (a JSON array) of resource type identifiers that limit the
    #                               query to only resources of the specified types. For the complete list of
    #                               resource types that you can use in the array value for
    #                                   <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources you can use with Resource Groups and Tag
    #                                   Editor</a> in the <i>Resource Groups User Guide</i>.</p>
    #                     </li>
    #                  </ul>
    #                  <p>Example: <code>"ResourceTypeFilters": ["AWS::AllSupported"]</code> or
    #                           <code>"ResourceTypeFilters": ["AWS::EC2::Instance",
    #                           "AWS::S3::Bucket"]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TagFilters</code> – applicable only if <code>Type</code> =
    #                           <code>TAG_FILTERS_1_0</code>. The <code>Query</code> contains a JSON string
    #                       that represents a collection of simple tag filters. The JSON string uses a
    #                       syntax similar to the <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html">GetResources</a>
    #                     </code> operation, but uses only the <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-ResourceTypeFilters"> ResourceTypeFilters</a>
    #                     </code> and <code>
    #                        <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-TagFiltersTagFilters">TagFilters</a>
    #                     </code> fields. If you specify more than one tag key,
    #                       only resources that match all tag keys, and at least one value of each specified
    #                       tag key, are returned in your query. If you specify more than one value for a
    #                       tag key, a resource matches the filter if it has a tag key value that matches
    #                           <i>any</i> of the specified values.</p>
    #                  <p>For example, consider the following sample query for resources that have two
    #                       tags, <code>Stage</code> and <code>Version</code>, with two values each:</p>
    #                  <p>
    #                     <code>[{"Stage":["Test","Deploy"]},{"Version":["1","2"]}]</code>
    #                  </p>
    #                  <p>The results of this resource query could include the following.</p>
    #                  <ul>
    #                     <li>
    #                        <p>An Amazon EC2 instance that has the following two tags:
    #                                   <code>{"Stage":"Deploy"}</code>, and
    #                               <code>{"Version":"2"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>An S3 bucket that has the following two tags:
    #                                   <code>{"Stage":"Test"}</code>, and
    #                               <code>{"Version":"1"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>The resource query results would <i>not</i> include the
    #                       following items in the results, however. </p>
    #                  <ul>
    #                     <li>
    #                        <p>An Amazon EC2 instance that has only the following tag:
    #                                   <code>{"Stage":"Deploy"}</code>.</p>
    #                        <p>The instance does not have <b>all</b> of the
    #                               tag keys specified in the filter, so it is excluded from the
    #                               results.</p>
    #                     </li>
    #                     <li>
    #                        <p>An RDS database that has the following two tags:
    #                                   <code>{"Stage":"Archived"}</code> and
    #                               <code>{"Version":"4"}</code>
    #                        </p>
    #                        <p>The database has all of the tag keys, but none of those keys has an
    #                               associated value that matches at least one of the specified values in
    #                               the filter.</p>
    #                     </li>
    #                  </ul>
    #                  <p>Example: <code>"TagFilters": [ { "Key": "Stage", "Values": [ "Gamma", "Beta" ]
    #                           }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StackIdentifier</code> – applicable only if <code>Type</code> =
    #                           <code>CLOUDFORMATION_STACK_1_0</code>. The value of this parameter is the
    #                       Amazon Resource Name (ARN) of the CloudFormation stack whose resources you want included
    #                       in the group.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ResourceQuery < Struct.new(
      :type,
      :query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure that identifies the current group membership status for a resource. Adding
    #             a resource to a resource group is performed asynchronously as a background task. A
    #                 <code>PENDING</code> status indicates, for this resource, that the process isn't
    #             completed yet.</p>
    # @!attribute name
    #   <p>The current status.</p>
    #   @return [String]
    class ResourceStatus < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceStatusValue
      Pending = 'PENDING'
    end

    # @!attribute resource_query
    #   <p>The search query, using the same formats that are supported for resource group
    #               definition. For more information, see <a>CreateGroup</a>.</p>
    #   @return [Types::ResourceQuery]
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the 
    #   response. If you do not include this parameter, it defaults to a value that is specific to the 
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> 
    #   response element is present and has a value (is not null). Include that value as the 
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part 
    #   of the results. Note that the service might return fewer results than the maximum even when there 
    #   are more results available. You should check <code>NextToken</code> after every operation to 
    #   ensure that you receive all of the results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response 
    #   indicates that more output is available. Set this parameter to the value provided by a previous 
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #   @return [String]
    class SearchResourcesInput < Struct.new(
      :resource_query,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_identifiers
    #   <p>The ARNs and resource types of resources that are members of the group that you
    #               specified.</p>
    #   @return [Array<Types::ResourceIdentifier>]
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is 
    #   included in the current response. Use this value in the <code>NextToken</code> request parameter 
    #   in a subsequent call to the operation to get the next part of the output. You should repeat this 
    #   until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #   @return [String]
    # @!attribute query_errors
    #   <p>A list of <code>QueryError</code> objects. Each error contains an 
    #                   <code>ErrorCode</code> and <code>Message</code>.</p>
    #            <p>Possible values for <code>ErrorCode</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUDFORMATION_STACK_INACTIVE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CLOUDFORMATION_STACK_UNASSUMABLE_ROLE </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::QueryError>]
    class SearchResourcesOutput < Struct.new(
      :resource_identifiers,
      :next_token,
      :query_errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The Amazon resource name (ARN) or name of the application group for which you want to create a tag-sync task. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The tag key. Resources tagged with this tag key-value pair will be added to 
    #               the application. If a resource with this tag is later untagged, the tag-sync task removes
    #               the resource from the application. </p>
    #            <p>When using the <code>TagKey</code> parameter, you must also specify the <code>TagValue</code> parameter. If you specify a tag key-value pair, 
    #               you can't use the <code>ResourceQuery</code> parameter. </p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value. Resources tagged with this tag key-value pair will be added to 
    #               the application. If a resource with this tag is later untagged, the tag-sync task removes
    #               the resource from the application. </p>
    #            <p>When using the <code>TagValue</code> parameter, you must also specify the <code>TagKey</code> parameter. If you specify a tag key-value pair, 
    #               you can't use the <code>ResourceQuery</code> parameter. </p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The query you can use to create the tag-sync task. With this method, all resources matching the query 
    #               are added to the specified application group. A
    #               <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                   <code>Query</code> string as JSON string objects. For more information on defining a resource query for a 
    #                   tag-sync task, see the tag-based query type in <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#getting_started-query_types">
    #                       Types of resource group queries</a> in <i>Resource Groups User Guide</i>. </p>
    #            <p>When using the <code>ResourceQuery</code> parameter, you cannot use the <code>TagKey</code> and <code>TagValue</code> parameters. </p>
    #            <p>When you combine all of the elements together into a single string, any double quotes
    #               that are embedded inside another double quote pair must be escaped by preceding the
    #               embedded double quote with a backslash character (\). For example, a complete
    #               <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #               parameter example:</p>
    #            <p>
    #               <code>--resource-query
    #               '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #            </p>
    #            <p>In the preceding example, all of the double quote characters in the value part of the
    #               <code>Query</code> element must be escaped because the value itself is surrounded by
    #               double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                   strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #            <p>For the complete list of resource types that you can use in the array value for
    #               <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                   you can use with Resource Groups and Tag Editor</a> in the
    #               <i>Resource Groups User Guide</i>. For example:</p>
    #            <p>
    #               <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #            </p>
    #   @return [Types::ResourceQuery]
    # @!attribute role_arn
    #   <p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>
    #   @return [String]
    class StartTagSyncTaskInput < Struct.new(
      :group,
      :tag_key,
      :tag_value,
      :resource_query,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the application group for which you want to add or remove resources. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the application group to onboard and sync resources.</p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon resource name (ARN) of the new tag-sync task. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The tag key of the tag-sync task. </p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value of the tag-sync task. </p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The query you can use to define a resource group or a search for resources. A
    #                   <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                   <code>Query</code> string as JSON string objects. See the examples section for
    #               example JSON strings. For more information about creating a resource group with a
    #               resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html">Build queries and groups in
    #                   Resource Groups</a> in the <i>Resource Groups User Guide</i>
    #            </p>
    #            <p>When you combine all of the elements together into a single string, any double quotes
    #               that are embedded inside another double quote pair must be escaped by preceding the
    #               embedded double quote with a backslash character (\). For example, a complete
    #                   <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #               parameter example:</p>
    #            <p>
    #               <code>--resource-query
    #                   '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #            </p>
    #            <p>In the preceding example, all of the double quote characters in the value part of the
    #                   <code>Query</code> element must be escaped because the value itself is surrounded by
    #               double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                   strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #            <p>For the complete list of resource types that you can use in the array value for
    #                   <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                   you can use with Resource Groups and Tag Editor</a> in the
    #                   <i>Resource Groups User Guide</i>. For example:</p>
    #            <p>
    #               <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #            </p>
    #   @return [Types::ResourceQuery]
    # @!attribute role_arn
    #   <p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>
    #   @return [String]
    class StartTagSyncTaskOutput < Struct.new(
      :group_arn,
      :group_name,
      :task_arn,
      :tag_key,
      :tag_value,
      :resource_query,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the specified resource group. A tag is a string-to-string map of
    #               key-value pairs.</p>
    #   @return [Hash<String, String>]
    class TagInput < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the tagged resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that have been added to the specified resource group.</p>
    #   @return [Hash<String, String>]
    class TagOutput < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    # @!attribute group_arn
    #   <p>The Amazon resource name (ARN) of the application group. </p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the application group. </p>
    #   @return [String]
    # @!attribute task_arn
    #   <p>The Amazon resource name (ARN) of the tag-sync task. </p>
    #   @return [String]
    # @!attribute tag_key
    #   <p>The tag key. </p>
    #   @return [String]
    # @!attribute tag_value
    #   <p>The tag value. </p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The query you can use to define a resource group or a search for resources. A
    #                   <code>ResourceQuery</code> specifies both a query <code>Type</code> and a
    #                   <code>Query</code> string as JSON string objects. See the examples section for
    #               example JSON strings. For more information about creating a resource group with a
    #               resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html">Build queries and groups in
    #                   Resource Groups</a> in the <i>Resource Groups User Guide</i>
    #            </p>
    #            <p>When you combine all of the elements together into a single string, any double quotes
    #               that are embedded inside another double quote pair must be escaped by preceding the
    #               embedded double quote with a backslash character (\). For example, a complete
    #                   <code>ResourceQuery</code> parameter must be formatted like the following CLI
    #               parameter example:</p>
    #            <p>
    #               <code>--resource-query
    #                   '{"Type":"TAG_FILTERS_1_0","Query":"{\"ResourceTypeFilters\":[\"AWS::AllSupported\"],\"TagFilters\":[{\"Key\":\"Stage\",\"Values\":[\"Test\"]}]}"}'</code>
    #            </p>
    #            <p>In the preceding example, all of the double quote characters in the value part of the
    #                   <code>Query</code> element must be escaped because the value itself is surrounded by
    #               double quotes. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html">Quoting
    #                   strings</a> in the <i>Command Line Interface User Guide</i>.</p>
    #            <p>For the complete list of resource types that you can use in the array value for
    #                   <code>ResourceTypeFilters</code>, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html">Resources
    #                   you can use with Resource Groups and Tag Editor</a> in the
    #                   <i>Resource Groups User Guide</i>. For example:</p>
    #            <p>
    #               <code>"ResourceTypeFilters":["AWS::S3::Bucket", "AWS::EC2::Instance"]</code>
    #            </p>
    #   @return [Types::ResourceQuery]
    # @!attribute role_arn
    #   <p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the tag-sync task. </p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The tag-sync task is actively managing resources in 
    #                       the application by adding or removing the <code>awsApplication</code> tag from resources 
    #                       when they are tagged or untagged with the specified tag key-value pair. 
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The tag-sync task is not actively managing resources 
    #                       in the application. Review the <code>ErrorMessage</code> for more information about 
    #                       resolving the error. 
    #                   </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>The specific error message in cases where the tag-sync task status
    #               is <code>Error</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the tag-sync task was created. </p>
    #   @return [Time]
    class TagSyncTaskItem < Struct.new(
      :group_arn,
      :group_name,
      :task_arn,
      :tag_key,
      :tag_value,
      :resource_query,
      :role_arn,
      :status,
      :error_message,
      :created_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TagSyncTaskStatus
      ACTIVE = 'ACTIVE'
      ERROR = 'ERROR'
    end

    # <p>You've exceeded throttling limits by making too many requests in a period of
    #             time.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it doesn't have valid credentials for the target
    #             resource.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group from which to remove the resources.</p>
    #   @return [String]
    # @!attribute resource_arns
    #   <p>The Amazon resource names (ARNs) of the resources to be removed from the group.</p>
    #   @return [Array<String>]
    class UngroupResourcesInput < Struct.new(
      :group,
      :resource_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute succeeded
    #   <p>A list of resources that were successfully removed from the group by this
    #               operation.</p>
    #   @return [Array<String>]
    # @!attribute failed
    #   <p>A list of any resources that failed to be removed from the group by this
    #               operation.</p>
    #   @return [Array<Types::FailedResource>]
    # @!attribute pending
    #   <p>A list of any resources that are still in the process of being removed from the group
    #               by this operation. These pending removals continue asynchronously. You can check the
    #               status of pending removals by using the <code>
    #                  <a>ListGroupResources</a>
    #               </code> operation. After the resource is successfully removed, it no longer
    #               appears in the response.</p>
    #   @return [Array<Types::PendingResource>]
    class UngroupResourcesOutput < Struct.new(
      :succeeded,
      :failed,
      :pending,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group from which to remove tags. The command removed both the
    #               specified keys and any values associated with those keys.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>The keys of the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagInput < Struct.new(
      :arn,
      :keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon resource name (ARN) of the resource group from which tags have been removed.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>The keys of the tags that were removed.</p>
    #   @return [Array<String>]
    class UntagOutput < Struct.new(
      :arn,
      :keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_lifecycle_events_desired_status
    #   <p>Specifies whether you want to turn <a href="https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html">group lifecycle events</a> on or off.</p>
    #            <p>You can't turn on group lifecycle events if your resource groups quota is greater than 2,000. </p>
    #   @return [String]
    class UpdateAccountSettingsInput < Struct.new(
      :group_lifecycle_events_desired_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>A structure that displays the status of the optional features in the account.</p>
    #   @return [Types::AccountSettings]
    class UpdateAccountSettingsOutput < Struct.new(
      :account_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the ARN of the resource group to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description that you want to update the resource group with. Descriptions can
    #               contain letters, numbers, hyphens, underscores, periods, and spaces.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The critical rank of the application group on a scale of 1 to 10, with a 
    #               rank of 1 being the most critical, and a rank of 10 being least critical.</p>
    #   @return [Integer]
    # @!attribute owner
    #   <p>A name, email address or other identifier for the person or group 
    #               who is considered as the owner of this application group within your organization. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the application group, which you can change at any time. </p>
    #   @return [String]
    class UpdateGroupInput < Struct.new(
      :group_name,
      :group,
      :description,
      :criticality,
      :owner,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group
    #   <p>The update description of the resource group.</p>
    #   @return [Types::Group]
    class UpdateGroupOutput < Struct.new(
      :group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #   @deprecated
    #     This field is deprecated, use Group instead.
    #   @return [String]
    # @!attribute group
    #   <p>The name or the Amazon resource name (ARN) of the resource group to query.</p>
    #   @return [String]
    # @!attribute resource_query
    #   <p>The resource query to determine which Amazon Web Services resources are members of this resource
    #               group.</p>
    #            <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #            </note>
    #   @return [Types::ResourceQuery]
    class UpdateGroupQueryInput < Struct.new(
      :group_name,
      :group,
      :resource_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute group_query
    #   <p>The updated resource query associated with the resource group after the update.</p>
    #   @return [Types::GroupQuery]
    class UpdateGroupQueryOutput < Struct.new(
      :group_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
