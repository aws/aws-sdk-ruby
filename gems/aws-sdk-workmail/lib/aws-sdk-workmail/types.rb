# frozen_string_literal: true

# This is generated code!

module Aws::WorkMail
  # This module contains the types returned by client operations.
  module Types

    # <p>A rule that controls access to an WorkMail organization.</p>
    # @!attribute name
    #   <p>The rule name.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The rule effect.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #   @return [Array<String>]
    # @!attribute not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #   @return [Array<String>]
    # @!attribute user_ids
    #   <p>User IDs to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    #   @return [Array<String>]
    # @!attribute date_created
    #   <p>The date that the rule was created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date that the rule was modified.</p>
    #   @return [Time]
    # @!attribute impersonation_role_ids
    #   <p>Impersonation role IDs to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_impersonation_role_ids
    #   <p>Impersonation role IDs to exclude from the rule.</p>
    #   @return [Array<String>]
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
      :date_modified,
      :impersonation_role_ids,
      :not_impersonation_role_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the resource exists.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource for which members (users or groups) are associated.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The member (user or group) to associate to the resource.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateDelegateToResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :entity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateDelegateToResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the group exists.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The group to which the member (user or group) is associated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute member_id
    #   <p>The member (user or group) to associate to the group.</p>
    #            <p>The member ID can accept <i>UserID or GroupId</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Member: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: member@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Member name: member</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateMemberToGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :member_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AssociateMemberToGroupResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization under which the impersonation role will be assumed.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The impersonation role ID to assume.</p>
    #   @return [String]
    class AssumeImpersonationRoleRequest < Struct.new(
      :organization_id,
      :impersonation_role_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute token
    #   <p>The authentication token for the impersonation role.</p>
    #   @return [String]
    # @!attribute expires_in
    #   <p>The authentication token's validity, in seconds.</p>
    #   @return [Integer]
    class AssumeImpersonationRoleResponse < Struct.new(
      :token,
      :expires_in,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>List all the <code>AvailabilityConfiguration</code>'s for the given WorkMail
    #          organization.</p>
    # @!attribute domain_name
    #   <p>Displays the domain to which the provider applies.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>Displays the provider type that applies to this domain.</p>
    #   @return [String]
    # @!attribute ews_provider
    #   <p>If <code>ProviderType</code> is <code>EWS</code>, then this field contains
    #               <code>RedactedEwsAvailabilityProvider</code>. Otherwise, it is not required.</p>
    #   @return [Types::RedactedEwsAvailabilityProvider]
    # @!attribute lambda_provider
    #   <p>If ProviderType is <code>LAMBDA</code> then this field contains
    #               <code>LambdaAvailabilityProvider</code>. Otherwise, it is not required.</p>
    #   @return [Types::LambdaAvailabilityProvider]
    # @!attribute date_created
    #   <p>The date and time at which the availability configuration was created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date and time at which the availability configuration was last modified.</p>
    #   @return [Time]
    class AvailabilityConfiguration < Struct.new(
      :domain_name,
      :provider_type,
      :ews_provider,
      :lambda_provider,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>At least one delegate must be associated to the resource to disable automatic replies
    #          from the resource.</p>
    # @!attribute auto_accept_requests
    #   <p>The resource's ability to automatically reply to requests. If disabled, delegates
    #            must be associated to the resource.</p>
    #   @return [Boolean]
    # @!attribute auto_decline_recurring_requests
    #   <p>The resource's ability to automatically decline any recurring requests.</p>
    #   @return [Boolean]
    # @!attribute auto_decline_conflicting_requests
    #   <p>The resource's ability to automatically decline any conflicting requests.</p>
    #   @return [Boolean]
    class BookingOptions < Struct.new(
      :auto_accept_requests,
      :auto_decline_recurring_requests,
      :auto_decline_conflicting_requests,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_accept_requests] = false unless options.key?(:auto_accept_requests)
        options[:auto_decline_recurring_requests] = false unless options.key?(:auto_decline_recurring_requests)
        options[:auto_decline_conflicting_requests] = false unless options.key?(:auto_decline_conflicting_requests)
        super
      end
    end

    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    class CancelMailboxExportJobRequest < Struct.new(
      :client_token,
      :job_id,
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CancelMailboxExportJobResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the member (user or group) exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The member (user or group) to which this alias is added.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias to add to the member set.</p>
    #   @return [String]
    class CreateAliasRequest < Struct.new(
      :organization_id,
      :entity_id,
      :alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateAliasResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>An idempotent token that ensures that an API request is executed only once.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be created.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain to which the provider applies.</p>
    #   @return [String]
    # @!attribute ews_provider
    #   <p>Exchange Web Services (EWS) availability provider definition. The request must contain exactly one provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>.</p>
    #   @return [Types::EwsAvailabilityProvider]
    # @!attribute lambda_provider
    #   <p>Lambda availability provider definition. The request must contain exactly one provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>.</p>
    #   @return [Types::LambdaAvailabilityProvider]
    class CreateAvailabilityConfigurationRequest < Struct.new(
      :client_token,
      :organization_id,
      :domain_name,
      :ews_provider,
      :lambda_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CreateAvailabilityConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the group is to be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If this parameter is enabled, the group will be hidden from the address book.</p>
    #   @return [Boolean]
    class CreateGroupRequest < Struct.new(
      :organization_id,
      :name,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    class CreateGroupResponse < Struct.new(
      :group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #            The name of the IAM Identity Center application.
    #            
    #            
    #         </p>
    #   @return [String]
    # @!attribute instance_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the instance.
    #         </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>
    #            The idempotency token associated with the request.
    #            
    #            
    #         </p>
    #   @return [String]
    class CreateIdentityCenterApplicationRequest < Struct.new(
      :name,
      :instance_arn,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the application.
    #         </p>
    #   @return [String]
    class CreateIdentityCenterApplicationResponse < Struct.new(
      :application_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The WorkMail organization to create the new impersonation role within.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new impersonation role.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The impersonation role's type. The available impersonation role types are
    #               <code>READ_ONLY</code> or <code>FULL_ACCESS</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new impersonation role.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The list of rules for the impersonation role.</p>
    #   @return [Array<Types::ImpersonationRule>]
    class CreateImpersonationRoleRequest < Struct.new(
      :client_token,
      :organization_id,
      :name,
      :type,
      :description,
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute impersonation_role_id
    #   <p>The new impersonation role ID.</p>
    #   @return [String]
    class CreateImpersonationRoleResponse < Struct.new(
      :impersonation_role_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization under which the rule will be created.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The rule name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>Device types that the rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_types
    #   <p>Device types that the rule <b>will not</b> match. All other device types will match.</p>
    #   @return [Array<String>]
    # @!attribute device_models
    #   <p>Device models that the rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_models
    #   <p>Device models that the rule <b>will not</b> match. All other device models will match.</p>
    #   @return [Array<String>]
    # @!attribute device_operating_systems
    #   <p>Device operating systems that the rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that the rule <b>will not</b> match. All other device operating systems will match.</p>
    #   @return [Array<String>]
    # @!attribute device_user_agents
    #   <p>Device user agents that the rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_user_agents
    #   <p>Device user agents that the rule <b>will not</b> match. All other device user agents will match.</p>
    #   @return [Array<String>]
    class CreateMobileDeviceAccessRuleRequest < Struct.new(
      :organization_id,
      :client_token,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier for the newly created mobile device access rule.</p>
    #   @return [String]
    class CreateMobileDeviceAccessRuleResponse < Struct.new(
      :mobile_device_access_rule_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The AWS Directory Service directory ID.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The organization alias.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The idempotency token associated with the request.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The email domains to associate with the organization.</p>
    #   @return [Array<Types::Domain>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a customer managed key from AWS KMS.</p>
    #   @return [String]
    # @!attribute enable_interoperability
    #   <p>When <code>true</code>, allows organization interoperability between WorkMail and
    #            Microsoft Exchange. If <code>true</code>, you must include a AD Connector directory ID in
    #            the request.</p>
    #   @return [Boolean]
    class CreateOrganizationRequest < Struct.new(
      :directory_id,
      :alias,
      :client_token,
      :domains,
      :kms_key_arn,
      :enable_interoperability,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    class CreateOrganizationResponse < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the new resource. The available types are <code>equipment</code> and
    #               <code>room</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If this parameter is enabled, the resource will be hidden from the address book.</p>
    #   @return [Boolean]
    class CreateResourceRequest < Struct.new(
      :organization_id,
      :name,
      :type,
      :description,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the new resource.</p>
    #   @return [String]
    class CreateResourceResponse < Struct.new(
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization for which the user is created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name for the new user.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password for the new user.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role of the new user.</p>
    #            <p>You cannot pass <i>SYSTEM_USER</i> or <i>RESOURCE</i> role in a single request. When a user role is not selected, the default role of <i>USER</i> is selected.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name of the new user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the new user. </p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If this parameter is enabled, the user will be hidden from the address book.</p>
    #   @return [Boolean]
    # @!attribute identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      :organization_id,
      :name,
      :display_name,
      :password,
      :role,
      :first_name,
      :last_name,
      :hidden_from_global_address_list,
      :identity_provider_user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier for the new user.</p>
    #   @return [String]
    class CreateUserResponse < Struct.new(
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the attribute, which is one of the values defined in the UserAttribute
    #          enumeration.</p>
    # @!attribute id
    #   <p>The identifier for the user or group associated as the resource's delegate.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the delegate: user or group.</p>
    #   @return [String]
    class Delegate < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the access control rule.</p>
    #   @return [String]
    class DeleteAccessControlRuleRequest < Struct.new(
      :organization_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAccessControlRuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the member (user or group) from which to have the aliases
    #            removed.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The aliases to be removed from the user's set of aliases. Duplicate entries in the
    #            list are collapsed into single entries (the list is transformed into a set).</p>
    #   @return [String]
    class DeleteAliasRequest < Struct.new(
      :organization_id,
      :entity_id,
      :alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAliasResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be deleted.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain for which the <code>AvailabilityConfiguration</code> will be deleted.</p>
    #   @return [String]
    class DeleteAvailabilityConfigurationRequest < Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAvailabilityConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization from which the email monitoring configuration is deleted.</p>
    #   @return [String]
    class DeleteEmailMonitoringConfigurationRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteEmailMonitoringConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the group.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier of the group to be deleted.</p>
    #            <p>The identifier can be the <i>GroupId</i>, or <i>Groupname</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteGroupResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the application.
    #         </p>
    #   @return [String]
    class DeleteIdentityCenterApplicationRequest < Struct.new(
      :application_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIdentityCenterApplicationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>
    #   The Organization ID. </p>
    #   @return [String]
    class DeleteIdentityProviderConfigurationRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIdentityProviderConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization from which to delete the impersonation role.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The ID of the impersonation role to delete.</p>
    #   @return [String]
    class DeleteImpersonationRoleRequest < Struct.new(
      :organization_id,
      :impersonation_role_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteImpersonationRoleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the member (user or group)
    #            exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the entity that owns the mailbox.</p>
    #            <p>The identifier can be <i>UserId or Group Id</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grantee_id
    #   <p>The identifier of the entity for which to delete granted permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grantee ID: 12345678-1234-1234-1234-123456789012,r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: grantee@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Grantee name: grantee</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMailboxPermissionsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the access override will be deleted.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The WorkMail user for which you want to delete the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID:  <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_id
    #   <p>The mobile device for which you delete the override. <code>DeviceId</code> is case insensitive.</p>
    #   @return [String]
    class DeleteMobileDeviceAccessOverrideRequest < Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMobileDeviceAccessOverrideResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization under which the rule will be deleted.</p>
    #   @return [String]
    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier of the rule to be deleted.</p>
    #   @return [String]
    class DeleteMobileDeviceAccessRuleRequest < Struct.new(
      :organization_id,
      :mobile_device_access_rule_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMobileDeviceAccessRuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token associated with the request.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    # @!attribute delete_directory
    #   <p>If true, deletes the AWS Directory Service directory associated with the organization.</p>
    #   @return [Boolean]
    # @!attribute force_delete
    #   <p>Deletes a WorkMail organization even if the organization has enabled users.</p>
    #   @return [Boolean]
    # @!attribute delete_identity_center_application
    #   <p>Deletes IAM Identity Center application for WorkMail. This action does not affect authentication settings for any organization.</p>
    #   @return [Boolean]
    class DeleteOrganizationRequest < Struct.new(
      :client_token,
      :organization_id,
      :delete_directory,
      :force_delete,
      :delete_identity_center_application,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the organization.</p>
    #   @return [String]
    class DeleteOrganizationResponse < Struct.new(
      :organization_id,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>
    #            The Organization ID. </p>
    #   @return [String]
    # @!attribute personal_access_token_id
    #   <p>
    #           The Personal Access Token ID.</p>
    #   @return [String]
    class DeletePersonalAccessTokenRequest < Struct.new(
      :organization_id,
      :personal_access_token_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePersonalAccessTokenResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization from which the resource is
    #            deleted.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource to be deleted.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, or <i>Resourcename</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The retention policy ID.</p>
    #   @return [String]
    class DeleteRetentionPolicyRequest < Struct.new(
      :organization_id,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRetentionPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the user to be deleted.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user to be deleted.</p>
    #            <p>The identifier can be the <i>UserId</i> or <i>Username</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the WorkMail entity exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the member to be updated.</p>
    #            <p>The identifier can be <i>UserId, ResourceId, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeregisterFromWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterFromWorkMailResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the domain will be deregistered.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain to deregister in WorkMail and SES.</p>
    #   @return [String]
    class DeregisterMailDomainRequest < Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterMailDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is described.</p>
    #   @return [String]
    class DescribeEmailMonitoringConfigurationRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    #   @return [String]
    class DescribeEmailMonitoringConfigurationResponse < Struct.new(
      :role_arn,
      :log_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email under which the entity exists.</p>
    #   @return [String]
    class DescribeEntityRequest < Struct.new(
      :organization_id,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_id
    #   <p>The entity ID under which the entity exists.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Username, GroupName, or ResourceName based on entity type.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Entity type.</p>
    #   @return [String]
    class DescribeEntityResponse < Struct.new(
      :entity_id,
      :name,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier for the group to be described.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the described group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the described group.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the described group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the user: enabled (registered to WorkMail) or disabled (deregistered or
    #            never registered to WorkMail).</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date and time when a user was registered to WorkMail, in UNIX epoch time
    #            format.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date and time when a user was deregistered from WorkMail, in UNIX epoch time
    #            format.</p>
    #   @return [Time]
    # @!attribute hidden_from_global_address_list
    #   <p>If the value is set to <i>true</i>, the group is hidden from the address book.</p>
    #   @return [Boolean]
    class DescribeGroupResponse < Struct.new(
      :group_id,
      :name,
      :email,
      :state,
      :enabled_date,
      :disabled_date,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hidden_from_global_address_list] = false unless options.key?(:hidden_from_global_address_list)
        super
      end
    end

    # @!attribute organization_id
    #   <p>
    #            The Organization ID. </p>
    #   @return [String]
    class DescribeIdentityProviderConfigurationRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_mode
    #   <p>
    #   The authentication mode used in WorkMail.</p>
    #   @return [String]
    # @!attribute identity_center_configuration
    #   <p>
    #            The details of the IAM Identity Center configuration.  
    #         </p>
    #   @return [Types::IdentityCenterConfiguration]
    # @!attribute personal_access_token_configuration
    #   <p>
    #            The details of the Personal Access Token configuration.
    #         </p>
    #   @return [Types::PersonalAccessTokenConfiguration]
    class DescribeIdentityProviderConfigurationResponse < Struct.new(
      :authentication_mode,
      :identity_center_configuration,
      :personal_access_token_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>Lists the ID of the given organization.</p>
    #   @return [String]
    class DescribeInboundDmarcSettingsRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enforced
    #   <p>Lists the enforcement setting of the applied policy.</p>
    #   @return [Boolean]
    class DescribeInboundDmarcSettingsResponse < Struct.new(
      :enforced,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforced] = false unless options.key?(:enforced)
        super
      end
    end

    # @!attribute job_id
    #   <p>The mailbox export job ID.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    class DescribeMailboxExportJobRequest < Struct.new(
      :job_id,
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the Amazon Simple
    #            Storage Service (Amazon S3) bucket.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The S3 bucket prefix.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path to the S3 bucket and file that the mailbox export job is exporting
    #            to.</p>
    #   @return [String]
    # @!attribute estimated_progress
    #   <p>The estimated progress of the mailbox export job, in percentage points.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the mailbox export job.</p>
    #   @return [String]
    # @!attribute error_info
    #   <p>Error information for failed mailbox export jobs.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The mailbox export job start timestamp.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The mailbox export job end timestamp.</p>
    #   @return [Time]
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
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated_progress] = 0 unless options.key?(:estimated_progress)
        super
      end
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization to be described.</p>
    #   @return [String]
    class DescribeOrganizationRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of an organization.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias for an organization.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of an organization.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier for the directory associated with an WorkMail organization.</p>
    #   @return [String]
    # @!attribute directory_type
    #   <p>The type of directory associated with the WorkMail organization.</p>
    #   @return [String]
    # @!attribute default_mail_domain
    #   <p>The default mail domain associated with the organization.</p>
    #   @return [String]
    # @!attribute completed_date
    #   <p>The date at which the organization became usable in the WorkMail context, in UNIX epoch
    #            time format.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>(Optional) The error message indicating if unexpected behavior was encountered with
    #            regards to the organization.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the organization.</p>
    #   @return [String]
    # @!attribute migration_admin
    #   <p>The user ID of the migration admin if migration is enabled for the organization.</p>
    #   @return [String]
    # @!attribute interoperability_enabled
    #   <p>Indicates if interoperability is enabled for this organization.</p>
    #   @return [Boolean]
    class DescribeOrganizationResponse < Struct.new(
      :organization_id,
      :alias,
      :state,
      :directory_id,
      :directory_type,
      :default_mail_domain,
      :completed_date,
      :error_message,
      :arn,
      :migration_admin,
      :interoperability_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:interoperability_enabled] = false unless options.key?(:interoperability_enabled)
        super
      end
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            described.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource to be described.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DescribeResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the described resource.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the described resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the described resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the described resource.</p>
    #   @return [String]
    # @!attribute booking_options
    #   <p>The booking options for the described resource.</p>
    #   @return [Types::BookingOptions]
    # @!attribute state
    #   <p>The state of the resource: enabled (registered to WorkMail), disabled (deregistered
    #            or never registered to WorkMail), or deleted.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date and time when a resource was enabled for WorkMail, in UNIX epoch time
    #            format.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date and time when a resource was disabled from WorkMail, in UNIX epoch time
    #            format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Description of the resource.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If enabled, the resource is hidden from the global address list.</p>
    #   @return [Boolean]
    class DescribeResourceResponse < Struct.new(
      :resource_id,
      :email,
      :name,
      :type,
      :booking_options,
      :state,
      :enabled_date,
      :disabled_date,
      :description,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hidden_from_global_address_list] = false unless options.key?(:hidden_from_global_address_list)
        super
      end
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user to be described.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #            <p></p>
    #   @return [String]
    class DescribeUserRequest < Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The identifier for the described user.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the user.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the user.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of a user: enabled (registered to WorkMail) or disabled (deregistered or
    #            never registered to WorkMail).</p>
    #   @return [String]
    # @!attribute user_role
    #   <p>In certain cases, other entities are modeled as users. If interoperability is
    #            enabled, resources are imported into WorkMail as users. Because different WorkMail
    #            organizations rely on different directory types, administrators can distinguish between an
    #            unregistered user (account is disabled and has a user role) and the directory
    #            administrators. The values are USER, RESOURCE, SYSTEM_USER, and REMOTE_USER.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date and time at which the user was enabled for WorkMailusage, in UNIX epoch
    #            time format.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date and time at which the user was disabled for WorkMail usage, in UNIX epoch
    #            time format.</p>
    #   @return [Time]
    # @!attribute mailbox_provisioned_date
    #   <p>The date when the mailbox was created for the user.</p>
    #   @return [Time]
    # @!attribute mailbox_deprovisioned_date
    #   <p>The date when the mailbox was removed for the user.</p>
    #   @return [Time]
    # @!attribute first_name
    #   <p>First name of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Last name of the user.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If enabled, the user is hidden from the global address list.</p>
    #   @return [Boolean]
    # @!attribute initials
    #   <p>Initials of the user.</p>
    #   @return [String]
    # @!attribute telephone
    #   <p>User's contact number.</p>
    #   @return [String]
    # @!attribute street
    #   <p>Street where the user is located.</p>
    #   @return [String]
    # @!attribute job_title
    #   <p>Job title of the user.</p>
    #   @return [String]
    # @!attribute city
    #   <p>City where the user is located.</p>
    #   @return [String]
    # @!attribute company
    #   <p>Company of the user.</p>
    #   @return [String]
    # @!attribute zip_code
    #   <p>Zip code of the user.</p>
    #   @return [String]
    # @!attribute department
    #   <p>Department of the user.</p>
    #   @return [String]
    # @!attribute country
    #   <p>Country where the user is located.</p>
    #   @return [String]
    # @!attribute office
    #   <p>Office where the user is located.</p>
    #   @return [String]
    # @!attribute identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    #   @return [String]
    # @!attribute identity_provider_identity_store_id
    #   <p>
    #            Identity Store ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.
    #         </p>
    #   @return [String]
    class DescribeUserResponse < Struct.new(
      :user_id,
      :name,
      :email,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date,
      :mailbox_provisioned_date,
      :mailbox_deprovisioned_date,
      :first_name,
      :last_name,
      :hidden_from_global_address_list,
      :initials,
      :telephone,
      :street,
      :job_title,
      :city,
      :company,
      :zip_code,
      :department,
      :country,
      :office,
      :identity_provider_user_id,
      :identity_provider_identity_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:hidden_from_global_address_list] = false unless options.key?(:hidden_from_global_address_list)
        super
      end
    end

    # <p>The directory is already in use by another WorkMail organization in the same account and Region.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The directory service doesn't recognize the credentials supplied by WorkMail.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryServiceAuthenticationFailedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The directory is unavailable. It might be located in another Region or deleted.</p>
    # @!attribute message
    #   @return [String]
    class DirectoryUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the resource exists.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource from which delegates' set members are removed.
    #         </p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the member (user, group) to be removed from the resource's
    #            delegates.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DisassociateDelegateFromResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :entity_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateDelegateFromResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier for the group from which members are removed.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute member_id
    #   <p>The identifier for the member to be removed from the group.</p>
    #            <p>The member ID can accept <i>UserID or GroupId</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Member ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: member@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Member name: member</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DisassociateMemberFromGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :member_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateMemberFromGroupResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A DNS record uploaded to your DNS provider.</p>
    # @!attribute type
    #   <p>The RFC 1035 record type. Possible values: <code>CNAME</code>, <code>A</code>, <code>MX</code>.</p>
    #   @return [String]
    # @!attribute hostname
    #   <p>The DNS hostname.- For example, <code>domain.example.com</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value returned by the DNS for a query to that hostname and record type.</p>
    #   @return [String]
    class DnsRecord < Struct.new(
      :type,
      :hostname,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The domain to associate with an WorkMail organization.</p>
    #          <p>When you configure a domain hosted in Amazon Route 53 (Route 53), all recommended DNS records are added to the organization when you create it. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html">Adding a domain</a> in the <i>WorkMail Administrator Guide</i>.</p>
    # @!attribute domain_name
    #   <p>The fully qualified domain name.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The hosted zone ID for a domain hosted in Route 53. Required when configuring a domain hosted in Route 53.</p>
    #   @return [String]
    class Domain < Struct.new(
      :domain_name,
      :hosted_zone_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The email address that you're trying to assign is already created for a different
    #          user, group, or resource.</p>
    # @!attribute message
    #   @return [String]
    class EmailAddressInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user, group, or resource that you're trying to register is already
    #          registered.</p>
    # @!attribute message
    #   @return [String]
    class EntityAlreadyRegisteredException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier supplied for the user, group, or resource does not exist in your
    #          organization.</p>
    # @!attribute message
    #   @return [String]
    class EntityNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You are performing an operation on a user, group, or resource that isn't in the
    #          expected state, such as trying to delete an active user.</p>
    # @!attribute message
    #   @return [String]
    class EntityStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EWS based availability provider. This is only used as input to the service.</p>
    # @!attribute ews_endpoint
    #   <p>The endpoint of the remote EWS server.</p>
    #   @return [String]
    # @!attribute ews_username
    #   <p>The username used to authenticate the remote EWS server.</p>
    #   @return [String]
    # @!attribute ews_password
    #   <p>The password used to authenticate the remote EWS server.</p>
    #   @return [String]
    class EwsAvailabilityProvider < Struct.new(
      :ews_endpoint,
      :ews_username,
      :ews_password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration applied to an organization's folders by its retention
    #          policy.</p>
    # @!attribute name
    #   <p>The folder name.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to take on the folder contents at the end of the folder configuration
    #            period.</p>
    #   @return [String]
    # @!attribute period
    #   <p>The number of days for which the folder-configuration action applies.</p>
    #   @return [Integer]
    class FolderConfiguration < Struct.new(
      :name,
      :action,
      :period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IPv4 address.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The access protocol action. Valid values include <code>ActiveSync</code>,
    #               <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
    #               <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The impersonation role ID.</p>
    #   @return [String]
    class GetAccessControlEffectRequest < Struct.new(
      :organization_id,
      :ip_address,
      :action,
      :user_id,
      :impersonation_role_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute effect
    #   <p>The rule effect.</p>
    #   @return [String]
    # @!attribute matched_rules
    #   <p>The rules that match the given parameters, resulting in an effect.</p>
    #   @return [Array<String>]
    class GetAccessControlEffectResponse < Struct.new(
      :effect,
      :matched_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    class GetDefaultRetentionPolicyRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The retention policy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The retention policy name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention policy description.</p>
    #   @return [String]
    # @!attribute folder_configurations
    #   <p>The retention policy folder configurations.</p>
    #   @return [Array<Types::FolderConfiguration>]
    class GetDefaultRetentionPolicyResponse < Struct.new(
      :id,
      :name,
      :description,
      :folder_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization where the impersonation role is defined.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The impersonation role ID to test.</p>
    #   @return [String]
    # @!attribute target_user
    #   <p>The WorkMail organization user chosen to test the impersonation role. The following identity
    #            formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetImpersonationRoleEffectRequest < Struct.new(
      :organization_id,
      :impersonation_role_id,
      :target_user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The impersonation role type.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>
    #               <code></code>Effect of the impersonation role on the target user based on its rules. Available
    #            effects are <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute matched_rules
    #   <p>A list of the rules that match the input and produce the configured effect.</p>
    #   @return [Array<Types::ImpersonationMatchedRule>]
    class GetImpersonationRoleEffectResponse < Struct.new(
      :type,
      :effect,
      :matched_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization from which to retrieve the impersonation role.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The impersonation role ID to retrieve.</p>
    #   @return [String]
    class GetImpersonationRoleRequest < Struct.new(
      :organization_id,
      :impersonation_role_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute impersonation_role_id
    #   <p>The impersonation role ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The impersonation role name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The impersonation role type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The impersonation role description.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The list of rules for the given impersonation role.</p>
    #   @return [Array<Types::ImpersonationRule>]
    # @!attribute date_created
    #   <p>The date when the impersonation role was created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date when the impersonation role was last modified.</p>
    #   @return [Time]
    class GetImpersonationRoleResponse < Struct.new(
      :impersonation_role_id,
      :name,
      :type,
      :description,
      :rules,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the domain is retrieved.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain from which you want to retrieve details.</p>
    #   @return [String]
    class GetMailDomainRequest < Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute records
    #   <p>A list of the DNS records that WorkMail recommends adding in your DNS provider for the best user experience. The records configure your domain with DMARC, SPF, DKIM, and direct incoming 
    #            email traffic to SES. See admin guide for more details.</p>
    #   @return [Array<Types::DnsRecord>]
    # @!attribute is_test_domain
    #   <p>Specifies whether the domain is a test domain provided by WorkMail, or a custom domain.</p>
    #   @return [Boolean]
    # @!attribute is_default
    #   <p>Specifies whether the domain is the default domain for your organization.</p>
    #   @return [Boolean]
    # @!attribute ownership_verification_status
    #   <p> Indicates the status of the domain ownership verification.</p>
    #   @return [String]
    # @!attribute dkim_verification_status
    #   <p>Indicates the status of a DKIM verification.</p>
    #   @return [String]
    class GetMailDomainResponse < Struct.new(
      :records,
      :is_test_domain,
      :is_default,
      :ownership_verification_status,
      :dkim_verification_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_test_domain] = false unless options.key?(:is_test_domain)
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the user whose mailbox details are
    #            being requested.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user whose mailbox details are being requested.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetMailboxDetailsRequest < Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute mailbox_quota
    #   <p>The maximum allowed mailbox size, in MB, for the specified user.</p>
    #   @return [Integer]
    # @!attribute mailbox_size
    #   <p>The current mailbox size, in MB, for the specified user.</p>
    #   @return [Float]
    class GetMailboxDetailsResponse < Struct.new(
      :mailbox_quota,
      :mailbox_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mailbox_size] = 0 unless options.key?(:mailbox_size)
        super
      end
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization to simulate the access effect for.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>Device type the simulated user will report.</p>
    #   @return [String]
    # @!attribute device_model
    #   <p>Device model the simulated user will report.</p>
    #   @return [String]
    # @!attribute device_operating_system
    #   <p>Device operating system the simulated user will report.</p>
    #   @return [String]
    # @!attribute device_user_agent
    #   <p>Device user agent the simulated user will report.</p>
    #   @return [String]
    class GetMobileDeviceAccessEffectRequest < Struct.new(
      :organization_id,
      :device_type,
      :device_model,
      :device_operating_system,
      :device_user_agent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute effect
    #   <p>The effect of the simulated access, <code>ALLOW</code> or <code>DENY</code>, after evaluating mobile device access rules in the WorkMail organization for the simulated 
    #            user parameters.</p>
    #   @return [String]
    # @!attribute matched_rules
    #   <p>A list of the rules which matched the simulated user input and produced the effect.</p>
    #   @return [Array<Types::MobileDeviceAccessMatchedRule>]
    class GetMobileDeviceAccessEffectResponse < Struct.new(
      :effect,
      :matched_rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization to which you want to apply the override.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>Identifies the WorkMail user for the override. Accepts the following types of user identities: </p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_id
    #   <p>The mobile device to which the override applies. <code>DeviceId</code> is case insensitive.</p>
    #   @return [String]
    class GetMobileDeviceAccessOverrideRequest < Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The WorkMail user to which the access override applies.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device to which the access override applies.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the override.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date the override was first created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date the description was last modified.</p>
    #   @return [Time]
    class GetMobileDeviceAccessOverrideResponse < Struct.new(
      :user_id,
      :device_id,
      :effect,
      :description,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>
    #            The Organization ID. </p>
    #   @return [String]
    # @!attribute personal_access_token_id
    #   <p>
    #            The Personal Access Token ID.</p>
    #   @return [String]
    class GetPersonalAccessTokenMetadataRequest < Struct.new(
      :organization_id,
      :personal_access_token_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute personal_access_token_id
    #   <p>
    #            The Personal Access Token ID.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>
    #            The WorkMail User ID. 
    #         </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #            The Personal Access Token name.
    #         </p>
    #   @return [String]
    # @!attribute date_created
    #   <p>
    #            The date when the Personal Access Token ID was created.
    #         </p>
    #   @return [Time]
    # @!attribute date_last_used
    #   <p>
    #            The date when the Personal Access Token ID was last used.
    #         </p>
    #   @return [Time]
    # @!attribute expires_time
    #   <p>
    #            The time when the Personal Access Token ID will expire.
    #         </p>
    #   @return [Time]
    # @!attribute scopes
    #   <p>
    #            Lists all the Personal Access Token permissions for a mailbox.
    #         </p>
    #   @return [Array<String>]
    class GetPersonalAccessTokenMetadataResponse < Struct.new(
      :personal_access_token_id,
      :user_id,
      :name,
      :date_created,
      :date_last_used,
      :expires_time,
      :scopes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The representation of an WorkMail group.</p>
    # @!attribute id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the group, which can be ENABLED, DISABLED, or DELETED.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date indicating when the group was enabled for WorkMail use.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date indicating when the group was disabled from WorkMail use.</p>
    #   @return [Time]
    class Group < Struct.new(
      :id,
      :email,
      :name,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The identifier that contains the Group ID and name of a group.</p>
    # @!attribute group_id
    #   <p>Group ID that matched the group.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>Group name that matched the group.</p>
    #   @return [String]
    class GroupIdentifier < Struct.new(
      :group_id,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The IAM Identity Center configuration.
    #       </p>
    # @!attribute instance_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of the  of IAM Identity Center instance. Must be in the same AWS account and region as WorkMail organization.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>
    #            The Amazon Resource Name (ARN) of IAMIdentity Center Application for WorkMail. Must be created by the WorkMail API, see CreateIdentityCenterApplication.</p>
    #   @return [String]
    class IdentityCenterConfiguration < Struct.new(
      :instance_arn,
      :application_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The impersonation rule that matched the input.</p>
    # @!attribute impersonation_rule_id
    #   <p>The ID of the rule that matched the input</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule that matched the input.</p>
    #   @return [String]
    class ImpersonationMatchedRule < Struct.new(
      :impersonation_rule_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An impersonation role for the given WorkMail organization.</p>
    # @!attribute impersonation_role_id
    #   <p>The identifier of the impersonation role.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The impersonation role name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The impersonation role type.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date when the impersonation role was created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date when the impersonation role was last modified.</p>
    #   @return [Time]
    class ImpersonationRole < Struct.new(
      :impersonation_role_id,
      :name,
      :type,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The rules for the given impersonation role.</p>
    # @!attribute impersonation_rule_id
    #   <p>The identifier of the rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The rule name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the rule when it matches the input. Allowed effect values are
    #               <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute target_users
    #   <p>A list of user IDs that match the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_target_users
    #   <p>A list of user IDs that don't match the rule.</p>
    #   @return [Array<String>]
    class ImpersonationRule < Struct.new(
      :impersonation_rule_id,
      :name,
      :description,
      :effect,
      :target_users,
      :not_target_users,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a resource isn't valid. A resource must either be able to
    #          auto-respond to requests or have at least one delegate associated that can do so on its
    #          behalf.</p>
    # @!attribute message
    #   @return [String]
    class InvalidConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You SES configuration has customizations that WorkMail cannot save. The error message lists the invalid setting. For examples of invalid settings, refer to 
    #          <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_CreateReceiptRule.html">CreateReceiptRule</a>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCustomSesConfigurationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the input parameters don't match the service's restrictions.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The supplied password doesn't match the minimum security constraints, such as length
    #          or use of special characters.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPasswordException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Lambda based availability provider.</p>
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda that acts as the availability provider.</p>
    #   @return [String]
    class LambdaAvailabilityProvider < Struct.new(
      :lambda_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the limit of the resource.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #   @return [String]
    class ListAccessControlRulesRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>The access control rules.</p>
    #   @return [Array<Types::AccessControlRule>]
    class ListAccessControlRulesResponse < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the entity for which to list the aliases.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListAliasesRequest < Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute aliases
    #   <p>The entity's paginated aliases.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #   @return [String]
    class ListAliasesResponse < Struct.new(
      :aliases,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code>'s will be
    #            listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #   @return [String]
    class ListAvailabilityConfigurationsRequest < Struct.new(
      :organization_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_configurations
    #   <p>The list of <code>AvailabilityConfiguration</code>'s that exist for the specified WorkMail organization.</p>
    #   @return [Array<Types::AvailabilityConfiguration>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is <code>null</code> when there are no further results to return.</p>
    #   @return [String]
    class ListAvailabilityConfigurationsResponse < Struct.new(
      :availability_configurations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier for the group to which the members (users or groups) are
    #            associated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListGroupMembersRequest < Struct.new(
      :organization_id,
      :group_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>The members associated to the group.</p>
    #   @return [Array<Types::Member>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    class ListGroupMembersResponse < Struct.new(
      :members,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Filtering options for <i>ListGroups</i> operation. This is only used as input to Operation.</p>
    # @!attribute name_prefix
    #   <p>Filters only groups with the provided name prefix.</p>
    #   @return [String]
    # @!attribute primary_email_prefix
    #   <p>Filters only groups with the provided primary email prefix.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Filters only groups with the provided state.</p>
    #   @return [String]
    class ListGroupsFilters < Struct.new(
      :name_prefix,
      :primary_email_prefix,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Filtering options for <i>ListGroupsForEntity</i> operation. This is only used as input to Operation.</p>
    # @!attribute group_name_prefix
    #   <p>Filters only group names that start with the provided name prefix.</p>
    #   @return [String]
    class ListGroupsForEntityFilters < Struct.new(
      :group_name_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the entity.</p>
    #            <p>The entity ID can accept <i>UserId or GroupID</i>, <i>Username or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute filters
    #   <p>Limit the search results based on the filter criteria.</p>
    #   @return [Types::ListGroupsForEntityFilters]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListGroupsForEntityRequest < Struct.new(
      :organization_id,
      :entity_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>The overview of groups in an organization.</p>
    #   @return [Array<Types::GroupIdentifier>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.</p>
    #   @return [String]
    class ListGroupsForEntityResponse < Struct.new(
      :groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the groups exist.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Limit the search results based on the filter criteria. Only one filter per request is supported.</p>
    #   @return [Types::ListGroupsFilters]
    class ListGroupsRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>The overview of groups for an organization.</p>
    #   @return [Array<Types::Group>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #   @return [String]
    class ListGroupsResponse < Struct.new(
      :groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization to which the listed impersonation roles belong.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of results. The first call doesn't require a
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results returned in a single call.</p>
    #   @return [Integer]
    class ListImpersonationRolesRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute roles
    #   <p>The list of impersonation roles under the given WorkMail organization.</p>
    #   @return [Array<Types::ImpersonationRole>]
    # @!attribute next_token
    #   <p>The token to retrieve the next page of results. The value is <code>null</code> when
    #            there are no results to return.</p>
    #   @return [String]
    class ListImpersonationRolesResponse < Struct.new(
      :roles,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which to list domains.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #   @return [String]
    class ListMailDomainsRequest < Struct.new(
      :organization_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute mail_domains
    #   <p>The list of mail domain summaries, specifying domains that exist in the specified WorkMail organization, along with the information about whether the domain is or isn't the default.</p>
    #   @return [Array<Types::MailDomainSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value becomes <code>null</code> when there are no more results to return.</p>
    #   @return [String]
    class ListMailDomainsResponse < Struct.new(
      :mail_domains,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListMailboxExportJobsRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>The mailbox export job details.</p>
    #   @return [Array<Types::MailboxExportJob>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListMailboxExportJobsResponse < Struct.new(
      :jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the user, or resource for which to list mailbox
    #            permissions.</p>
    #            <p>The entity ID can accept <i>UserId or ResourceId</i>, <i>Username or Resourcename</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, or r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute permissions
    #   <p>One page of the user, group, or resource mailbox permissions.</p>
    #   @return [Array<Types::Permission>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #   @return [String]
    class ListMailboxPermissionsResponse < Struct.new(
      :permissions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization under which to list mobile device access overrides.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The WorkMail user under which you list the mobile device access overrides. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_id
    #   <p>The mobile device to which the access override applies.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListMobileDeviceAccessOverridesRequest < Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute overrides
    #   <p>The list of mobile device access overrides that exist for the specified WorkMail organization and user.</p>
    #   @return [Array<Types::MobileDeviceAccessOverride>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is “null” when there are no more results to return.</p>
    #   @return [String]
    class ListMobileDeviceAccessOverridesResponse < Struct.new(
      :overrides,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which to list the rules.</p>
    #   @return [String]
    class ListMobileDeviceAccessRulesRequest < Struct.new(
      :organization_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>The list of mobile device access rules that exist under the specified WorkMail organization.</p>
    #   @return [Array<Types::MobileDeviceAccessRule>]
    class ListMobileDeviceAccessRulesResponse < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListOrganizationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_summaries
    #   <p>The overview of owned organizations presented as a list of organization
    #            summaries.</p>
    #   @return [Array<Types::OrganizationSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #   @return [String]
    class ListOrganizationsResponse < Struct.new(
      :organization_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>
    #            The Organization ID. </p>
    #   @return [String]
    # @!attribute user_id
    #   <p>
    #            The WorkMail User ID. 
    #         </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #            The token from the previous response to query the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum amount of items that should be returned in a response.
    #         </p>
    #   @return [Integer]
    class ListPersonalAccessTokensRequest < Struct.new(
      :organization_id,
      :user_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #            The token from the previous response to query the next page.</p>
    #   @return [String]
    # @!attribute personal_access_token_summaries
    #   <p>
    #            Lists all the personal tokens in an organization or user, if user ID is provided. 
    #         </p>
    #   @return [Array<Types::PersonalAccessTokenSummary>]
    class ListPersonalAccessTokensResponse < Struct.new(
      :next_token,
      :personal_access_token_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the resource for which delegates
    #            are listed.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier for the resource whose delegates are listed.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token used to paginate through the delegates associated with a
    #            resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of maximum results in a page.</p>
    #   @return [Integer]
    class ListResourceDelegatesRequest < Struct.new(
      :organization_id,
      :resource_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute delegates
    #   <p>One page of the resource's delegates.</p>
    #   @return [Array<Types::Delegate>]
    # @!attribute next_token
    #   <p>The token used to paginate through the delegates associated with a resource. While
    #            results are still available, it has an associated value. When the last page is reached, the
    #            token is empty.</p>
    #   @return [String]
    class ListResourceDelegatesResponse < Struct.new(
      :delegates,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filtering options for <i>ListResources</i> operation. This is only used as input to Operation.</p>
    # @!attribute name_prefix
    #   <p>Filters only resource that start with the entered name prefix .</p>
    #   @return [String]
    # @!attribute primary_email_prefix
    #   <p>Filters only resource with the provided primary email prefix.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Filters only resource with the provided state.</p>
    #   @return [String]
    class ListResourcesFilters < Struct.new(
      :name_prefix,
      :primary_email_prefix,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the resources exist.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Limit the resource search results based on the filter criteria. You can only use one filter per request.</p>
    #   @return [Types::ListResourcesFilters]
    class ListResourcesRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resources
    #   <p>One page of the organization's resource representation.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute next_token
    #   <p> The token used to paginate through all the organization's resources. While results
    #            are still available, it has an associated value. When the last page is reached, the token
    #            is empty.</p>
    #   @return [String]
    class ListResourcesResponse < Struct.new(
      :resources,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Filtering options for <i>ListUsers</i> operation. This is only used as input to Operation.</p>
    # @!attribute username_prefix
    #   <p>Filters only users with the provided username prefix.</p>
    #   @return [String]
    # @!attribute display_name_prefix
    #   <p>Filters only users with the provided display name prefix.</p>
    #   @return [String]
    # @!attribute primary_email_prefix
    #   <p>Filters only users with the provided email prefix.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Filters only users with the provided state.</p>
    #   @return [String]
    # @!attribute identity_provider_user_id_prefix
    #   <p>Filters only users with the ID from the IAM Identity Center.</p>
    #   @return [String]
    class ListUsersFilters < Struct.new(
      :username_prefix,
      :display_name_prefix,
      :primary_email_prefix,
      :state,
      :identity_provider_user_id_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the users exist.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Limit the user search results based on the filter criteria. You can only use one filter per request.</p>
    #   @return [Types::ListUsersFilters]
    class ListUsersRequest < Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>The overview of users for an organization.</p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. This value is `null` when
    #            there are no more results to return.</p>
    #   @return [String]
    class ListUsersResponse < Struct.new(
      :users,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The domain you're trying to change is in use by another user or organization in your account. See the error message for details.</p>
    # @!attribute message
    #   @return [String]
    class MailDomainInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The domain specified is not found in your organization.</p>
    # @!attribute message
    #   @return [String]
    class MailDomainNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>After a domain has been added to the organization, it must be verified. The domain is
    #          not yet verified.</p>
    # @!attribute message
    #   @return [String]
    class MailDomainStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data for a given domain.</p>
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute default_domain
    #   <p>Whether the domain is default or not.</p>
    #   @return [Boolean]
    class MailDomainSummary < Struct.new(
      :domain_name,
      :default_domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_domain] = false unless options.key?(:default_domain)
        super
      end
    end

    # <p>The details of a mailbox export job, including the user or resource ID associated
    #          with the mailbox and the S3 bucket that the mailbox contents are exported to.</p>
    # @!attribute job_id
    #   <p>The identifier of the mailbox export job.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path to the S3 bucket and file that the mailbox export job exports to.</p>
    #   @return [String]
    # @!attribute estimated_progress
    #   <p>The estimated progress of the mailbox export job, in percentage points.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The state of the mailbox export job.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The mailbox export job start timestamp.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The mailbox export job end timestamp.</p>
    #   @return [Time]
    class MailboxExportJob < Struct.new(
      :job_id,
      :entity_id,
      :description,
      :s3_bucket_name,
      :s3_path,
      :estimated_progress,
      :state,
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:estimated_progress] = 0 unless options.key?(:estimated_progress)
        super
      end
    end

    # <p>The representation of a user or group.</p>
    # @!attribute id
    #   <p>The identifier of the member.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the member.</p>
    #   @return [String]
    # @!attribute type
    #   <p>A member can be a user or group.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the member, which can be ENABLED, DISABLED, or DELETED.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date indicating when the member was enabled for WorkMail use.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date indicating when the member was disabled from WorkMail use.</p>
    #   @return [Time]
    class Member < Struct.new(
      :id,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The rule that a simulated user matches.</p>
    # @!attribute mobile_device_access_rule_id
    #   <p>Identifier of the rule that a simulated user matches.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a rule that a simulated user matches.</p>
    #   @return [String]
    class MobileDeviceAccessMatchedRule < Struct.new(
      :mobile_device_access_rule_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The override object.</p>
    # @!attribute user_id
    #   <p>The WorkMail user to which the access override applies.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device to which the override applies.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the override.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date the override was first created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date the override was last modified.</p>
    #   @return [Time]
    class MobileDeviceAccessOverride < Struct.new(
      :user_id,
      :device_id,
      :effect,
      :description,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that controls access to mobile devices for an WorkMail group.</p>
    # @!attribute mobile_device_access_rule_id
    #   <p>The ID assigned to a mobile access rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of a mobile access rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a mobile access rule.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>Device types that a rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_types
    #   <p>Device types that a rule <b>will not</b> match. All other device types will match.</p>
    #   @return [Array<String>]
    # @!attribute device_models
    #   <p>Device models that a rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_models
    #   <p>Device models that a rule <b>will not</b> match. All other device models will match.</p>
    #   @return [Array<String>]
    # @!attribute device_operating_systems
    #   <p>Device operating systems that a rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that a rule <b>will not</b> match. All other device types will match.</p>
    #   @return [Array<String>]
    # @!attribute device_user_agents
    #   <p>Device user agents that a rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_user_agents
    #   <p>Device user agents that a rule <b>will not</b> match. All other device user agents will match.</p>
    #   @return [Array<String>]
    # @!attribute date_created
    #   <p>The date and time at which an access rule was created.</p>
    #   @return [Time]
    # @!attribute date_modified
    #   <p>The date and time at which an access rule was modified.</p>
    #   @return [Time]
    class MobileDeviceAccessRule < Struct.new(
      :mobile_device_access_rule_id,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      :date_created,
      :date_modified,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user, group, or resource name isn't unique in WorkMail.</p>
    # @!attribute message
    #   @return [String]
    class NameAvailabilityException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation received a valid organization identifier that either doesn't belong or
    #          exist in the system.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The organization must have a valid state to perform certain
    #          operations on the organization or its members.</p>
    # @!attribute message
    #   @return [String]
    class OrganizationStateException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The representation of an organization.</p>
    # @!attribute organization_id
    #   <p>The identifier associated with the organization.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias associated with the organization.</p>
    #   @return [String]
    # @!attribute default_mail_domain
    #   <p>The default email domain associated with the organization.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message associated with the organization. It is only present if unexpected
    #            behavior has occurred with regards to the organization. It provides insight or solutions
    #            regarding unexpected behavior.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state associated with the organization.</p>
    #   @return [String]
    class OrganizationSummary < Struct.new(
      :organization_id,
      :alias,
      :default_mail_domain,
      :error_message,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Permission granted to a user, group, or resource to access a certain aspect of
    #          another user, group, or resource mailbox.</p>
    # @!attribute grantee_id
    #   <p>The identifier of the user, group, or resource to which the permissions are
    #            granted.</p>
    #   @return [String]
    # @!attribute grantee_type
    #   <p>The type of user, group, or resource referred to in GranteeId.</p>
    #   @return [String]
    # @!attribute permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    #   @return [Array<String>]
    class Permission < Struct.new(
      :grantee_id,
      :grantee_type,
      :permission_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          Displays the Personal Access Token status.
    #       </p>
    # @!attribute status
    #   <p>
    #            The status of the Personal Access Token allowed for the organization.
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>Active</i> - Mailbox users can login to the web application and choose <i>Settings</i> to see the new <i>Personal Access Tokens</i> page to 
    #               create and delete the Personal Access Tokens. Mailbox users can use the Personal Access Tokens to set up mailbox connection from desktop or mobile email clients.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Inactive</i> - Personal Access Tokens are disabled for your organization. Mailbox users can’t create, list, or delete Personal Access Tokens and can’t use them to connect to 
    #               their mailboxes from desktop or mobile email clients.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lifetime_in_days
    #   <p>
    #           The validity of the Personal Access Token status in days.
    #         </p>
    #   @return [Integer]
    class PersonalAccessTokenConfiguration < Struct.new(
      :status,
      :lifetime_in_days,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #          The summary of the Personal Access Token.
    #       </p>
    # @!attribute personal_access_token_id
    #   <p>
    #            The ID of the Personal Access Token.
    #            </p>
    #   @return [String]
    # @!attribute user_id
    #   <p>
    #            The user ID of the WorkMail user associated with the Personal Access Token.
    #         </p>
    #   @return [String]
    # @!attribute name
    #   <p>
    #            The name of the Personal Access Token.
    #         </p>
    #   @return [String]
    # @!attribute date_created
    #   <p>
    #            The date when the Personal Access Token was created.
    #         </p>
    #   @return [Time]
    # @!attribute date_last_used
    #   <p>
    #            The date when the Personal Access Token was last used.
    #         </p>
    #   @return [Time]
    # @!attribute expires_time
    #   <p>
    #            The date when the Personal Access Token will expire.
    #         </p>
    #   @return [Time]
    # @!attribute scopes
    #   <p>
    #            Lists all the Personal Access Token permissions for a mailbox.
    #         </p>
    #   @return [Array<String>]
    class PersonalAccessTokenSummary < Struct.new(
      :personal_access_token_id,
      :user_id,
      :name,
      :date_created,
      :date_last_used,
      :expires_time,
      :scopes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The rule name.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The rule effect.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The rule description.</p>
    #   @return [String]
    # @!attribute ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    #   @return [Array<String>]
    # @!attribute actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #   @return [Array<String>]
    # @!attribute not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #   @return [Array<String>]
    # @!attribute user_ids
    #   <p>User IDs to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    #   @return [Array<String>]
    # @!attribute organization_id
    #   <p>The identifier of the organization.</p>
    #   @return [String]
    # @!attribute impersonation_role_ids
    #   <p>Impersonation role IDs to include in the rule.</p>
    #   @return [Array<String>]
    # @!attribute not_impersonation_role_ids
    #   <p>Impersonation role IDs to exclude from the rule.</p>
    #   @return [Array<String>]
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
      :organization_id,
      :impersonation_role_ids,
      :not_impersonation_role_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutAccessControlRuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is set.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    #   @return [String]
    class PutEmailMonitoringConfigurationRequest < Struct.new(
      :organization_id,
      :role_arn,
      :log_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutEmailMonitoringConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>
    #            The ID of the WorkMail Organization. </p>
    #   @return [String]
    # @!attribute authentication_mode
    #   <p>
    #            The authentication mode used in WorkMail.</p>
    #   @return [String]
    # @!attribute identity_center_configuration
    #   <p>
    #            The details of the IAM Identity Center configuration.</p>
    #   @return [Types::IdentityCenterConfiguration]
    # @!attribute personal_access_token_configuration
    #   <p>
    #            The details of the Personal Access Token configuration. 
    #         </p>
    #   @return [Types::PersonalAccessTokenConfiguration]
    class PutIdentityProviderConfigurationRequest < Struct.new(
      :organization_id,
      :authentication_mode,
      :identity_center_configuration,
      :personal_access_token_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutIdentityProviderConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization that you are applying the DMARC policy to.</p>
    #   @return [String]
    # @!attribute enforced
    #   <p>Enforces or suspends a policy after it's applied.</p>
    #   @return [Boolean]
    class PutInboundDmarcSettingsRequest < Struct.new(
      :organization_id,
      :enforced,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutInboundDmarcSettingsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the user or resource for which to update mailbox
    #            permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute grantee_id
    #   <p>The identifier of the user, group, or resource to which to grant the
    #            permissions.</p>
    #            <p>The identifier can be <i>UserId, ResourceID, or Group Id</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>Grantee ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: grantee@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Grantee name: grantee</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    #   @return [Array<String>]
    class PutMailboxPermissionsRequest < Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id,
      :permission_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutMailboxPermissionsResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>Identifies the WorkMail organization for which you create the override.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The WorkMail user for which you create the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute device_id
    #   <p>The mobile device for which you create the override. <code>DeviceId</code> is case insensitive.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the override.</p>
    #   @return [String]
    class PutMobileDeviceAccessOverrideRequest < Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      :effect,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutMobileDeviceAccessOverrideResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The retention policy ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The retention policy name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The retention policy description.</p>
    #   @return [String]
    # @!attribute folder_configurations
    #   <p>The retention policy folder configurations.</p>
    #   @return [Array<Types::FolderConfiguration>]
    class PutRetentionPolicyRequest < Struct.new(
      :organization_id,
      :id,
      :name,
      :description,
      :folder_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutRetentionPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an EWS based availability provider when returned from the service. It does not
    #          contain the password of the endpoint.</p>
    # @!attribute ews_endpoint
    #   <p>The endpoint of the remote EWS server.</p>
    #   @return [String]
    # @!attribute ews_username
    #   <p>The username used to authenticate the remote EWS server.</p>
    #   @return [String]
    class RedactedEwsAvailabilityProvider < Struct.new(
      :ews_endpoint,
      :ews_username,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Idempotency token used when retrying requests.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The WorkMail organization under which you're creating the domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The name of the mail domain to create in WorkMail and SES.</p>
    #   @return [String]
    class RegisterMailDomainRequest < Struct.new(
      :client_token,
      :organization_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RegisterMailDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user, group, or resource
    #            exists.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier for the user, group, or resource to be updated.</p>
    #            <p>The identifier can accept <i>UserId, ResourceId, or GroupId</i>, or <i>Username, Resourcename, or Groupname</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute email
    #   <p>The email for the user, group, or resource to be updated.</p>
    #   @return [String]
    class RegisterToWorkMailRequest < Struct.new(
      :organization_id,
      :entity_id,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RegisterToWorkMailResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This user, group, or resource name is not allowed in WorkMail.</p>
    # @!attribute message
    #   @return [String]
    class ReservedNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization that contains the user for which the password is
    #            reset.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user for whom the password is reset.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The new password for the user.</p>
    #   @return [String]
    class ResetPasswordRequest < Struct.new(
      :organization_id,
      :user_id,
      :password,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ResetPasswordResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The representation of a resource.</p>
    # @!attribute id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the resource: equipment or room.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the resource, which can be ENABLED, DISABLED, or DELETED.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date indicating when the resource was enabled for WorkMail use.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date indicating when the resource was disabled from WorkMail use.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    class Resource < Struct.new(
      :id,
      :email,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The identifier associated with the organization.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #            <p>The identifier can accept <i>UserId or ResourceId</i>, <i>Username or Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789
    #               , or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the S3
    #            bucket.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The S3 bucket prefix.</p>
    #   @return [String]
    class StartMailboxExportJobRequest < Struct.new(
      :client_token,
      :organization_id,
      :entity_id,
      :description,
      :role_arn,
      :kms_key_arn,
      :s3_bucket_name,
      :s3_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job ID.</p>
    #   @return [String]
    class StartMailboxExportJobResponse < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag applied to a resource.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization where the availability provider will be tested.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain to which the provider applies. If this field is provided, a stored availability provider associated to this domain name will be tested.</p>
    #   @return [String]
    # @!attribute ews_provider
    #   <p>Describes an EWS based availability provider. This is only used as input to the service.</p>
    #   @return [Types::EwsAvailabilityProvider]
    # @!attribute lambda_provider
    #   <p>Describes a Lambda based availability provider.</p>
    #   @return [Types::LambdaAvailabilityProvider]
    class TestAvailabilityConfigurationRequest < Struct.new(
      :organization_id,
      :domain_name,
      :ews_provider,
      :lambda_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_passed
    #   <p>Boolean indicating whether the test passed or failed.</p>
    #   @return [Boolean]
    # @!attribute failure_reason
    #   <p>String containing the reason for a failed test if <code>TestPassed</code> is false.</p>
    #   @return [String]
    class TestAvailabilityConfigurationResponse < Struct.new(
      :test_passed,
      :failure_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:test_passed] = false unless options.key?(:test_passed)
        super
      end
    end

    # <p>The resource can have up to 50 user-applied tags.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can't perform a write operation against a read-only directory.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which the <code>AvailabilityConfiguration</code> will be
    #            updated.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain to which the provider applies the availability configuration.</p>
    #   @return [String]
    # @!attribute ews_provider
    #   <p>The EWS availability provider definition. The request must contain exactly one provider
    #            definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>. The previously
    #            stored provider will be overridden by the one provided.</p>
    #   @return [Types::EwsAvailabilityProvider]
    # @!attribute lambda_provider
    #   <p>The Lambda availability provider definition. The request must contain exactly one
    #            provider definition, either <code>EwsProvider</code> or <code>LambdaProvider</code>. The
    #            previously stored provider will be overridden by the one provided.</p>
    #   @return [Types::LambdaAvailabilityProvider]
    class UpdateAvailabilityConfigurationRequest < Struct.new(
      :organization_id,
      :domain_name,
      :ews_provider,
      :lambda_provider,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateAvailabilityConfigurationResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization for which to list domains.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name that will become the default domain.</p>
    #   @return [String]
    class UpdateDefaultMailDomainRequest < Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateDefaultMailDomainResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier for the group to be updated.</p>
    #            <p>The identifier can accept <i>GroupId</i>, <i>Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Group ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: group@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Group name: group</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If enabled, the group is hidden from the global address list.</p>
    #   @return [Boolean]
    class UpdateGroupRequest < Struct.new(
      :organization_id,
      :group_id,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateGroupResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization that contains the impersonation role to update.</p>
    #   @return [String]
    # @!attribute impersonation_role_id
    #   <p>The ID of the impersonation role to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated impersonation role name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The updated impersonation role type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated impersonation role description.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The updated list of rules.</p>
    #   @return [Array<Types::ImpersonationRule>]
    class UpdateImpersonationRoleRequest < Struct.new(
      :organization_id,
      :impersonation_role_id,
      :name,
      :type,
      :description,
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateImpersonationRoleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the user for whom to update the
    #            mailbox quota.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifer for the user for whom to update the mailbox quota.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute mailbox_quota
    #   <p>The updated mailbox quota, in MB, for the specified user.</p>
    #   @return [Integer]
    class UpdateMailboxQuotaRequest < Struct.new(
      :organization_id,
      :user_id,
      :mailbox_quota,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateMailboxQuotaResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The WorkMail organization under which the rule will be updated.</p>
    #   @return [String]
    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier of the rule to be updated.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated rule name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated rule description.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [String]
    # @!attribute device_types
    #   <p>Device types that the updated rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_types
    #   <p>Device types that the updated rule <b>will not</b> match. All other device types will match.</p>
    #   @return [Array<String>]
    # @!attribute device_models
    #   <p>Device models that the updated rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_models
    #   <p>Device models that the updated rule <b>will not</b> match. All other device models will match.</p>
    #   @return [Array<String>]
    # @!attribute device_operating_systems
    #   <p>Device operating systems that the updated rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that the updated rule <b>will not</b> match. All other device operating systems will match.</p>
    #   @return [Array<String>]
    # @!attribute device_user_agents
    #   <p>User agents that the updated rule will match.</p>
    #   @return [Array<String>]
    # @!attribute not_device_user_agents
    #   <p>User agents that the updated rule <b>will not</b> match. All other user agents will match.</p>
    #   @return [Array<String>]
    class UpdateMobileDeviceAccessRuleRequest < Struct.new(
      :organization_id,
      :mobile_device_access_rule_id,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateMobileDeviceAccessRuleResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the user, group, or resource to update.</p>
    #   @return [String]
    # @!attribute entity_id
    #   <p>The user, group, or resource to update.</p>
    #            <p>The identifier can accept <i>UseriD, ResourceId, or GroupId</i>, <i>Username, Resourcename, or Groupname</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Entity ID: 12345678-1234-1234-1234-123456789012, r-0123456789a0123456789b0123456789, or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: entity@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Entity name: entity</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute email
    #   <p>The value of the email to be updated as primary.</p>
    #   @return [String]
    class UpdatePrimaryEmailAddressRequest < Struct.new(
      :organization_id,
      :entity_id,
      :email,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdatePrimaryEmailAddressResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            updated.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource to be updated.</p>
    #            <p>The identifier can accept <i>ResourceId</i>, <i>Resourcename</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>Resource ID: r-0123456789a0123456789b0123456789</p>
    #               </li>
    #               <li>
    #                  <p>Email address: resource@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>Resource name: resource</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource to be updated.</p>
    #   @return [String]
    # @!attribute booking_options
    #   <p>The resource's booking options to be updated.</p>
    #   @return [Types::BookingOptions]
    # @!attribute description
    #   <p>Updates the resource description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Updates the resource type.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If enabled, the resource is hidden from the global address list.</p>
    #   @return [Boolean]
    class UpdateResourceRequest < Struct.new(
      :organization_id,
      :resource_id,
      :name,
      :booking_options,
      :description,
      :type,
      :hidden_from_global_address_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier for the user to be updated.</p>
    #            <p>The identifier can be the <i>UserId</i>, <i>Username</i>, or <i>email</i>. The following identity formats are available:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: 12345678-1234-1234-1234-123456789012 or S-1-1-12-1234567890-123456789-123456789-1234</p>
    #               </li>
    #               <li>
    #                  <p>Email address: user@domain.tld</p>
    #               </li>
    #               <li>
    #                  <p>User name: user</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute role
    #   <p>Updates the user role.</p>
    #            <p>You cannot pass <i>SYSTEM_USER</i> or <i>RESOURCE</i>.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Updates the display name of the user.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>Updates the user's first name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>Updates the user's last name.</p>
    #   @return [String]
    # @!attribute hidden_from_global_address_list
    #   <p>If enabled, the user is hidden from the global address list.</p>
    #   @return [Boolean]
    # @!attribute initials
    #   <p>Updates the user's initials.</p>
    #   @return [String]
    # @!attribute telephone
    #   <p>Updates the user's contact details.</p>
    #   @return [String]
    # @!attribute street
    #   <p>Updates the user's street address.</p>
    #   @return [String]
    # @!attribute job_title
    #   <p>Updates the user's job title.</p>
    #   @return [String]
    # @!attribute city
    #   <p>Updates the user's city.</p>
    #   @return [String]
    # @!attribute company
    #   <p>Updates the user's company.</p>
    #   @return [String]
    # @!attribute zip_code
    #   <p>Updates the user's zip code.</p>
    #   @return [String]
    # @!attribute department
    #   <p>Updates the user's department.</p>
    #   @return [String]
    # @!attribute country
    #   <p>Updates the user's country.</p>
    #   @return [String]
    # @!attribute office
    #   <p>Updates the user's office.</p>
    #   @return [String]
    # @!attribute identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :organization_id,
      :user_id,
      :role,
      :display_name,
      :first_name,
      :last_name,
      :hidden_from_global_address_list,
      :initials,
      :telephone,
      :street,
      :job_title,
      :city,
      :company,
      :zip_code,
      :department,
      :country,
      :office,
      :identity_provider_user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateUserResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The representation of an WorkMail user.</p>
    # @!attribute id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email of the user.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the user, which can be ENABLED, DISABLED, or DELETED.</p>
    #   @return [String]
    # @!attribute user_role
    #   <p>The role of the user.</p>
    #   @return [String]
    # @!attribute enabled_date
    #   <p>The date indicating when the user was enabled for WorkMail use.</p>
    #   @return [Time]
    # @!attribute disabled_date
    #   <p>The date indicating when the user was disabled from WorkMail use.</p>
    #   @return [Time]
    # @!attribute identity_provider_user_id
    #   <p>User ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    #   @return [String]
    # @!attribute identity_provider_identity_store_id
    #   <p>Identity store ID from the IAM Identity Center. If this parameter is empty it will be updated automatically when the user logs in for the first time to the mailbox associated with WorkMail.</p>
    #   @return [String]
    class User < Struct.new(
      :id,
      :email,
      :name,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date,
      :identity_provider_user_id,
      :identity_provider_identity_store_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
