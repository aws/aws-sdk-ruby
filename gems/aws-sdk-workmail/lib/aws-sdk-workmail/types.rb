# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMail
  module Types

    # @note When making an API call, you may pass AssociateDelegateToResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization under which the resource exists.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource for which members are associated.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The member (user or group) to associate to the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateDelegateToResourceRequest AWS API Documentation
    #
    class AssociateDelegateToResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :entity_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateDelegateToResourceResponse AWS API Documentation
    #
    class AssociateDelegateToResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateMemberToGroupRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         group_id: "WorkMailIdentifier", # required
    #         member_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization under which the group exists.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The group for which the member is associated.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The member to associate to the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroupRequest AWS API Documentation
    #
    class AssociateMemberToGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :member_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroupResponse AWS API Documentation
    #
    class AssociateMemberToGroupResponse < Aws::EmptyStructure; end

    # At least one delegate must be associated to the resource to disable
    # automatic replies from the resource.
    #
    # @note When making an API call, you may pass BookingOptions
    #   data as a hash:
    #
    #       {
    #         auto_accept_requests: false,
    #         auto_decline_recurring_requests: false,
    #         auto_decline_conflicting_requests: false,
    #       }
    #
    # @!attribute [rw] auto_accept_requests
    #   The resource's ability to automatically reply to requests. If
    #   disabled, delegates must be associated to the resource.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_decline_recurring_requests
    #   The resource's ability to automatically decline any recurring
    #   requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_decline_conflicting_requests
    #   The resource's ability to automatically decline any conflicting
    #   requests.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/BookingOptions AWS API Documentation
    #
    class BookingOptions < Struct.new(
      :auto_accept_requests,
      :auto_decline_recurring_requests,
      :auto_decline_conflicting_requests)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAliasRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         alias: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization under which the member exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The alias is added to this Amazon WorkMail entity.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias to add to the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :organization_id,
      :entity_id,
      :alias)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAliasResponse AWS API Documentation
    #
    class CreateAliasResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         name: "GroupName", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization under which the group is to be created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :organization_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   The ID of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         name: "ResourceName", # required
    #         type: "ROOM", # required, accepts ROOM, EQUIPMENT
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization for which the
    #   resource is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the created resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResourceRequest AWS API Documentation
    #
    class CreateResourceRequest < Struct.new(
      :organization_id,
      :name,
      :type)
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The identifier of the created resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResourceResponse AWS API Documentation
    #
    class CreateResourceResponse < Struct.new(
      :resource_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         name: "UserName", # required
    #         display_name: "String", # required
    #         password: "Password", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization for which the user is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the user to be created.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for the user to be created.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user to be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :organization_id,
      :name,
      :display_name,
      :password)
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The information regarding the newly created user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_id)
      include Aws::Structure
    end

    # The name of the attribute, which is one of the values defined in the
    # UserAttribute enumeration.
    #
    # @!attribute [rw] id
    #   The identifier for the user or group is associated as the
    #   resource's delegate.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the delegate: user or group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Delegate AWS API Documentation
    #
    class Delegate < Struct.new(
      :id,
      :type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAliasRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         alias: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the user exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the Amazon WorkMail entity to have the aliases
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The aliases to be removed from the user's set of aliases. Duplicate
    #   entries in the list are collapsed into single entries (the list is
    #   transformed into a set).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAliasRequest AWS API Documentation
    #
    class DeleteAliasRequest < Struct.new(
      :organization_id,
      :entity_id,
      :alias)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAliasResponse AWS API Documentation
    #
    class DeleteAliasResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         group_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization that contains the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the group to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :organization_id,
      :group_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteMailboxPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         grantee_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the entity (user or group) for which to delete
    #   mailbox permissions.
    #   @return [String]
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the entity (user or group) for which to delete
    #   granted permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissionsRequest AWS API Documentation
    #
    class DeleteMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissionsResponse AWS API Documentation
    #
    class DeleteMailboxPermissionsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization for which the
    #   resource is deleted.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResourceRequest AWS API Documentation
    #
    class DeleteResourceRequest < Struct.new(
      :organization_id,
      :resource_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResourceResponse AWS API Documentation
    #
    class DeleteResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization that contains the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :organization_id,
      :user_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterFromWorkMailRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the Amazon WorkMail
    #   entity exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the entity to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMailRequest AWS API Documentation
    #
    class DeregisterFromWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMailResponse AWS API Documentation
    #
    class DeregisterFromWorkMailResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeGroupRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         group_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the group exists.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier for the group to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeGroupRequest AWS API Documentation
    #
    class DescribeGroupRequest < Struct.new(
      :organization_id,
      :group_id)
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   The identifier of the described group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the described group.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the described group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the user: enabled (registered to Amazon WorkMail) or
    #   disabled (deregistered or never registered to Amazon WorkMail).
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date and time when a user was registered to Amazon WorkMail, in
    #   UNIX epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date and time when a user was deregistered from Amazon WorkMail,
    #   in UNIX epoch time format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeGroupResponse AWS API Documentation
    #
    class DescribeGroupResponse < Struct.new(
      :group_id,
      :name,
      :email,
      :state,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeOrganizationRequest AWS API Documentation
    #
    class DescribeOrganizationRequest < Struct.new(
      :organization_id)
      include Aws::Structure
    end

    # @!attribute [rw] organization_id
    #   The identifier of an organization.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias for an organization.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of an organization.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The identifier for the directory associated with an Amazon WorkMail
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] directory_type
    #   The type of directory associated with the Amazon WorkMail
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] default_mail_domain
    #   The default mail domain associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] completed_date
    #   The date at which the organization became usable in the Amazon
    #   WorkMail context, in UNIX epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   The (optional) error message indicating if unexpected behavior was
    #   encountered with regards to the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeOrganizationResponse AWS API Documentation
    #
    class DescribeOrganizationResponse < Struct.new(
      :organization_id,
      :alias,
      :state,
      :directory_id,
      :directory_type,
      :default_mail_domain,
      :completed_date,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization for which the
    #   resource is described.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeResourceRequest AWS API Documentation
    #
    class DescribeResourceRequest < Struct.new(
      :organization_id,
      :resource_id)
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The identifier of the described resource.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the described resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the described resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the described resource.
    #   @return [String]
    #
    # @!attribute [rw] booking_options
    #   The booking options for the described resource.
    #   @return [Types::BookingOptions]
    #
    # @!attribute [rw] state
    #   The state of the resource: enabled (registered to Amazon WorkMail)
    #   or disabled (deregistered or never registered to Amazon WorkMail).
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date and time when a resource was registered to Amazon WorkMail,
    #   in UNIX epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date and time when a resource was registered from Amazon
    #   WorkMail, in UNIX epoch time format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeResourceResponse AWS API Documentation
    #
    class DescribeResourceResponse < Struct.new(
      :resource_id,
      :email,
      :name,
      :type,
      :booking_options,
      :state,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the user exists.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :organization_id,
      :user_id)
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The identifier for the described user.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the user.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the user.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of a user: enabled (registered to Amazon WorkMail) or
    #   disabled (deregistered or never registered to Amazon WorkMail).
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   In certain cases other entities are modeled as users. If
    #   interoperability is enabled, resources are imported into Amazon
    #   WorkMail as users. Because different Amazon WorkMail organizations
    #   rely on different directory types, administrators can distinguish
    #   between a user that is not registered to Amazon WorkMail (is
    #   disabled and has a user role) and the administrative users of the
    #   directory. The values are USER, RESOURCE, and SYSTEM\_USER.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date and time at which the user was enabled for Amazon WorkMail
    #   usage, in UNIX epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date and time at which the user was disabled for Amazon WorkMail
    #   usage, in UNIX epoch time format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user_id,
      :name,
      :email,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateDelegateFromResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the resource exists.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource from which delegates' set members
    #   are removed.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the member (user, group) to be removed from the
    #   resource's delegates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateDelegateFromResourceRequest AWS API Documentation
    #
    class DisassociateDelegateFromResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :entity_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateDelegateFromResourceResponse AWS API Documentation
    #
    class DisassociateDelegateFromResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateMemberFromGroupRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         group_id: "WorkMailIdentifier", # required
    #         member_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the group exists.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier for the group from which members are removed.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The identifier for the member to be removed to the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroupRequest AWS API Documentation
    #
    class DisassociateMemberFromGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :member_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroupResponse AWS API Documentation
    #
    class DisassociateMemberFromGroupResponse < Aws::EmptyStructure; end

    # The representation of an Amazon WorkMail group.
    #
    # @!attribute [rw] id
    #   The identifier of the group.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the group, which can be ENABLED, DISABLED, or DELETED.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date indicating when the group was enabled for Amazon WorkMail
    #   use.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date indicating when the group was disabled from Amazon WorkMail
    #   use.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Group AWS API Documentation
    #
    class Group < Struct.new(
      :id,
      :email,
      :name,
      :state,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAliasesRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the entity exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the entity for which to list the aliases.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAliasesRequest AWS API Documentation
    #
    class ListAliasesRequest < Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] aliases
    #   The entity's paginated aliases.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   "null" when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAliasesResponse AWS API Documentation
    #
    class ListAliasesResponse < Struct.new(
      :aliases,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupMembersRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         group_id: "WorkMailIdentifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the group exists.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier for the group to which the members are associated.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupMembersRequest AWS API Documentation
    #
    class ListGroupMembersRequest < Struct.new(
      :organization_id,
      :group_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The members associated to the group.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupMembersResponse AWS API Documentation
    #
    class ListGroupMembersResponse < Struct.new(
      :members,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the groups exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   The overview of groups for an organization.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   "null" when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMailboxPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the entity (user or group) for which to list
    #   mailbox permissions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxPermissionsRequest AWS API Documentation
    #
    class ListMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   One page of the entity's mailbox permissions.
    #   @return [Array<Types::Permission>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   "null" when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxPermissionsResponse AWS API Documentation
    #
    class ListMailboxPermissionsResponse < Struct.new(
      :permissions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOrganizationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListOrganizationsRequest AWS API Documentation
    #
    class ListOrganizationsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] organization_summaries
    #   The overview of owned organizations presented as a list of
    #   organization summaries.
    #   @return [Array<Types::OrganizationSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The value is
    #   "null" when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListOrganizationsResponse AWS API Documentation
    #
    class ListOrganizationsResponse < Struct.new(
      :organization_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourceDelegatesRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "WorkMailIdentifier", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization that contains the resource for
    #   which delegates are listed.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier for the resource whose delegates are listed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate through the delegates associated with a
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of maximum results in a page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourceDelegatesRequest AWS API Documentation
    #
    class ListResourceDelegatesRequest < Struct.new(
      :organization_id,
      :resource_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] delegates
    #   One page of the resource's delegates.
    #   @return [Array<Types::Delegate>]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate through the delegates associated with a
    #   resource. While results are still available, it has an associated
    #   value. When the last page is reached, the token is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourceDelegatesResponse AWS API Documentation
    #
    class ListResourceDelegatesResponse < Struct.new(
      :delegates,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListResourcesRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the resources exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] resources
    #   One page of the organization's resource representation.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] next_token
    #   The token used to paginate through all the organization's
    #   resources. While results are still available, it has an associated
    #   value. When the last page is reached, the token is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListResourcesResponse AWS API Documentation
    #
    class ListResourcesResponse < Struct.new(
      :resources,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the users exist.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   TBD
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   The overview of users for an organization.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :next_token)
      include Aws::Structure
    end

    # The representation of a group member (user or group).
    #
    # @!attribute [rw] id
    #   The identifier of the member.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the member.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   A member can be a user or group.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the member, which can be ENABLED, DISABLED, or DELETED.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date indicating when the member was enabled for Amazon WorkMail
    #   use.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date indicating when the member was disabled from Amazon
    #   WorkMail use.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Member AWS API Documentation
    #
    class Member < Struct.new(
      :id,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # The brief overview associated with an organization.
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message associated with the organization. It is only
    #   present if unexpected behavior has occurred with regards to the
    #   organization. It provides insight or solutions regarding unexpected
    #   behavior.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state associated with the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/OrganizationSummary AWS API Documentation
    #
    class OrganizationSummary < Struct.new(
      :organization_id,
      :alias,
      :error_message,
      :state)
      include Aws::Structure
    end

    # Permission granted to an entity (user, group) to access a certain
    # aspect of another entity's mailbox.
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the entity (user or group) to which the
    #   permissions are granted.
    #   @return [String]
    #
    # @!attribute [rw] grantee_type
    #   The type of entity (user, group) of the entity referred to in
    #   GranteeId.
    #   @return [String]
    #
    # @!attribute [rw] permission_values
    #   The permissions granted to the grantee. SEND\_AS allows the grantee
    #   to send email as the owner of the mailbox (the grantee is not
    #   mentioned on these emails). SEND\_ON\_BEHALF allows the grantee to
    #   send email on behalf of the owner of the mailbox (the grantee is not
    #   mentioned as the physical sender of these emails). FULL\_ACCESS
    #   allows the grantee full access to the mailbox, irrespective of other
    #   folder-level permissions set on the mailbox.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Permission AWS API Documentation
    #
    class Permission < Struct.new(
      :grantee_id,
      :grantee_type,
      :permission_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutMailboxPermissionsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         grantee_id: "WorkMailIdentifier", # required
    #         permission_values: ["FULL_ACCESS"], # required, accepts FULL_ACCESS, SEND_AS, SEND_ON_BEHALF
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization under which the entity (user or
    #   group) exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the entity (user or group) for which to update
    #   mailbox permissions.
    #   @return [String]
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the entity (user or group) to which to grant the
    #   permissions.
    #   @return [String]
    #
    # @!attribute [rw] permission_values
    #   The permissions granted to the grantee. SEND\_AS allows the grantee
    #   to send email as the owner of the mailbox (the grantee is not
    #   mentioned on these emails). SEND\_ON\_BEHALF allows the grantee to
    #   send email on behalf of the owner of the mailbox (the grantee is not
    #   mentioned as the physical sender of these emails). FULL\_ACCESS
    #   allows the grantee full access to the mailbox, irrespective of other
    #   folder-level permissions set on the mailbox.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissionsRequest AWS API Documentation
    #
    class PutMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id,
      :permission_values)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissionsResponse AWS API Documentation
    #
    class PutMailboxPermissionsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RegisterToWorkMailRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         email: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization under which the Amazon WorkMail
    #   entity exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the entity to be updated.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email for the entity to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMailRequest AWS API Documentation
    #
    class RegisterToWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id,
      :email)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMailResponse AWS API Documentation
    #
    class RegisterToWorkMailResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ResetPasswordRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #         password: "Password", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization that contains the user for which
    #   the password is reset.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user for whom the password is reset.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPasswordRequest AWS API Documentation
    #
    class ResetPasswordRequest < Struct.new(
      :organization_id,
      :user_id,
      :password)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPasswordResponse AWS API Documentation
    #
    class ResetPasswordResponse < Aws::EmptyStructure; end

    # The overview for a resource containing relevant data regarding it.
    #
    # @!attribute [rw] id
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource: equipment or room.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the resource, which can be ENABLED, DISABLED, or
    #   DELETED.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date indicating when the resource was enabled for Amazon
    #   WorkMail use.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date indicating when the resource was disabled from Amazon
    #   WorkMail use.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :id,
      :email,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePrimaryEmailAddressRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         email: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization that contains the entity to update.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The entity to update (user, group, or resource).
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The value of the email to be updated as primary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdatePrimaryEmailAddressRequest AWS API Documentation
    #
    class UpdatePrimaryEmailAddressRequest < Struct.new(
      :organization_id,
      :entity_id,
      :email)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdatePrimaryEmailAddressResponse AWS API Documentation
    #
    class UpdatePrimaryEmailAddressResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #         name: "ResourceName",
    #         booking_options: {
    #           auto_accept_requests: false,
    #           auto_decline_recurring_requests: false,
    #           auto_decline_conflicting_requests: false,
    #         },
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization for which the
    #   resource is updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] booking_options
    #   The resource's booking options to be updated.
    #   @return [Types::BookingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateResourceRequest AWS API Documentation
    #
    class UpdateResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :name,
      :booking_options)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateResourceResponse AWS API Documentation
    #
    class UpdateResourceResponse < Aws::EmptyStructure; end

    # The representation of an Amazon WorkMail user.
    #
    # @!attribute [rw] id
    #   The identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of the user.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the user.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the user, which can be ENABLED, DISABLED, or DELETED.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The role of the user.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date indicating when the user was enabled for Amazon WorkMail
    #   use.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date indicating when the user was disabled from Amazon WorkMail
    #   use.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/User AWS API Documentation
    #
    class User < Struct.new(
      :id,
      :email,
      :name,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date)
      include Aws::Structure
    end

  end
end
