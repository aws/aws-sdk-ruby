# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMail
  module Types

    # A rule that controls access to an Amazon WorkMail organization.
    #
    # @!attribute [rw] name
    #   The rule name.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   The rule effect.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] ip_ranges
    #   IPv4 CIDR ranges to include in the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_ip_ranges
    #   IPv4 CIDR ranges to exclude from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   Access protocol actions to include in the rule. Valid values include
    #   `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`,
    #   `WindowsOutlook`, and `WebMail`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_actions
    #   Access protocol actions to exclude from the rule. Valid values
    #   include `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`,
    #   `WindowsOutlook`, and `WebMail`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids
    #   User IDs to include in the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_user_ids
    #   User IDs to exclude from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] date_created
    #   The date that the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] date_modified
    #   The date that the rule was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AccessControlRule AWS API Documentation
    #
    class AccessControlRule < Struct.new(
      :name,
      :effect,
      :description,
      :ip_ranges,
      :not_ip_ranges,
      :actions,
      :not_actions,
      :user_ids,
      :not_user_ids,
      :date_created,
      :date_modified)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The resource for which members (users or groups) are associated.
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
      SENSITIVE = []
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
    #   The group to which the member (user or group) is associated.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The member (user or group) to associate to the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/AssociateMemberToGroupRequest AWS API Documentation
    #
    class AssociateMemberToGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :member_id)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelMailboxExportJobRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "IdempotencyClientToken", # required
    #         job_id: "MailboxExportJobId", # required
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CancelMailboxExportJobRequest AWS API Documentation
    #
    class CancelMailboxExportJobRequest < Struct.new(
      :client_token,
      :job_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CancelMailboxExportJobResponse AWS API Documentation
    #
    class CancelMailboxExportJobResponse < Aws::EmptyStructure; end

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
    #   The organization under which the member (user or group) exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The member (user or group) to which this alias is added.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias to add to the member set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateAliasRequest AWS API Documentation
    #
    class CreateAliasRequest < Struct.new(
      :organization_id,
      :entity_id,
      :alias)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_id
    #   The identifier of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         directory_id: "DirectoryId",
    #         alias: "OrganizationName", # required
    #         client_token: "IdempotencyClientToken",
    #         domains: [
    #           {
    #             domain_name: "DomainName",
    #             hosted_zone_id: "HostedZoneId",
    #           },
    #         ],
    #         kms_key_arn: "KmsKeyArn",
    #         enable_interoperability: false,
    #       }
    #
    # @!attribute [rw] directory_id
    #   The AWS Directory Service directory ID.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The organization alias.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   The email domains to associate with the organization.
    #   @return [Array<Types::Domain>]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed master key from
    #   AWS KMS.
    #   @return [String]
    #
    # @!attribute [rw] enable_interoperability
    #   When `true`, allows organization interoperability between Amazon
    #   WorkMail and Microsoft Exchange. Can only be set to `true` if an AD
    #   Connector directory ID is included in the request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateOrganizationRequest AWS API Documentation
    #
    class CreateOrganizationRequest < Struct.new(
      :directory_id,
      :alias,
      :client_token,
      :domains,
      :kms_key_arn,
      :enable_interoperability)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateOrganizationResponse AWS API Documentation
    #
    class CreateOrganizationResponse < Struct.new(
      :organization_id)
      SENSITIVE = []
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
    #   The name of the new resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the new resource. The available types are `equipment`
    #   and `room`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResourceRequest AWS API Documentation
    #
    class CreateResourceRequest < Struct.new(
      :organization_id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The identifier of the new resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateResourceResponse AWS API Documentation
    #
    class CreateResourceResponse < Struct.new(
      :resource_id)
      SENSITIVE = []
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
    #   The name for the new user. Simple AD or AD Connector user names have
    #   a maximum length of 20. All others have a maximum length of 64.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for the new user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the new user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :organization_id,
      :name,
      :display_name,
      :password)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The identifier for the new user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of the attribute, which is one of the values defined in the
    # UserAttribute enumeration.
    #
    # @!attribute [rw] id
    #   The identifier for the user or group associated as the resource's
    #   delegate.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessControlRuleRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         name: "AccessControlRuleName", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the access control rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAccessControlRuleRequest AWS API Documentation
    #
    class DeleteAccessControlRuleRequest < Struct.new(
      :organization_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteAccessControlRuleResponse AWS API Documentation
    #
    class DeleteAccessControlRuleResponse < Aws::EmptyStructure; end

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
    #   The identifier for the member (user or group) from which to have the
    #   aliases removed.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The identifier of the organization under which the member (user or
    #   group) exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the member (user or group) that owns the mailbox.
    #   @return [String]
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the member (user or group) for which to delete
    #   granted permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissionsRequest AWS API Documentation
    #
    class DeleteMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteMailboxPermissionsResponse AWS API Documentation
    #
    class DeleteMailboxPermissionsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteOrganizationRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "IdempotencyClientToken",
    #         organization_id: "OrganizationId", # required
    #         delete_directory: false, # required
    #       }
    #
    # @!attribute [rw] client_token
    #   The idempotency token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @!attribute [rw] delete_directory
    #   If true, deletes the AWS Directory Service directory associated with
    #   the organization.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteOrganizationRequest AWS API Documentation
    #
    class DeleteOrganizationRequest < Struct.new(
      :client_token,
      :organization_id,
      :delete_directory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteOrganizationResponse AWS API Documentation
    #
    class DeleteOrganizationResponse < Struct.new(
      :organization_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourceRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization from which the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteResourceResponse AWS API Documentation
    #
    class DeleteResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRetentionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         id: "ShortString", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The retention policy ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteRetentionPolicyRequest AWS API Documentation
    #
    class DeleteRetentionPolicyRequest < Struct.new(
      :organization_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeleteRetentionPolicyResponse AWS API Documentation
    #
    class DeleteRetentionPolicyResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization that contains the user to be deleted.
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
      SENSITIVE = []
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
    #   The identifier for the member (user or group) to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DeregisterFromWorkMailRequest AWS API Documentation
    #
    class DeregisterFromWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   disabled (deregistered or never registered to WorkMail).
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date and time when a user was registered to WorkMail, in UNIX
    #   epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date and time when a user was deregistered from WorkMail, in
    #   UNIX epoch time format.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeMailboxExportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "MailboxExportJobId", # required
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The mailbox export job ID.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeMailboxExportJobRequest AWS API Documentation
    #
    class DescribeMailboxExportJobRequest < Struct.new(
      :job_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_id
    #   The identifier of the user or resource associated with the mailbox.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The mailbox export job description.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   grants write permission to the Amazon Simple Storage Service (Amazon
    #   S3) bucket.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the symmetric AWS Key Management
    #   Service (AWS KMS) key that encrypts the exported mailbox content.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The S3 bucket prefix.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path to the S3 bucket and file that the mailbox export job is
    #   exporting to.
    #   @return [String]
    #
    # @!attribute [rw] estimated_progress
    #   The estimated progress of the mailbox export job, in percentage
    #   points.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the mailbox export job.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   Error information for failed mailbox export jobs.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The mailbox export job start timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The mailbox export job end timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DescribeMailboxExportJobResponse AWS API Documentation
    #
    class DescribeMailboxExportJobResponse < Struct.new(
      :entity_id,
      :description,
      :role_arn,
      :kms_key_arn,
      :s3_bucket_name,
      :s3_prefix,
      :s3_path,
      :estimated_progress,
      :state,
      :error_info,
      :start_time,
      :end_time)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The type of directory associated with the WorkMail organization.
    #   @return [String]
    #
    # @!attribute [rw] default_mail_domain
    #   The default mail domain associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] completed_date
    #   The date at which the organization became usable in the WorkMail
    #   context, in UNIX epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   (Optional) The error message indicating if unexpected behavior was
    #   encountered with regards to the organization.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the organization.
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
      :error_message,
      :arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The state of the resource: enabled (registered to Amazon WorkMail),
    #   disabled (deregistered or never registered to WorkMail), or deleted.
    #   @return [String]
    #
    # @!attribute [rw] enabled_date
    #   The date and time when a resource was enabled for WorkMail, in UNIX
    #   epoch time format.
    #   @return [Time]
    #
    # @!attribute [rw] disabled_date
    #   The date and time when a resource was disabled from WorkMail, in
    #   UNIX epoch time format.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   disabled (deregistered or never registered to WorkMail).
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   In certain cases, other entities are modeled as users. If
    #   interoperability is enabled, resources are imported into Amazon
    #   WorkMail as users. Because different WorkMail organizations rely on
    #   different directory types, administrators can distinguish between an
    #   unregistered user (account is disabled and has a user role) and the
    #   directory administrators. The values are USER, RESOURCE, and
    #   SYSTEM\_USER.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory is already in use by another WorkMail organization in
    # the same account and Region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DirectoryInUseException AWS API Documentation
    #
    class DirectoryInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory service doesn't recognize the credentials supplied by
    # WorkMail.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DirectoryServiceAuthenticationFailedException AWS API Documentation
    #
    class DirectoryServiceAuthenticationFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The directory is unavailable. It might be located in another Region or
    # deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DirectoryUnavailableException AWS API Documentation
    #
    class DirectoryUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/DisassociateMemberFromGroupResponse AWS API Documentation
    #
    class DisassociateMemberFromGroupResponse < Aws::EmptyStructure; end

    # The domain to associate with an Amazon WorkMail organization.
    #
    # When you configure a domain hosted in Amazon Route 53 (Route 53), all
    # recommended DNS records are added to the organization when you create
    # it. For more information, see [Adding a domain][1] in the *Amazon
    # WorkMail Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html
    #
    # @note When making an API call, you may pass Domain
    #   data as a hash:
    #
    #       {
    #         domain_name: "DomainName",
    #         hosted_zone_id: "HostedZoneId",
    #       }
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The hosted zone ID for a domain hosted in Route 53. Required when
    #   configuring a domain hosted in Route 53.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Domain AWS API Documentation
    #
    class Domain < Struct.new(
      :domain_name,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The email address that you're trying to assign is already created for
    # a different user, group, or resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/EmailAddressInUseException AWS API Documentation
    #
    class EmailAddressInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user, group, or resource that you're trying to register is
    # already registered.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/EntityAlreadyRegisteredException AWS API Documentation
    #
    class EntityAlreadyRegisteredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier supplied for the user, group, or resource does not
    # exist in your organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/EntityNotFoundException AWS API Documentation
    #
    class EntityNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are performing an operation on a user, group, or resource that
    # isn't in the expected state, such as trying to delete an active user.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/EntityStateException AWS API Documentation
    #
    class EntityStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration applied to an organization's folders by its
    # retention policy.
    #
    # @note When making an API call, you may pass FolderConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "INBOX", # required, accepts INBOX, DELETED_ITEMS, SENT_ITEMS, DRAFTS, JUNK_EMAIL
    #         action: "NONE", # required, accepts NONE, DELETE, PERMANENTLY_DELETE
    #         period: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The folder name.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to take on the folder contents at the end of the folder
    #   configuration period.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   The period of time at which the folder configuration action is
    #   applied.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/FolderConfiguration AWS API Documentation
    #
    class FolderConfiguration < Struct.new(
      :name,
      :action,
      :period)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccessControlEffectRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         ip_address: "IpAddress", # required
    #         action: "AccessControlRuleAction", # required
    #         user_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IPv4 address.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The access protocol action. Valid values include `ActiveSync`,
    #   `AutoDiscover`, `EWS`, `IMAP`, `SMTP`, `WindowsOutlook`, and
    #   `WebMail`.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetAccessControlEffectRequest AWS API Documentation
    #
    class GetAccessControlEffectRequest < Struct.new(
      :organization_id,
      :ip_address,
      :action,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] effect
    #   The rule effect.
    #   @return [String]
    #
    # @!attribute [rw] matched_rules
    #   The rules that match the given parameters, resulting in an effect.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetAccessControlEffectResponse AWS API Documentation
    #
    class GetAccessControlEffectResponse < Struct.new(
      :effect,
      :matched_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDefaultRetentionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetDefaultRetentionPolicyRequest AWS API Documentation
    #
    class GetDefaultRetentionPolicyRequest < Struct.new(
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The retention policy ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The retention policy name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention policy description.
    #   @return [String]
    #
    # @!attribute [rw] folder_configurations
    #   The retention policy folder configurations.
    #   @return [Array<Types::FolderConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetDefaultRetentionPolicyResponse AWS API Documentation
    #
    class GetDefaultRetentionPolicyResponse < Struct.new(
      :id,
      :name,
      :description,
      :folder_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMailboxDetailsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization that contains the user whose
    #   mailbox details are being requested.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier for the user whose mailbox details are being
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetMailboxDetailsRequest AWS API Documentation
    #
    class GetMailboxDetailsRequest < Struct.new(
      :organization_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mailbox_quota
    #   The maximum allowed mailbox size, in MB, for the specified user.
    #   @return [Integer]
    #
    # @!attribute [rw] mailbox_size
    #   The current mailbox size, in MB, for the specified user.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/GetMailboxDetailsResponse AWS API Documentation
    #
    class GetMailboxDetailsResponse < Struct.new(
      :mailbox_quota,
      :mailbox_size)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a resource isn't valid. A resource must either
    # be able to auto-respond to requests or have at least one delegate
    # associated that can do so on its behalf.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/InvalidConfigurationException AWS API Documentation
    #
    class InvalidConfigurationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the input parameters don't match the service's
    # restrictions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supplied password doesn't match the minimum security constraints,
    # such as length or use of special characters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/InvalidPasswordException AWS API Documentation
    #
    class InvalidPasswordException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the limit of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccessControlRulesRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAccessControlRulesRequest AWS API Documentation
    #
    class ListAccessControlRulesRequest < Struct.new(
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   The access control rules.
    #   @return [Array<Types::AccessControlRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListAccessControlRulesResponse AWS API Documentation
    #
    class ListAccessControlRulesResponse < Struct.new(
      :rules)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The identifier for the group to which the members (users or groups)
    #   are associated.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMailboxExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxExportJobsRequest AWS API Documentation
    #
    class ListMailboxExportJobsRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   The mailbox export job details.
    #   @return [Array<Types::MailboxExportJob>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListMailboxExportJobsResponse AWS API Documentation
    #
    class ListMailboxExportJobsResponse < Struct.new(
      :jobs,
      :next_token)
      SENSITIVE = []
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
    #   The identifier of the organization under which the user, group, or
    #   resource exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the user, group, or resource for which to list
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] permissions
    #   One page of the user, group, or resource mailbox permissions.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
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
    #   The token to use to retrieve the next page of results. The first
    #   call does not contain any tokens.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # For an email or alias to be created in Amazon WorkMail, the included
    # domain must be defined in the organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/MailDomainNotFoundException AWS API Documentation
    #
    class MailDomainNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # After a domain has been added to the organization, it must be
    # verified. The domain is not yet verified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/MailDomainStateException AWS API Documentation
    #
    class MailDomainStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a mailbox export job, including the user or resource ID
    # associated with the mailbox and the S3 bucket that the mailbox
    # contents are exported to.
    #
    # @!attribute [rw] job_id
    #   The identifier of the mailbox export job.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the user or resource associated with the mailbox.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The mailbox export job description.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path to the S3 bucket and file that the mailbox export job
    #   exports to.
    #   @return [String]
    #
    # @!attribute [rw] estimated_progress
    #   The estimated progress of the mailbox export job, in percentage
    #   points.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the mailbox export job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The mailbox export job start timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The mailbox export job end timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/MailboxExportJob AWS API Documentation
    #
    class MailboxExportJob < Struct.new(
      :job_id,
      :entity_id,
      :description,
      :s3_bucket_name,
      :s3_path,
      :estimated_progress,
      :state,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The representation of a user or group.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The user, group, or resource name isn't unique in Amazon WorkMail.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/NameAvailabilityException AWS API Documentation
    #
    class NameAvailabilityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An operation received a valid organization identifier that either
    # doesn't belong or exist in the system.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/OrganizationNotFoundException AWS API Documentation
    #
    class OrganizationNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The organization must have a valid state to perform certain operations
    # on the organization or its members.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/OrganizationStateException AWS API Documentation
    #
    class OrganizationStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The representation of an organization.
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] default_mail_domain
    #   The default email domain associated with the organization.
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
      :default_mail_domain,
      :error_message,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permission granted to a user, group, or resource to access a certain
    # aspect of another user, group, or resource mailbox.
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the user, group, or resource to which the
    #   permissions are granted.
    #   @return [String]
    #
    # @!attribute [rw] grantee_type
    #   The type of user, group, or resource referred to in GranteeId.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAccessControlRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "AccessControlRuleName", # required
    #         effect: "ALLOW", # required, accepts ALLOW, DENY
    #         description: "AccessControlRuleDescription", # required
    #         ip_ranges: ["IpRange"],
    #         not_ip_ranges: ["IpRange"],
    #         actions: ["AccessControlRuleAction"],
    #         not_actions: ["AccessControlRuleAction"],
    #         user_ids: ["WorkMailIdentifier"],
    #         not_user_ids: ["WorkMailIdentifier"],
    #         organization_id: "OrganizationId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The rule name.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   The rule effect.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] ip_ranges
    #   IPv4 CIDR ranges to include in the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_ip_ranges
    #   IPv4 CIDR ranges to exclude from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   Access protocol actions to include in the rule. Valid values include
    #   `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`,
    #   `WindowsOutlook`, and `WebMail`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_actions
    #   Access protocol actions to exclude from the rule. Valid values
    #   include `ActiveSync`, `AutoDiscover`, `EWS`, `IMAP`, `SMTP`,
    #   `WindowsOutlook`, and `WebMail`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids
    #   User IDs to include in the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_user_ids
    #   User IDs to exclude from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_id
    #   The identifier of the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutAccessControlRuleRequest AWS API Documentation
    #
    class PutAccessControlRuleRequest < Struct.new(
      :name,
      :effect,
      :description,
      :ip_ranges,
      :not_ip_ranges,
      :actions,
      :not_actions,
      :user_ids,
      :not_user_ids,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutAccessControlRuleResponse AWS API Documentation
    #
    class PutAccessControlRuleResponse < Aws::EmptyStructure; end

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
    #   The identifier of the organization under which the user, group, or
    #   resource exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the user, group, or resource for which to update
    #   mailbox permissions.
    #   @return [String]
    #
    # @!attribute [rw] grantee_id
    #   The identifier of the user, group, or resource to which to grant the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutMailboxPermissionsResponse AWS API Documentation
    #
    class PutMailboxPermissionsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutRetentionPolicyRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         id: "ShortString",
    #         name: "ShortString", # required
    #         description: "PolicyDescription",
    #         folder_configurations: [ # required
    #           {
    #             name: "INBOX", # required, accepts INBOX, DELETED_ITEMS, SENT_ITEMS, DRAFTS, JUNK_EMAIL
    #             action: "NONE", # required, accepts NONE, DELETE, PERMANENTLY_DELETE
    #             period: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] organization_id
    #   The organization ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The retention policy ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The retention policy name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The retention policy description.
    #   @return [String]
    #
    # @!attribute [rw] folder_configurations
    #   The retention policy folder configurations.
    #   @return [Array<Types::FolderConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutRetentionPolicyRequest AWS API Documentation
    #
    class PutRetentionPolicyRequest < Struct.new(
      :organization_id,
      :id,
      :name,
      :description,
      :folder_configurations)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/PutRetentionPolicyResponse AWS API Documentation
    #
    class PutRetentionPolicyResponse < Aws::EmptyStructure; end

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
    #   The identifier for the organization under which the user, group, or
    #   resource exists.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier for the user, group, or resource to be updated.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email for the user, group, or resource to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMailRequest AWS API Documentation
    #
    class RegisterToWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/RegisterToWorkMailResponse AWS API Documentation
    #
    class RegisterToWorkMailResponse < Aws::EmptyStructure; end

    # This user, group, or resource name is not allowed in Amazon WorkMail.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ReservedNameException AWS API Documentation
    #
    class ReservedNameException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResetPasswordResponse AWS API Documentation
    #
    class ResetPasswordResponse < Aws::EmptyStructure; end

    # The representation of a resource.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMailboxExportJobRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "IdempotencyClientToken", # required
    #         organization_id: "OrganizationId", # required
    #         entity_id: "WorkMailIdentifier", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         kms_key_arn: "KmsKeyArn", # required
    #         s3_bucket_name: "S3BucketName", # required
    #         s3_prefix: "S3ObjectKey", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   The idempotency token for the client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The identifier associated with the organization.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The identifier of the user or resource associated with the mailbox.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The mailbox export job description.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   grants write permission to the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the symmetric AWS Key Management
    #   Service (AWS KMS) key that encrypts the exported mailbox content.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The S3 bucket prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/StartMailboxExportJobRequest AWS API Documentation
    #
    class StartMailboxExportJobRequest < Struct.new(
      :client_token,
      :organization_id,
      :entity_id,
      :description,
      :role_arn,
      :kms_key_arn,
      :s3_bucket_name,
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/StartMailboxExportJobResponse AWS API Documentation
    #
    class StartMailboxExportJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag applied to a resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The resource can have up to 50 user-applied tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't perform a write operation against a read-only directory.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateMailboxQuotaRequest
    #   data as a hash:
    #
    #       {
    #         organization_id: "OrganizationId", # required
    #         user_id: "WorkMailIdentifier", # required
    #         mailbox_quota: 1, # required
    #       }
    #
    # @!attribute [rw] organization_id
    #   The identifier for the organization that contains the user for whom
    #   to update the mailbox quota.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifer for the user for whom to update the mailbox quota.
    #   @return [String]
    #
    # @!attribute [rw] mailbox_quota
    #   The updated mailbox quota, in MB, for the specified user.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateMailboxQuotaRequest AWS API Documentation
    #
    class UpdateMailboxQuotaRequest < Struct.new(
      :organization_id,
      :user_id,
      :mailbox_quota)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workmail-2017-10-01/UpdateMailboxQuotaResponse AWS API Documentation
    #
    class UpdateMailboxQuotaResponse < Aws::EmptyStructure; end

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
    #   The organization that contains the user, group, or resource to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The user, group, or resource to update.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
