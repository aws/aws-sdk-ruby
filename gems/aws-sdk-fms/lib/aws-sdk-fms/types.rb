# frozen_string_literal: true

# This is generated code!

module Aws::FMS
  # This module contains the types returned by client operations.
  module Types

    # <p>Configures the accounts within the administrator's Organizations organization that the specified Firewall Manager administrator can apply policies to.</p>
    # @!attribute accounts
    #   <p>The list of accounts within the organization that the specified Firewall Manager administrator either can or cannot apply policies to, based on the value of <code>ExcludeSpecifiedAccounts</code>. If <code>ExcludeSpecifiedAccounts</code> is set to <code>true</code>, then the Firewall Manager administrator can apply policies to all members of the organization except for the accounts in this list. If <code>ExcludeSpecifiedAccounts</code> is set to <code>false</code>, then the Firewall Manager administrator can only apply policies to the accounts in this list.</p>
    #   @return [Array<String>]
    # @!attribute all_accounts_enabled
    #   <p>A boolean value that indicates if the administrator can apply policies to all accounts within an organization. If true, the administrator can apply policies to all accounts within the organization. You can either enable management of all accounts through this operation, or you can specify a list of accounts to manage in <code>AccountScope$Accounts</code>. You cannot specify both.</p>
    #   @return [Boolean]
    # @!attribute exclude_specified_accounts
    #   <p>A boolean value that excludes the accounts in <code>AccountScope$Accounts</code> from the administrator's scope. If true, the Firewall Manager administrator can apply policies to all members of the organization except for the accounts listed in <code>AccountScope$Accounts</code>. You can either specify a list of accounts to exclude by <code>AccountScope$Accounts</code>, or you can enable management of all accounts by <code>AccountScope$AllAccountsEnabled</code>. You cannot specify both.</p>
    #   @return [Boolean]
    class AccountScope < Struct.new(
      nil,
      :accounts,
      :all_accounts_enabled,
      :exclude_specified_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_accounts_enabled] = false unless options.key?(:all_accounts_enabled)
        options[:exclude_specified_accounts] = false unless options.key?(:exclude_specified_accounts)
        super
      end
    end

    # <p>Describes a remediation action target.</p>
    # @!attribute resource_id
    #   <p>The ID of the remediation target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the remediation action target.</p>
    #   @return [String]
    class ActionTarget < Struct.new(
      nil,
      :resource_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains high level information about the Firewall Manager administrator account.</p>
    # @!attribute admin_account
    #   <p>The Amazon Web Services account ID of the Firewall Manager administrator's account.</p>
    #   @return [String]
    # @!attribute default_admin
    #   <p>A boolean value that indicates if the administrator is the default administrator. If true, then this is the default administrator account. The default administrator can manage third-party firewalls and has full administrative scope. There is only one default administrator account per organization. For information about Firewall Manager default administrator accounts, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-administrators.html">Managing Firewall Manager administrators</a> in the <i>Firewall Manager Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The current status of the request to onboard a member account as an Firewall Manager administrator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING</code> - The account is onboarding to Firewall Manager as an administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING_COMPLETE</code> - Firewall Manager The account is onboarded to Firewall Manager as an administrator, and can perform actions on the resources defined in their <a>AdminScope</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING</code> - The account is being removed as an Firewall Manager administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING_COMPLETE</code> - The account has been removed as an Firewall Manager administrator.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AdminAccountSummary < Struct.new(
      nil,
      :admin_account,
      :default_admin,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:default_admin] = false unless options.key?(:default_admin)
        super
      end
    end

    # <p>Defines the resources that the Firewall Manager administrator can manage. For more information about administrative scope, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-administrators.html">Managing Firewall Manager administrators</a> in the <i>Firewall Manager Developer Guide</i>.</p>
    # @!attribute account_scope
    #   <p>Defines the accounts that the specified Firewall Manager administrator can apply policies to.</p>
    #   @return [Types::AccountScope]
    # @!attribute organizational_unit_scope
    #   <p>Defines the Organizations organizational units that the specified Firewall Manager administrator can apply policies to. For more information about OUs in Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing organizational units (OUs)
    #   </a> in the <i>Organizations User Guide</i>.</p>
    #   @return [Types::OrganizationalUnitScope]
    # @!attribute region_scope
    #   <p>Defines the Amazon Web Services Regions that the specified Firewall Manager administrator can perform actions in.</p>
    #   @return [Types::RegionScope]
    # @!attribute policy_type_scope
    #   <p>Defines the Firewall Manager policy types that the specified Firewall Manager administrator can create and manage.</p>
    #   @return [Types::PolicyTypeScope]
    class AdminScope < Struct.new(
      nil,
      :account_scope,
      :organizational_unit_scope,
      :region_scope,
      :policy_type_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual Firewall Manager application.</p>
    # @!attribute app_name
    #   <p>The application's name.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The IP protocol name or number. The name can be one of <code>tcp</code>, <code>udp</code>, or <code>icmp</code>. For information on possible numbers, see <a href="https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml">Protocol Numbers</a>.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The application's port number, for example <code>80</code>.</p>
    #   @return [Integer]
    class App < Struct.new(
      nil,
      :app_name,
      :protocol,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Firewall Manager applications list.</p>
    # @!attribute list_id
    #   <p>The ID of the Firewall Manager applications list.</p>
    #   @return [String]
    # @!attribute list_name
    #   <p>The name of the Firewall Manager applications list.</p>
    #   @return [String]
    # @!attribute list_update_token
    #   <p>A unique identifier for each update to the list. When you update
    #           the list, the update token must match the token of the current version of the application list.
    #           You can retrieve the update token by getting the list. </p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the Firewall Manager applications list was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time that the Firewall Manager applications list was last updated.</p>
    #   @return [Time]
    # @!attribute apps_list
    #   <p>An array of applications in the Firewall Manager applications list.</p>
    #   @return [Array<Types::App>]
    # @!attribute previous_apps_list
    #   <p>A map of previous version numbers to their corresponding <code>App</code> object arrays.</p>
    #   @return [Hash<String, Array<Types::App>>]
    class AppsListData < Struct.new(
      nil,
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :apps_list,
      :previous_apps_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Firewall Manager applications list.</p>
    # @!attribute list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #   @return [String]
    # @!attribute list_id
    #   <p>The ID of the applications list.</p>
    #   @return [String]
    # @!attribute list_name
    #   <p>The name of the applications list.</p>
    #   @return [String]
    # @!attribute apps_list
    #   <p>An array of <code>App</code> objects in the Firewall Manager applications list.</p>
    #   @return [Array<Types::App>]
    class AppsListDataSummary < Struct.new(
      nil,
      :list_arn,
      :list_id,
      :list_name,
      :apps_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account
    #   <p>The Amazon Web Services account ID to associate with Firewall Manager as the Firewall Manager
    #         default administrator account. This account must be
    #         a member account of the organization in Organizations whose resources you want to protect.
    #           For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.  </p>
    #   @return [String]
    class AssociateAdminAccountRequest < Struct.new(
      nil,
      :admin_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #   @return [String]
    class AssociateThirdPartyFirewallRequest < Struct.new(
      nil,
      :third_party_firewall,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for setting a Firewall Manager policy administrator's account as an administrator of the third-party firewall tenant.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateThirdPartyFirewallResponse < Struct.new(
      nil,
      :third_party_firewall_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for an EC2 instance resource.</p>
    # @!attribute violation_target
    #   <p>The resource ID of the EC2 instance.</p>
    #   @return [String]
    # @!attribute aws_ec2_network_interface_violations
    #   <p>Violation detail for network interfaces associated with the EC2 instance.</p>
    #   @return [Array<Types::AwsEc2NetworkInterfaceViolation>]
    class AwsEc2InstanceViolation < Struct.new(
      nil,
      :violation_target,
      :aws_ec2_network_interface_violations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for network interfaces associated with an EC2 instance.</p>
    # @!attribute violation_target
    #   <p>The resource ID of the network interface.</p>
    #   @return [String]
    # @!attribute violating_security_groups
    #   <p>List of security groups that violate the rules specified in the primary security group of the Firewall Manager policy.</p>
    #   @return [Array<String>]
    class AwsEc2NetworkInterfaceViolation < Struct.new(
      nil,
      :violation_target,
      :violating_security_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for the rule violation in a security group when compared to the primary security group of the Firewall Manager policy.</p>
    # @!attribute violation_target
    #   <p>The security group rule that is being evaluated.</p>
    #   @return [String]
    # @!attribute violation_target_description
    #   <p>A description of the security group that violates the policy.</p>
    #   @return [String]
    # @!attribute partial_matches
    #   <p>List of rules specified in the security group of the Firewall Manager policy that partially match the <code>ViolationTarget</code> rule.</p>
    #   @return [Array<Types::PartialMatch>]
    # @!attribute possible_security_group_remediation_actions
    #   <p>Remediation options for the rule specified in the <code>ViolationTarget</code>.</p>
    #   @return [Array<Types::SecurityGroupRemediationAction>]
    class AwsVPCSecurityGroupViolation < Struct.new(
      nil,
      :violation_target,
      :violation_target_description,
      :partial_matches,
      :possible_security_group_remediation_actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The uniform resource identifiers (URIs) of resources that should be associated to the resource set. The URIs must be Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    class BatchAssociateResourceRequest < Struct.new(
      nil,
      :resource_set_identifier,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>The resources that failed to associate to the resource set.</p>
    #   @return [Array<Types::FailedItem>]
    class BatchAssociateResourceResponse < Struct.new(
      nil,
      :resource_set_identifier,
      :failed_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The uniform resource identifiers (URI) of resources that should be disassociated from the resource set. The URIs must be Amazon Resource Names (ARNs).</p>
    #   @return [Array<String>]
    class BatchDisassociateResourceRequest < Struct.new(
      nil,
      :resource_set_identifier,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set_identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    # @!attribute failed_items
    #   <p>The resources that failed to disassociate from the resource set.</p>
    #   @return [Array<Types::FailedItem>]
    class BatchDisassociateResourceResponse < Struct.new(
      nil,
      :resource_set_identifier,
      :failed_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the resource that is not protected by the policy.</p>
    # @!attribute resource_id
    #   <p>The resource ID.</p>
    #   @return [String]
    # @!attribute violation_reason
    #   <p>The reason that the resource is not protected by the policy.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>. For example:
    #           <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>,
    #           <code>AWS::CloudFront::Distribution</code>, or
    #           <code>AWS::NetworkFirewall::FirewallPolicy</code>.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata about the resource that doesn't comply with the policy scope.</p>
    #   @return [Hash<String, String>]
    class ComplianceViolator < Struct.new(
      nil,
      :resource_id,
      :violation_reason,
      :resource_type,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the <code>CreateNetworkAcl</code> action in Amazon EC2. This is a remediation option in <code>RemediationAction</code>.</p>
    # @!attribute description
    #   <p>Brief description of this remediation action. </p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The VPC that's associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute fms_can_remediate
    #   <p>Indicates whether it is possible for Firewall Manager to perform this remediation action. A false value indicates that auto remediation is disabled or Firewall Manager is unable to perform the action due to a conflict of some kind.</p>
    #   @return [Boolean]
    class CreateNetworkAclAction < Struct.new(
      nil,
      :description,
      :vpc,
      :fms_can_remediate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fms_can_remediate] = false unless options.key?(:fms_can_remediate)
        super
      end
    end

    # <p>Information about the <code>CreateNetworkAclEntries</code> action in Amazon EC2. This is a remediation option in <code>RemediationAction</code>.</p>
    # @!attribute description
    #   <p>Brief description of this remediation action. </p>
    #   @return [String]
    # @!attribute network_acl_id
    #   <p>The network ACL that's associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute network_acl_entries_to_be_created
    #   <p>Lists the entries that the remediation action would create.</p>
    #   @return [Array<Types::EntryDescription>]
    # @!attribute fms_can_remediate
    #   <p>Indicates whether it is possible for Firewall Manager to perform this remediation action. A false value indicates that auto remediation is disabled or Firewall Manager is unable to perform the action due to a conflict of some kind.</p>
    #   @return [Boolean]
    class CreateNetworkAclEntriesAction < Struct.new(
      nil,
      :description,
      :network_acl_id,
      :network_acl_entries_to_be_created,
      :fms_can_remediate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fms_can_remediate] = false unless options.key?(:fms_can_remediate)
        super
      end
    end

    # @!attribute list_id
    #   <p>The ID of the applications list that you want to delete. You can retrieve this ID from
    #         <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>
    #   @return [String]
    class DeleteAppsListRequest < Struct.new(
      nil,
      :list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the <code>DeleteNetworkAclEntries</code> action in Amazon EC2. This is a remediation option in <code>RemediationAction</code>. </p>
    # @!attribute description
    #   <p>Brief description of this remediation action. </p>
    #   @return [String]
    # @!attribute network_acl_id
    #   <p>The network ACL that's associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute network_acl_entries_to_be_deleted
    #   <p>Lists the entries that the remediation action would delete.</p>
    #   @return [Array<Types::EntryDescription>]
    # @!attribute fms_can_remediate
    #   <p>Indicates whether it is possible for Firewall Manager to perform this remediation action. A false value indicates that auto remediation is disabled or Firewall Manager is unable to perform the action due to a conflict of some kind.</p>
    #   @return [Boolean]
    class DeleteNetworkAclEntriesAction < Struct.new(
      nil,
      :description,
      :network_acl_id,
      :network_acl_entries_to_be_deleted,
      :fms_can_remediate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fms_can_remediate] = false unless options.key?(:fms_can_remediate)
        super
      end
    end

    class DeleteNotificationChannelRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy that you want to delete. You can retrieve this ID from
    #           <code>PutPolicy</code> and <code>ListPolicies</code>.</p>
    #   @return [String]
    # @!attribute delete_all_policy_resources
    #   <p>If <code>True</code>, the request performs cleanup according to the policy type. </p>
    #            <p>For WAF and Shield Advanced policies, the cleanup does the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Deletes rule groups created by Firewall Manager</p>
    #               </li>
    #               <li>
    #                  <p>Removes web ACLs from in-scope resources</p>
    #               </li>
    #               <li>
    #                  <p>Deletes web ACLs that contain no rules or rule groups</p>
    #               </li>
    #            </ul>
    #            <p>For security group policies, the cleanup does the following for each security group in
    #         the policy:</p>
    #            <ul>
    #               <li>
    #                  <p>Disassociates the security group from in-scope resources </p>
    #               </li>
    #               <li>
    #                  <p>Deletes the security group if it was created through Firewall Manager and if it's
    #             no longer associated with any resources through another policy</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>For security group common policies, even if set to <code>False</code>, Firewall Manager deletes all security groups created by Firewall Manager that aren't associated with any other resources through another policy.</p>
    #            </note>
    #            <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy.
    #         Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you
    #         create and accounts that you associate with the policy. When creating the policy, if you
    #         specify that only resources in specific accounts or with specific tags are in scope of the
    #         policy, those accounts and resources are handled by the policy. All others are out of scope.
    #         If you don't specify tags or accounts, all resources are in scope. </p>
    #   @return [Boolean]
    class DeletePolicyRequest < Struct.new(
      nil,
      :policy_id,
      :delete_all_policy_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the protocols list that you want to delete. You can retrieve this ID from
    #         <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>
    #   @return [String]
    class DeleteProtocolsListRequest < Struct.new(
      nil,
      :list_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    class DeleteResourceSetRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAdminAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #   @return [String]
    class DisassociateThirdPartyFirewallRequest < Struct.new(
      nil,
      :third_party_firewall,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for the disassociation of a Firewall Manager administrators account with a third-party firewall.</p>
    #   @return [String]
    class DisassociateThirdPartyFirewallResponse < Struct.new(
      nil,
      :third_party_firewall_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource in the organization that's available to be associated with a Firewall Manager resource set.</p>
    # @!attribute uri
    #   <p>The universal resource identifier (URI) of the discovered resource.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID associated with the discovered resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the discovered resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the discovered resource.</p>
    #   @return [String]
    class DiscoveredResource < Struct.new(
      nil,
      :uri,
      :account_id,
      :type,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A DNS Firewall rule group that Firewall Manager
    #        tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #   @return [String]
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the rule group and VPC.</p>
    #   @return [String]
    class DnsDuplicateRuleGroupViolation < Struct.new(
      nil,
      :violation_target,
      :violation_target_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC that Firewall Manager was applying a DNS Fireall policy to reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed due to the limit. </p>
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #   @return [String]
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the rule group and VPC.</p>
    #   @return [String]
    # @!attribute number_of_rule_groups_already_associated
    #   <p>The number of rule groups currently associated with the VPC.  </p>
    #   @return [Integer]
    class DnsRuleGroupLimitExceededViolation < Struct.new(
      nil,
      :violation_target,
      :violation_target_description,
      :number_of_rule_groups_already_associated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_rule_groups_already_associated] = 0 unless options.key?(:number_of_rule_groups_already_associated)
        super
      end
    end

    # <p>A rule group that Firewall Manager
    #        tried to associate with a VPC has the same priority as a rule group that's already associated. </p>
    # @!attribute violation_target
    #   <p>Information about the VPC ID. </p>
    #   @return [String]
    # @!attribute violation_target_description
    #   <p>A description of the violation that specifies the VPC and the rule group that's already associated with it.</p>
    #   @return [String]
    # @!attribute conflicting_priority
    #   <p>The priority setting of the two conflicting rule groups.</p>
    #   @return [Integer]
    # @!attribute conflicting_policy_id
    #   <p>The ID of the Firewall Manager DNS Firewall policy that was already applied to the VPC.
    #          This policy contains the rule group that's already associated with the VPC. </p>
    #   @return [String]
    # @!attribute unavailable_priorities
    #   <p>The priorities of rule groups that are already associated with the VPC. To retry your operation,
    #          choose priority settings that aren't in this list for the rule groups in your new DNS Firewall policy. </p>
    #   @return [Array<Integer>]
    class DnsRuleGroupPriorityConflictViolation < Struct.new(
      nil,
      :violation_target,
      :violation_target_description,
      :conflicting_priority,
      :conflicting_policy_id,
      :unavailable_priorities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:conflicting_priority] = 0 unless options.key?(:conflicting_priority)
        super
      end
    end

    # <p>The action of associating an EC2 resource, such as a subnet or internet gateway, with a route table.</p>
    # @!attribute description
    #   <p>A description of the EC2 route table that is associated with the remediation action.</p>
    #   @return [String]
    # @!attribute route_table_id
    #   <p>The ID of the EC2 route table that is associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute subnet_id
    #   <p>The ID of the subnet for the EC2 route table that is associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute gateway_id
    #   <p>The ID of the gateway to be used with the EC2 route table that is associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    class EC2AssociateRouteTableAction < Struct.new(
      nil,
      :description,
      :route_table_id,
      :subnet_id,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action that copies the EC2 route table for use in remediation.</p>
    # @!attribute description
    #   <p>A description of the copied EC2 route table that is associated with the remediation action.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the copied EC2 route table that is associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute route_table_id
    #   <p>The ID of the copied EC2 route table that is associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    class EC2CopyRouteTableAction < Struct.new(
      nil,
      :description,
      :vpc_id,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the CreateRoute action in Amazon EC2.</p>
    # @!attribute description
    #   <p>A description of CreateRoute action in Amazon EC2.</p>
    #   @return [String]
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR address block used for the destination match.</p>
    #   @return [String]
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of a prefix list used for the destination match.</p>
    #   @return [String]
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR block destination.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>Information about the ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.</p>
    #   @return [Types::ActionTarget]
    # @!attribute gateway_id
    #   <p>Information about the ID of an internet gateway or virtual private gateway attached to your VPC.</p>
    #   @return [Types::ActionTarget]
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table for the route.</p>
    #   @return [Types::ActionTarget]
    class EC2CreateRouteAction < Struct.new(
      nil,
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :vpc_endpoint_id,
      :gateway_id,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the CreateRouteTable action in Amazon EC2.</p>
    # @!attribute description
    #   <p>A description of the CreateRouteTable action.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>Information about the ID of a VPC.</p>
    #   @return [Types::ActionTarget]
    class EC2CreateRouteTableAction < Struct.new(
      nil,
      :description,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the DeleteRoute action in Amazon EC2.</p>
    # @!attribute description
    #   <p>A description of the DeleteRoute action.</p>
    #   @return [String]
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>
    #   @return [String]
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #   @return [String]
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.</p>
    #   @return [String]
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table.</p>
    #   @return [Types::ActionTarget]
    class EC2DeleteRouteAction < Struct.new(
      nil,
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the ReplaceRoute action in Amazon EC2.</p>
    # @!attribute description
    #   <p>A description of the ReplaceRoute action in Amazon EC2.</p>
    #   @return [String]
    # @!attribute destination_cidr_block
    #   <p>Information about the IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>
    #   @return [String]
    # @!attribute destination_prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #   @return [String]
    # @!attribute destination_ipv6_cidr_block
    #   <p>Information about the IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>Information about the ID of an internet gateway or virtual private gateway.</p>
    #   @return [Types::ActionTarget]
    # @!attribute route_table_id
    #   <p>Information about the ID of the route table.</p>
    #   @return [Types::ActionTarget]
    class EC2ReplaceRouteAction < Struct.new(
      nil,
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv6_cidr_block,
      :gateway_id,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the ReplaceRouteTableAssociation action in Amazon EC2.</p>
    # @!attribute description
    #   <p>A description of the ReplaceRouteTableAssociation action in Amazon EC2.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>Information about the association ID.</p>
    #   @return [Types::ActionTarget]
    # @!attribute route_table_id
    #   <p>Information about the ID of the new route table to associate with the subnet.</p>
    #   @return [Types::ActionTarget]
    class EC2ReplaceRouteTableAssociationAction < Struct.new(
      nil,
      :description,
      :association_id,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single rule in a network ACL.</p>
    # @!attribute entry_detail
    #   <p>Describes a rule in a network ACL.</p>
    #            <p>Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining
    #   whether a packet should be allowed in or out of a subnet associated with the network ACL, Amazon Web Services processes the
    #          entries in the network ACL according to the rule numbers, in ascending order. </p>
    #            <p>When you manage an individual network ACL, you explicitly specify the rule numbers. When you specify the network ACL rules in a Firewall Manager policy, 
    #      you provide the rules to run first, in the order that you want them to run, and the rules to run last, in the order 
    #          that you want them to run. Firewall Manager assigns the rule numbers for you when you save the network ACL policy specification.</p>
    #   @return [Types::NetworkAclEntry]
    # @!attribute entry_rule_number
    #   <p>The rule number for the entry. ACL entries are processed in ascending order by rule number. In a Firewall Manager network ACL policy, Firewall Manager 
    #      assigns rule numbers. </p>
    #   @return [Integer]
    # @!attribute entry_type
    #   <p>Specifies whether the entry is managed by Firewall Manager or by a user, and, for Firewall Manager-managed entries, specifies whether the entry 
    #              is among those that run first in the network ACL or those that run last. </p>
    #   @return [String]
    class EntryDescription < Struct.new(
      nil,
      :entry_detail,
      :entry_rule_number,
      :entry_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:entry_rule_number] = 0 unless options.key?(:entry_rule_number)
        super
      end
    end

    # <p>Detailed information about an entry violation in a network ACL. The violation is against the network ACL specification inside the
    #            Firewall Manager network ACL policy. This data object is part of <code>InvalidNetworkAclEntriesViolation</code>.</p>
    # @!attribute expected_entry
    #   <p>The Firewall Manager-managed network ACL entry that is involved in the entry violation. </p>
    #   @return [Types::EntryDescription]
    # @!attribute expected_evaluation_order
    #   <p>The evaluation location within the ordered list of entries where the <code>ExpectedEntry</code> should be, according to the network ACL policy specifications. </p>
    #   @return [String]
    # @!attribute actual_evaluation_order
    #   <p>The evaluation location within the ordered list of entries where the <code>ExpectedEntry</code> is currently located. </p>
    #   @return [String]
    # @!attribute entry_at_expected_evaluation_order
    #   <p>The entry that's currently in the <code>ExpectedEvaluationOrder</code> location, in place of the expected entry. </p>
    #   @return [Types::EntryDescription]
    # @!attribute entries_with_conflicts
    #   <p>The list of entries that are in conflict with <code>ExpectedEntry</code>. </p>
    #   @return [Array<Types::EntryDescription>]
    # @!attribute entry_violation_reasons
    #   <p>Descriptions of the violations that Firewall Manager found for these entries. </p>
    #   @return [Array<String>]
    class EntryViolation < Struct.new(
      nil,
      :expected_entry,
      :expected_evaluation_order,
      :actual_evaluation_order,
      :entry_at_expected_evaluation_order,
      :entries_with_conflicts,
      :entry_violation_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the compliance status for the account. An account is considered noncompliant if
    #       it includes resources that are not protected by the specified policy or that don't comply with
    #       the policy.</p>
    # @!attribute compliance_status
    #   <p>Describes an Amazon Web Services account's compliance with the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute violator_count
    #   <p>The number of resources that are noncompliant with the specified policy. For WAF and
    #         Shield Advanced policies, a resource is considered noncompliant if it is not associated with
    #         the policy. For security group policies, a resource is considered noncompliant if it doesn't
    #         comply with the rules of the policy and remediation is disabled or not possible.</p>
    #   @return [Integer]
    # @!attribute evaluation_limit_exceeded
    #   <p>Indicates that over 100 resources are noncompliant with the Firewall Manager
    #         policy.</p>
    #   @return [Boolean]
    class EvaluationResult < Struct.new(
      nil,
      :compliance_status,
      :violator_count,
      :evaluation_limit_exceeded,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:violator_count] = 0 unless options.key?(:violator_count)
        options[:evaluation_limit_exceeded] = false unless options.key?(:evaluation_limit_exceeded)
        super
      end
    end

    # <p>Information about the expected route in the route table.</p>
    # @!attribute ip_v4_cidr
    #   <p>Information about the IPv4 CIDR block.</p>
    #   @return [String]
    # @!attribute prefix_list_id
    #   <p>Information about the ID of the prefix list for the route.</p>
    #   @return [String]
    # @!attribute ip_v6_cidr
    #   <p>Information about the IPv6 CIDR block.</p>
    #   @return [String]
    # @!attribute contributing_subnets
    #   <p>Information about the contributing subnets.</p>
    #   @return [Array<String>]
    # @!attribute allowed_targets
    #   <p>Information about the allowed targets.</p>
    #   @return [Array<String>]
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #   @return [String]
    class ExpectedRoute < Struct.new(
      nil,
      :ip_v4_cidr,
      :prefix_list_id,
      :ip_v6_cidr,
      :contributing_subnets,
      :allowed_targets,
      :route_table_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the actions that you can take to remediate scope violations
    #          caused by your policy's <code>FirewallCreationConfig</code>.
    #             <code>FirewallCreationConfig</code> is an optional configuration that you can use to
    #          choose which Availability Zones Firewall Manager creates Network Firewall endpoints in.</p>
    # @!attribute description
    #   <p>Describes the remedial action.</p>
    #   @return [String]
    # @!attribute firewall_creation_config
    #   <p>A <code>FirewallCreationConfig</code> that you can copy into your current policy's
    #               <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_SecurityServicePolicyData.html">SecurityServiceData</a> in order to remedy scope violations.</p>
    #   @return [String]
    class FMSPolicyUpdateFirewallCreationConfigAction < Struct.new(
      nil,
      :description,
      :firewall_creation_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a resource that failed when trying to update it's association to a resource set.</p>
    # @!attribute uri
    #   <p>The univeral resource indicator (URI) of the resource that failed.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the resource's association could not be updated.</p>
    #   @return [String]
    class FailedItem < Struct.new(
      nil,
      :uri,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the firewall subnet that violates the policy scope.</p>
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall subnet that violates the policy scope.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the firewall subnet that violates the policy scope.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone of the firewall subnet that violates the policy scope.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone_id
    #   <p>The Availability Zone ID of the firewall subnet that violates the policy scope.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The VPC endpoint ID of the firewall subnet that violates the policy scope.</p>
    #   @return [String]
    class FirewallSubnetIsOutOfScopeViolation < Struct.new(
      nil,
      :firewall_subnet_id,
      :vpc_id,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details for a firewall subnet's VPC endpoint that's deleted or missing.</p>
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall that this VPC endpoint is associated with.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The resource ID of the VPC associated with the deleted VPC subnet.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The name of the Availability Zone of the deleted VPC subnet.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone_id
    #   <p>The ID of the Availability Zone of the deleted VPC subnet.</p>
    #   @return [String]
    class FirewallSubnetMissingVPCEndpointViolation < Struct.new(
      nil,
      :firewall_subnet_id,
      :vpc_id,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAdminAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account
    #   <p>The account that is set as the Firewall Manager default administrator.</p>
    #   @return [String]
    # @!attribute role_status
    #   <p>The status of the account that you set as the Firewall Manager
    #         default administrator.</p>
    #   @return [String]
    class GetAdminAccountResponse < Struct.new(
      nil,
      :admin_account,
      :role_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account
    #   <p>The administrator account that you want to get the details for.</p>
    #   @return [String]
    class GetAdminScopeRequest < Struct.new(
      nil,
      :admin_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_scope
    #   <p>Contains details about the administrative scope of the requested account.</p>
    #   @return [Types::AdminScope]
    # @!attribute status
    #   <p>The current status of the request to onboard a member account as an Firewall Manager administrator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING</code> - The account is onboarding to Firewall Manager as an administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING_COMPLETE</code> - Firewall Manager The account is onboarded to Firewall Manager as an administrator, and can perform actions on the resources defined in their <a>AdminScope</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING</code> - The account is being removed as an Firewall Manager administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING_COMPLETE</code> - The account has been removed as an Firewall Manager administrator.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetAdminScopeResponse < Struct.new(
      nil,
      :admin_scope,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the Firewall Manager applications list that you want the details for.</p>
    #   @return [String]
    # @!attribute default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #   @return [Boolean]
    class GetAppsListRequest < Struct.new(
      nil,
      :list_id,
      :default_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps_list
    #   <p>Information about the specified Firewall Manager applications list.</p>
    #   @return [Types::AppsListData]
    # @!attribute apps_list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #   @return [String]
    class GetAppsListResponse < Struct.new(
      nil,
      :apps_list,
      :apps_list_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is
    #         returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
    #   @return [String]
    # @!attribute member_account
    #   <p>The Amazon Web Services account that owns the resources that you want to get the details for.</p>
    #   @return [String]
    class GetComplianceDetailRequest < Struct.new(
      nil,
      :policy_id,
      :member_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_compliance_detail
    #   <p>Information about the resources and the policy that you specified in the
    #           <code>GetComplianceDetail</code> request.</p>
    #   @return [Types::PolicyComplianceDetail]
    class GetComplianceDetailResponse < Struct.new(
      nil,
      :policy_compliance_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetNotificationChannelRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sns_topic_arn
    #   <p>The SNS topic that records Firewall Manager activity. </p>
    #   @return [String]
    # @!attribute sns_role_name
    #   <p>The IAM role that is used by Firewall Manager to record activity to SNS.</p>
    #   @return [String]
    class GetNotificationChannelResponse < Struct.new(
      nil,
      :sns_topic_arn,
      :sns_role_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      nil,
      :policy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>Information about the specified Firewall Manager policy.</p>
    #   @return [Types::Policy]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the specified policy.</p>
    #   @return [String]
    class GetPolicyResponse < Struct.new(
      nil,
      :policy,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the policy for which you want to get the attack information.</p>
    #   @return [String]
    # @!attribute member_account_id
    #   <p>The Amazon Web Services account that is in scope of the policy that you want to get the details
    #            for.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #             request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #            request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify
    #            for <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of
    #            objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code>
    #            from the previous response to get information about another batch of objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of objects that you want Firewall Manager to return for this request. If you have more
    #           objects than the number that you specify for <code>MaxResults</code>, the response includes a
    #            <code>NextToken</code> value that you can use to get another batch of objects.</p>
    #   @return [Integer]
    class GetProtectionStatusRequest < Struct.new(
      nil,
      :policy_id,
      :member_account_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_id
    #   <p>The ID of the Firewall Manager administrator account for this policy.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>The service type that is protected by the policy. Currently, this is always
    #               <code>SHIELD_ADVANCED</code>.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Details about the attack, including the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Attack type</p>
    #               </li>
    #               <li>
    #                  <p>Account ID</p>
    #               </li>
    #               <li>
    #                  <p>ARN of the resource attacked</p>
    #               </li>
    #               <li>
    #                  <p>Start time of the attack</p>
    #               </li>
    #               <li>
    #                  <p>End time of the attack (ongoing attacks will not have an end time)</p>
    #               </li>
    #            </ul>
    #            <p>The details are in JSON format. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you have more objects than the number that you specified for <code>MaxResults</code> in the request,
    #            the response includes a <code>NextToken</code> value. To list more objects, submit another
    #            <code>GetProtectionStatus</code> request, and specify the <code>NextToken</code> value from the response in the
    #            <code>NextToken</code> value in the next request.</p>
    #            <p>Amazon Web Services SDKs provide auto-pagination that identify <code>NextToken</code> in a response and
    #            make subsequent request calls automatically on your behalf. However, this feature is not
    #            supported by <code>GetProtectionStatus</code>. You must submit subsequent requests with
    #               <code>NextToken</code> using your own processes. </p>
    #   @return [String]
    class GetProtectionStatusResponse < Struct.new(
      nil,
      :admin_account_id,
      :service_type,
      :data,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute list_id
    #   <p>The ID of the Firewall Manager protocols list that you want the details for.</p>
    #   @return [String]
    # @!attribute default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #   @return [Boolean]
    class GetProtocolsListRequest < Struct.new(
      nil,
      :list_id,
      :default_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocols_list
    #   <p>Information about the specified Firewall Manager protocols list.</p>
    #   @return [Types::ProtocolsListData]
    # @!attribute protocols_list_arn
    #   <p>The Amazon Resource Name (ARN) of the specified protocols list.</p>
    #   @return [String]
    class GetProtocolsListResponse < Struct.new(
      nil,
      :protocols_list,
      :protocols_list_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    class GetResourceSetRequest < Struct.new(
      nil,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set
    #   <p>Information about the specified resource set.</p>
    #   @return [Types::ResourceSet]
    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) of the resource set.</p>
    #   @return [String]
    class GetResourceSetResponse < Struct.new(
      nil,
      :resource_set,
      :resource_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #   @return [String]
    class GetThirdPartyFirewallAssociationStatusRequest < Struct.new(
      nil,
      :third_party_firewall,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall_status
    #   <p>The current status for setting a Firewall Manager policy administrators account as an administrator of the third-party firewall tenant.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONBOARDING</code> - The Firewall Manager policy administrator is being designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONBOARD_COMPLETE</code> - The Firewall Manager policy administrator is designated as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARDING</code> - The Firewall Manager policy administrator is being removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OFFBOARD_COMPLETE</code> - The Firewall Manager policy administrator has been removed as a tenant administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_EXIST</code> - The Firewall Manager policy administrator doesn't exist as a tenant administrator.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute marketplace_onboarding_status
    #   <p>The status for subscribing to the third-party firewall vendor in the Amazon Web Services Marketplace.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NO_SUBSCRIPTION</code> - The Firewall Manager policy administrator isn't subscribed to the third-party firewall service in the Amazon Web Services Marketplace.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_COMPLETE</code> - The Firewall Manager policy administrator is in the process of subscribing to the third-party firewall service in the Amazon Web Services Marketplace, but doesn't yet have an active subscription.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETE</code> - The Firewall Manager policy administrator has an active subscription to the third-party firewall service in the Amazon Web Services Marketplace.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class GetThirdPartyFirewallAssociationStatusResponse < Struct.new(
      nil,
      :third_party_firewall_status,
      :marketplace_onboarding_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for. You can get violation details for the following policy types:</p>
    #            <ul>
    #               <li>
    #                  <p>WAF</p>
    #               </li>
    #               <li>
    #                  <p>DNS Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Imported Network Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Network Firewall</p>
    #               </li>
    #               <li>
    #                  <p>Security group content audit</p>
    #               </li>
    #               <li>
    #                  <p>Network ACL</p>
    #               </li>
    #               <li>
    #                  <p>Third-party firewall</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute member_account
    #   <p>The Amazon Web Services account ID that you want the details for.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that has violations.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #         Supported resource types are:
    #         <code>AWS::WAFv2::WebACL</code>,
    #         <code>AWS::EC2::Instance</code>,
    #         <code>AWS::EC2::NetworkInterface</code>,
    #         <code>AWS::EC2::SecurityGroup</code>,
    #         <code>AWS::NetworkFirewall::FirewallPolicy</code>, and
    #         <code>AWS::EC2::Subnet</code>.
    #      </p>
    #   @return [String]
    class GetViolationDetailsRequest < Struct.new(
      nil,
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute violation_detail
    #   <p>Violation detail for a resource.</p>
    #   @return [Types::ViolationDetail]
    class GetViolationDetailsResponse < Struct.new(
      nil,
      :violation_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because of a system problem, even though the request was valid. Retry
    #       your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters of the request were invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for the entries in a network ACL resource.</p>
    # @!attribute vpc
    #   <p>The VPC where the violation was found. </p>
    #   @return [String]
    # @!attribute subnet
    #   <p>The subnet that's associated with the network ACL.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone where the network ACL is in use. </p>
    #   @return [String]
    # @!attribute current_associated_network_acl
    #   <p>The network ACL containing the entry violations. </p>
    #   @return [String]
    # @!attribute entry_violations
    #   <p>Detailed information about the entry violations in the network ACL. </p>
    #   @return [Array<Types::EntryViolation>]
    class InvalidNetworkAclEntriesViolation < Struct.new(
      nil,
      :vpc,
      :subnet,
      :subnet_availability_zone,
      :current_associated_network_acl,
      :entry_violations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because there was nothing to do or the operation wasn't possible. For example, you might have
    #         submitted an <code>AssociateAdminAccount</code> request for an account ID that
    #             was already set as the Firewall Manager administrator. Or you might have tried to access a Region
    #   that's disabled by default, and that you need to enable for the Firewall Manager
    #   administrator account and for Organizations before you can access it.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of the <code>Type</code> parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation exceeds a resource limit, for example, the maximum number of
    #         <code>policy</code> objects that you can create for an Amazon Web Services account. For more information,
    #       see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html">Firewall
    #         Manager Limits</a> in the <i>WAF Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAdminAccountsForOrganizationRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_accounts
    #   <p>A list of Firewall Manager administrator accounts within the organization that were onboarded as administrators by <a>AssociateAdminAccount</a> or <a>PutAdminAccount</a>.</p>
    #   @return [Array<Types::AdminAccountSummary>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListAdminAccountsForOrganizationResponse < Struct.new(
      nil,
      :admin_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAdminsManagingAccountRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_accounts
    #   <p>The list of accounts who manage member accounts within their <a>AdminScope</a>.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListAdminsManagingAccountResponse < Struct.new(
      nil,
      :admin_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #   @return [Integer]
    class ListAppsListsRequest < Struct.new(
      nil,
      :default_lists,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps_lists
    #   <p>An array of <code>AppsListDataSummary</code> objects.</p>
    #   @return [Array<Types::AppsListDataSummary>]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>
    #   @return [String]
    class ListAppsListsResponse < Struct.new(
      nil,
      :apps_lists,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicyComplianceStatus</code> objects.
    #         For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicyComplianceStatus</code> objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want
    #         Firewall Manager to return for this request. If you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>
    #   @return [Integer]
    class ListComplianceStatusRequest < Struct.new(
      nil,
      :policy_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_compliance_status_list
    #   <p>An array of <code>PolicyComplianceStatus</code> objects.</p>
    #   @return [Array<Types::PolicyComplianceStatus>]
    # @!attribute next_token
    #   <p>If you have more <code>PolicyComplianceStatus</code> objects than the number that you
    #         specified for <code>MaxResults</code> in the request, the response includes a
    #           <code>NextToken</code> value. To list more <code>PolicyComplianceStatus</code> objects,
    #         submit another <code>ListComplianceStatus</code> request, and specify the
    #           <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
    #         next request.</p>
    #   @return [String]
    class ListComplianceStatusResponse < Struct.new(
      nil,
      :policy_compliance_status_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_account_ids
    #   <p>The Amazon Web Services account IDs to discover resources in. Only one account is supported per request. The account must be a member of your organization.</p>
    #   @return [Array<String>]
    # @!attribute resource_type
    #   <p>The type of resources to discover.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListDiscoveredResourcesRequest < Struct.new(
      nil,
      :member_account_ids,
      :resource_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Details of the resources that were discovered.</p>
    #   @return [Array<Types::DiscoveredResource>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListDiscoveredResourcesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the
    #         number that you specify for <code>MaxResults</code>, Firewall Manager returns a
    #           <code>NextToken</code> value in the response that allows you to list another group of IDs.
    #         For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the
    #         value of <code>NextToken</code> from the previous response to get information about another
    #         batch of member account IDs.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of member account IDs that you want Firewall Manager to return
    #         for this request. If you have more IDs than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of member account IDs.</p>
    #   @return [Integer]
    class ListMemberAccountsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_accounts
    #   <p>An array of account IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If you have more member account IDs than the number that you specified for
    #           <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
    #         value. To list more IDs, submit another <code>ListMemberAccounts</code> request, and specify
    #         the <code>NextToken</code> value from the response in the <code>NextToken</code> value in the
    #         next request.</p>
    #   @return [String]
    class ListMemberAccountsResponse < Struct.new(
      nil,
      :member_accounts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicySummary</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicySummary</code> objects. For the
    #         second and subsequent <code>ListPolicies</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicySummary</code> objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specifies the number of <code>PolicySummary</code> objects that you want Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than
    #         the number that you specify for <code>MaxResults</code>, the response includes a
    #           <code>NextToken</code> value that you can use to get another batch of
    #           <code>PolicySummary</code> objects.</p>
    #   @return [Integer]
    class ListPoliciesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_list
    #   <p>An array of <code>PolicySummary</code> objects.</p>
    #   @return [Array<Types::PolicySummary>]
    # @!attribute next_token
    #   <p>If you have more <code>PolicySummary</code> objects than the number that you specified for
    #           <code>MaxResults</code> in the request, the response includes a <code>NextToken</code>
    #         value. To list more <code>PolicySummary</code> objects, submit another
    #           <code>ListPolicies</code> request, and specify the <code>NextToken</code> value from the
    #         response in the <code>NextToken</code> value in the next request.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      nil,
      :policy_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #   @return [Integer]
    class ListProtocolsListsRequest < Struct.new(
      nil,
      :default_lists,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocols_lists
    #   <p>An array of <code>ProtocolsListDataSummary</code> objects.</p>
    #   @return [Array<Types::ProtocolsListDataSummary>]
    # @!attribute next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. You can use this token in subsequent requests to retrieve the next batch of objects.</p>
    #   @return [String]
    class ListProtocolsListsResponse < Struct.new(
      nil,
      :protocols_lists,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>A unique identifier for the resource set, used in a request to refer to the resource set.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListResourceSetResourcesRequest < Struct.new(
      nil,
      :identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of the associated resources' uniform resource identifiers (URI).</p>
    #   @return [Array<Types::Resource>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListResourceSetResourcesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #         objects are available, in the response, Firewall Manager provides a
    #        <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListResourceSetsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_sets
    #   <p>An array of <code>ResourceSetSummary</code> objects.</p>
    #   @return [Array<Types::ResourceSetSummary>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #        for retrieval exceeds the maximum you requested, Firewall Manager returns a <code>NextToken</code>
    #        value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListResourceSetsResponse < Struct.new(
      nil,
      :resource_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified third-party firewall vendor is associated with more
    #   third-party firewall policies. To get more third-party firewall policies, submit another <code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
    #            <p>
    #     For the value of <code>NextToken</code>, specify the value of <code>NextToken</code> from the previous response.
    #     If the previous response didn't include a <code>NextToken</code> element, there are no more third-party firewall policies to
    #     get.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of third-party firewall policies that you want Firewall Manager to return. If
    #   the specified third-party firewall vendor is associated with more than <code>MaxResults</code> firewall policies, the response includes a
    #   <code>NextToken</code> element. <code>NextToken</code> contains an encrypted token that identifies the first third-party firewall policies
    #   that Firewall Manager will return if you submit another request.</p>
    #   @return [Integer]
    class ListThirdPartyFirewallFirewallPoliciesRequest < Struct.new(
      nil,
      :third_party_firewall,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute third_party_firewall_firewall_policies
    #   <p>A list that contains one <code>ThirdPartyFirewallFirewallPolicies</code> element for each third-party firewall policies that the specified
    #   third-party firewall vendor is associated with. Each <code>ThirdPartyFirewallFirewallPolicies</code> element contains the firewall policy name and ID.</p>
    #   @return [Array<Types::ThirdPartyFirewallFirewallPolicy>]
    # @!attribute next_token
    #   <p>The value that you will use for <code>NextToken</code> in the next <code>ListThirdPartyFirewallFirewallPolicies</code> request.</p>
    #   @return [String]
    class ListThirdPartyFirewallFirewallPoliciesResponse < Struct.new(
      nil,
      :third_party_firewall_firewall_policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a Firewall Manager network ACL policy. This is used in the <code>PolicyOption</code> of a <code>SecurityServicePolicyData</code> for a <code>Policy</code>, when 
    #            the <code>SecurityServicePolicyData</code> type is set to <code>NETWORK_ACL_COMMON</code>. </p>
    #          <p>For information about network ACLs, see 
    #                                 <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html">Control traffic to subnets using network ACLs</a> 
    #                                 in the <i>Amazon Virtual Private Cloud User Guide</i>. </p>
    # @!attribute network_acl_entry_set
    #   <p>The definition of the first and last rules for the network ACL policy. </p>
    #   @return [Types::NetworkAclEntrySet]
    class NetworkAclCommonPolicy < Struct.new(
      nil,
      :network_acl_entry_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule in a network ACL.</p>
    #          <p>Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining
    # whether a packet should be allowed in or out of a subnet associated with the network ACL, Amazon Web Services processes the
    #        entries in the network ACL according to the rule numbers, in ascending order. </p>
    #          <p>When you manage an individual network ACL, you explicitly specify the rule numbers. When you specify the network ACL rules in a Firewall Manager policy, 
    #    you provide the rules to run first, in the order that you want them to run, and the rules to run last, in the order 
    #        that you want them to run. Firewall Manager assigns the rule numbers for you when you save the network ACL policy specification.</p>
    # @!attribute icmp_type_code
    #   <p>ICMP protocol: The ICMP type and code.</p>
    #   @return [Types::NetworkAclIcmpTypeCode]
    # @!attribute protocol
    #   <p>The protocol number. A value of "-1" means all protocols. </p>
    #   @return [String]
    # @!attribute port_range
    #   <p>TCP or UDP protocols: The range of ports the rule applies to.</p>
    #   @return [Types::NetworkAclPortRange]
    # @!attribute cidr_block
    #   <p>The IPv4 network range to allow or deny, in CIDR notation.</p>
    #   @return [String]
    # @!attribute ipv6_cidr_block
    #   <p>The IPv6 network range to allow or deny, in CIDR notation.</p>
    #   @return [String]
    # @!attribute rule_action
    #   <p>Indicates whether to allow or deny the traffic that matches the rule.</p>
    #   @return [String]
    # @!attribute egress
    #   <p>Indicates whether the rule is an egress, or outbound, rule (applied to traffic leaving the subnet). If it's not
    #      an egress rule, then it's an ingress, or inbound, rule.</p>
    #   @return [Boolean]
    class NetworkAclEntry < Struct.new(
      nil,
      :icmp_type_code,
      :protocol,
      :port_range,
      :cidr_block,
      :ipv6_cidr_block,
      :rule_action,
      :egress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the first and last rules for the network ACL policy, and the remediation settings for each. </p>
    # @!attribute first_entries
    #   <p>The rules that you want to run first in the Firewall Manager managed network ACLs. </p>
    #            <note>
    #               <p>Provide these in the order in which you want them to run. Firewall Manager will assign
    #              the specific rule numbers for you, in the network ACLs that it creates. </p>
    #            </note>
    #            <p>You must specify at least one first entry or one last entry in any network ACL policy. </p>
    #   @return [Array<Types::NetworkAclEntry>]
    # @!attribute force_remediate_for_first_entries
    #   <p>Applies only when remediation is enabled for the policy as a whole. Firewall Manager uses this setting when it finds policy 
    #          violations that involve conflicts between the custom entries and the policy entries. </p>
    #            <p>If forced remediation is disabled, Firewall Manager marks the network ACL as noncompliant and does not try to 
    #      remediate. For more information about the remediation behavior, see 
    #   <a href="https://docs.aws.amazon.com/waf/latest/developerguide/network-acl-policies.html#network-acls-remediation">Remediation for managed network ACLs</a> 
    #      in the <i>Firewall Manager Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute last_entries
    #   <p>The rules that you want to run last in the Firewall Manager managed network ACLs. </p>
    #            <note>
    #               <p>Provide these in the order in which you want them to run. Firewall Manager will assign
    #              the specific rule numbers for you, in the network ACLs that it creates. </p>
    #            </note>
    #            <p>You must specify at least one first entry or one last entry in any network ACL policy. </p>
    #   @return [Array<Types::NetworkAclEntry>]
    # @!attribute force_remediate_for_last_entries
    #   <p>Applies only when remediation is enabled for the policy as a whole. Firewall Manager uses this setting when it finds policy 
    #          violations that involve conflicts between the custom entries and the policy entries. </p>
    #            <p>If forced remediation is disabled, Firewall Manager marks the network ACL as noncompliant and does not try to 
    #      remediate. For more information about the remediation behavior, see 
    #   <a href="https://docs.aws.amazon.com/waf/latest/developerguide/network-acl-policies.html#network-acls-remediation">Remediation for managed network ACLs</a> 
    #      in the <i>Firewall Manager Developer Guide</i>.</p>
    #   @return [Boolean]
    class NetworkAclEntrySet < Struct.new(
      nil,
      :first_entries,
      :force_remediate_for_first_entries,
      :last_entries,
      :force_remediate_for_last_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ICMP protocol: The ICMP type and code.</p>
    # @!attribute code
    #   <p>ICMP code. </p>
    #   @return [Integer]
    # @!attribute type
    #   <p>ICMP type. </p>
    #   @return [Integer]
    class NetworkAclIcmpTypeCode < Struct.new(
      nil,
      :code,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>TCP or UDP protocols: The range of ports the rule applies to.</p>
    # @!attribute from
    #   <p>The beginning port number of the range. </p>
    #   @return [Integer]
    # @!attribute to
    #   <p>The ending port number of the range. </p>
    #   @return [Integer]
    class NetworkAclPortRange < Struct.new(
      nil,
      :from,
      :to,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for an internet gateway route with an inactive state in the customer subnet route table or Network Firewall subnet route table.</p>
    # @!attribute violation_target
    #   <p>The subnet that has an inactive state.</p>
    #   @return [String]
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    # @!attribute violating_routes
    #   <p>Information about the route or routes that are in violation.</p>
    #   @return [Array<Types::Route>]
    class NetworkFirewallBlackHoleRouteDetectedViolation < Struct.new(
      nil,
      :violation_target,
      :route_table_id,
      :vpc_id,
      :violating_routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for the subnet for which internet traffic that hasn't been inspected.</p>
    # @!attribute subnet_id
    #   <p>The subnet ID.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The subnet Availability Zone.</p>
    #   @return [String]
    # @!attribute route_table_id
    #   <p>Information about the route table ID.</p>
    #   @return [String]
    # @!attribute violating_routes
    #   <p>The route or routes that are in violation.</p>
    #   @return [Array<Types::Route>]
    # @!attribute is_route_table_used_in_different_az
    #   <p>Information about whether the route table is used in another Availability Zone.</p>
    #   @return [Boolean]
    # @!attribute current_firewall_subnet_route_table
    #   <p>Information about the subnet route table for the current firewall.</p>
    #   @return [String]
    # @!attribute expected_firewall_endpoint
    #   <p>The expected endpoint for the current firewall.</p>
    #   @return [String]
    # @!attribute firewall_subnet_id
    #   <p>The firewall subnet ID.</p>
    #   @return [String]
    # @!attribute expected_firewall_subnet_routes
    #   <p>The firewall subnet routes that are expected.</p>
    #   @return [Array<Types::ExpectedRoute>]
    # @!attribute actual_firewall_subnet_routes
    #   <p>The actual firewall subnet routes.</p>
    #   @return [Array<Types::Route>]
    # @!attribute internet_gateway_id
    #   <p>The internet gateway ID.</p>
    #   @return [String]
    # @!attribute current_internet_gateway_route_table
    #   <p>The current route table for the internet gateway.</p>
    #   @return [String]
    # @!attribute expected_internet_gateway_routes
    #   <p>The internet gateway routes that are expected.</p>
    #   @return [Array<Types::ExpectedRoute>]
    # @!attribute actual_internet_gateway_routes
    #   <p>The actual internet gateway routes.</p>
    #   @return [Array<Types::Route>]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    class NetworkFirewallInternetTrafficNotInspectedViolation < Struct.new(
      nil,
      :subnet_id,
      :subnet_availability_zone,
      :route_table_id,
      :violating_routes,
      :is_route_table_used_in_different_az,
      :current_firewall_subnet_route_table,
      :expected_firewall_endpoint,
      :firewall_subnet_id,
      :expected_firewall_subnet_routes,
      :actual_firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :expected_internet_gateway_routes,
      :actual_internet_gateway_routes,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_route_table_used_in_different_az] = false unless options.key?(:is_route_table_used_in_different_az)
        super
      end
    end

    # <p>Violation detail for the improperly configured subnet route. It's possible there is a missing route table route,
    #       or a configuration that causes traffic to cross an Availability Zone boundary.</p>
    # @!attribute affected_subnets
    #   <p>The subnets that are affected.</p>
    #   @return [Array<String>]
    # @!attribute route_table_id
    #   <p>The route table ID.</p>
    #   @return [String]
    # @!attribute is_route_table_used_in_different_az
    #   <p>Information about whether the route table is used in another Availability Zone.</p>
    #   @return [Boolean]
    # @!attribute violating_route
    #   <p>The route that's in violation.</p>
    #   @return [Types::Route]
    # @!attribute current_firewall_subnet_route_table
    #   <p>The subnet route table for the current firewall.</p>
    #   @return [String]
    # @!attribute expected_firewall_endpoint
    #   <p>The firewall endpoint that's expected.</p>
    #   @return [String]
    # @!attribute actual_firewall_endpoint
    #   <p>The actual firewall endpoint.</p>
    #   @return [String]
    # @!attribute expected_firewall_subnet_id
    #   <p>The expected subnet ID for the firewall.</p>
    #   @return [String]
    # @!attribute actual_firewall_subnet_id
    #   <p>The actual subnet ID for the firewall.</p>
    #   @return [String]
    # @!attribute expected_firewall_subnet_routes
    #   <p>The firewall subnet routes that are expected.</p>
    #   @return [Array<Types::ExpectedRoute>]
    # @!attribute actual_firewall_subnet_routes
    #   <p>The actual firewall subnet routes that are expected.</p>
    #   @return [Array<Types::Route>]
    # @!attribute internet_gateway_id
    #   <p>The internet gateway ID.</p>
    #   @return [String]
    # @!attribute current_internet_gateway_route_table
    #   <p>The route table for the current internet gateway.</p>
    #   @return [String]
    # @!attribute expected_internet_gateway_routes
    #   <p>The expected routes for the internet gateway.</p>
    #   @return [Array<Types::ExpectedRoute>]
    # @!attribute actual_internet_gateway_routes
    #   <p>The actual internet gateway routes.</p>
    #   @return [Array<Types::Route>]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    class NetworkFirewallInvalidRouteConfigurationViolation < Struct.new(
      nil,
      :affected_subnets,
      :route_table_id,
      :is_route_table_used_in_different_az,
      :violating_route,
      :current_firewall_subnet_route_table,
      :expected_firewall_endpoint,
      :actual_firewall_endpoint,
      :expected_firewall_subnet_id,
      :actual_firewall_subnet_id,
      :expected_firewall_subnet_routes,
      :actual_firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :expected_internet_gateway_routes,
      :actual_internet_gateway_routes,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_route_table_used_in_different_az] = false unless options.key?(:is_route_table_used_in_different_az)
        super
      end
    end

    # <p>Violation detail for Network Firewall for a subnet that's not associated to the expected
    #        Firewall Manager managed route table.</p>
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #   @return [String]
    # @!attribute current_route_table
    #   <p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>
    #   @return [String]
    # @!attribute expected_route_table
    #   <p>The resource ID of the route table that should be associated with the subnet.</p>
    #   @return [String]
    class NetworkFirewallMissingExpectedRTViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :current_route_table,
      :expected_route_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for an expected route missing in Network Firewall.</p>
    # @!attribute violation_target
    #   <p>The target of the violation.</p>
    #   @return [String]
    # @!attribute expected_routes
    #   <p>The expected routes.</p>
    #   @return [Array<Types::ExpectedRoute>]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    class NetworkFirewallMissingExpectedRoutesViolation < Struct.new(
      nil,
      :violation_target,
      :expected_routes,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for Network Firewall for a subnet that doesn't have a
    #        Firewall Manager managed firewall in its VPC. </p>
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #   @return [String]
    # @!attribute target_violation_reason
    #   <p>The reason the resource has this violation, if one is available. </p>
    #   @return [String]
    class NetworkFirewallMissingFirewallViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for Network Firewall for an Availability Zone that's
    #        missing the expected Firewall Manager managed subnet.</p>
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a violating subnet.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of a violating subnet. </p>
    #   @return [String]
    # @!attribute target_violation_reason
    #   <p>The reason the resource has this violation, if one is available. </p>
    #   @return [String]
    class NetworkFirewallMissingSubnetViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the firewall policy deployment model of Network Firewall. For information about
    #          Network Firewall deployment models, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/architectures.html">Network Firewall example
    #             architectures with routing</a> in the <i>Network Firewall Developer
    #          Guide</i>.</p>
    # @!attribute firewall_deployment_model
    #   <p>Defines the deployment model to use for the firewall policy. To use a distributed model,
    #            set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to <code>NULL</code>.</p>
    #   @return [String]
    class NetworkFirewallPolicy < Struct.new(
      nil,
      :firewall_deployment_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of the Network Firewall firewall policy.</p>
    # @!attribute stateless_rule_groups
    #   <p>The stateless rule groups that are used in the Network Firewall firewall policy. </p>
    #   @return [Array<Types::StatelessRuleGroup>]
    # @!attribute stateless_default_actions
    #   <p>The actions to take on packets that don't match any of the stateless rule groups. </p>
    #   @return [Array<String>]
    # @!attribute stateless_fragment_default_actions
    #   <p>The actions to take on packet fragments that don't match any of the stateless rule groups. </p>
    #   @return [Array<String>]
    # @!attribute stateless_custom_actions
    #   <p>Names of custom actions that are available for use in the stateless default actions settings.</p>
    #   @return [Array<String>]
    # @!attribute stateful_rule_groups
    #   <p>The stateful rule groups that are used in the Network Firewall firewall policy. </p>
    #   @return [Array<Types::StatefulRuleGroup>]
    # @!attribute stateful_default_actions
    #   <p>The default actions to take on a packet that doesn't match any stateful rules. The stateful default
    #   action is optional, and is only valid when using the strict rule order.</p>
    #            <p>
    #     Valid values of the stateful default action:
    #   </p>
    #            <ul>
    #               <li>
    #                  <p>aws:drop_strict</p>
    #               </li>
    #               <li>
    #                  <p>aws:drop_established</p>
    #               </li>
    #               <li>
    #                  <p>aws:alert_strict</p>
    #               </li>
    #               <li>
    #                  <p>aws:alert_established</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute stateful_engine_options
    #   <p>Additional options governing how Network Firewall handles stateful rules. The stateful rule groups
    #   that you use in your policy must have stateful rule options settings that are compatible with these
    #   settings.</p>
    #   @return [Types::StatefulEngineOptions]
    class NetworkFirewallPolicyDescription < Struct.new(
      nil,
      :stateless_rule_groups,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_custom_actions,
      :stateful_rule_groups,
      :stateful_default_actions,
      :stateful_engine_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for Network Firewall for a firewall policy that has a different
    #        <a>NetworkFirewallPolicyDescription</a> than is required by the Firewall Manager policy. </p>
    # @!attribute violation_target
    #   <p>The ID of the Network Firewall or VPC resource that's in violation.</p>
    #   @return [String]
    # @!attribute current_policy_description
    #   <p>The policy that's currently in use in the individual account. </p>
    #   @return [Types::NetworkFirewallPolicyDescription]
    # @!attribute expected_policy_description
    #   <p>The policy that should be in use in the individual account in order to be compliant. </p>
    #   @return [Types::NetworkFirewallPolicyDescription]
    class NetworkFirewallPolicyModifiedViolation < Struct.new(
      nil,
      :violation_target,
      :current_policy_description,
      :expected_policy_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The setting that allows the policy owner to change the behavior of the rule group within a policy.</p>
    # @!attribute action
    #   <p>The action that changes the rule group from <code>DROP</code> to <code>ALERT</code>. This only applies to managed rule groups.</p>
    #   @return [String]
    class NetworkFirewallStatefulRuleGroupOverride < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for an unexpected route that's present in a route table.</p>
    # @!attribute firewall_subnet_id
    #   <p>The subnet ID for the firewall.</p>
    #   @return [String]
    # @!attribute violating_routes
    #   <p>The routes that are in violation.</p>
    #   @return [Array<Types::Route>]
    # @!attribute route_table_id
    #   <p>The ID of the route table.</p>
    #   @return [String]
    # @!attribute firewall_endpoint
    #   <p>The endpoint of the firewall.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    class NetworkFirewallUnexpectedFirewallRoutesViolation < Struct.new(
      nil,
      :firewall_subnet_id,
      :violating_routes,
      :route_table_id,
      :firewall_endpoint,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail for an unexpected gateway route that’s present in a route table.</p>
    # @!attribute gateway_id
    #   <p>Information about the gateway ID.</p>
    #   @return [String]
    # @!attribute violating_routes
    #   <p>The routes that are in violation.</p>
    #   @return [Array<Types::Route>]
    # @!attribute route_table_id
    #   <p>Information about the  route table.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>Information about the VPC ID.</p>
    #   @return [String]
    class NetworkFirewallUnexpectedGatewayRoutesViolation < Struct.new(
      nil,
      :gateway_id,
      :violating_routes,
      :route_table_id,
      :vpc_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Organizations organizational units (OUs) that the specified Firewall Manager administrator can apply policies to. For more information about OUs in Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing organizational units (OUs)
    # </a> in the <i>Organizations User Guide</i>.</p>
    # @!attribute organizational_units
    #   <p>The list of OUs within the organization that the specified Firewall Manager administrator either can or cannot apply policies to, based on the value of <code>OrganizationalUnitScope$ExcludeSpecifiedOrganizationalUnits</code>. If <code>OrganizationalUnitScope$ExcludeSpecifiedOrganizationalUnits</code> is set to <code>true</code>, then the Firewall Manager administrator can apply policies to all OUs in the organization except for the OUs in this list. If <code>OrganizationalUnitScope$ExcludeSpecifiedOrganizationalUnits</code> is set to <code>false</code>, then the Firewall Manager administrator can only apply policies to the OUs in this list.</p>
    #   @return [Array<String>]
    # @!attribute all_organizational_units_enabled
    #   <p>A boolean value that indicates if the administrator can apply policies to all OUs within an organization. If true, the administrator can manage all OUs within the organization. You can either enable management of all OUs through this operation, or you can specify OUs to manage in <code>OrganizationalUnitScope$OrganizationalUnits</code>. You cannot specify both.</p>
    #   @return [Boolean]
    # @!attribute exclude_specified_organizational_units
    #   <p>A boolean value that excludes the OUs in <code>OrganizationalUnitScope$OrganizationalUnits</code> from the administrator's scope. If true, the Firewall Manager administrator can apply policies to all OUs in the organization except for the OUs listed in <code>OrganizationalUnitScope$OrganizationalUnits</code>. You can either specify a list of OUs to exclude by <code>OrganizationalUnitScope$OrganizationalUnits</code>, or you can enable management of all OUs by <code>OrganizationalUnitScope$AllOrganizationalUnitsEnabled</code>. You cannot specify both.</p>
    #   @return [Boolean]
    class OrganizationalUnitScope < Struct.new(
      nil,
      :organizational_units,
      :all_organizational_units_enabled,
      :exclude_specified_organizational_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_organizational_units_enabled] = false unless options.key?(:all_organizational_units_enabled)
        options[:exclude_specified_organizational_units] = false unless options.key?(:exclude_specified_organizational_units)
        super
      end
    end

    # <p>The reference rule that partially matches the <code>ViolationTarget</code> rule and violation reason.</p>
    # @!attribute reference
    #   <p>The reference rule from the primary security group of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute target_violation_reasons
    #   <p>The violation reason.</p>
    #   @return [Array<String>]
    class PartialMatch < Struct.new(
      nil,
      :reference,
      :target_violation_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Firewall Manager policy.</p>
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_update_token
    #   <p>A unique identifier for each update to the policy. When issuing a <code>PutPolicy</code>
    #         request, the <code>PolicyUpdateToken</code> in the request must match the
    #           <code>PolicyUpdateToken</code> of the current policy version. To get the
    #           <code>PolicyUpdateToken</code> of the current policy version, use a <code>GetPolicy</code>
    #         request.</p>
    #   @return [String]
    # @!attribute security_service_policy_data
    #   <p>Details about the security service that is being used to protect the resources.</p>
    #   @return [Types::SecurityServicePolicyData]
    # @!attribute resource_type
    #   <p>The type of resource protected by or in scope of the policy. This is in the format shown
    #           in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #                       To apply this policy to multiple resource types, specify a resource type of <code>ResourceTypeList</code> and then specify the resource types in a <code>ResourceTypeList</code>.</p>
    #            <p>The following are valid resource types for each Firewall Manager policy type:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services WAF Classic - <code>AWS::ApiGateway::Stage</code>, <code>AWS::CloudFront::Distribution</code>, and <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>.</p>
    #               </li>
    #               <li>
    #                  <p>WAF - <code>AWS::ApiGateway::Stage</code>, <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>, and <code>AWS::CloudFront::Distribution</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Shield Advanced - <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>, <code>AWS::ElasticLoadBalancing::LoadBalancer</code>, <code>AWS::EC2::EIP</code>, and <code>AWS::CloudFront::Distribution</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Network ACL - <code>AWS::EC2::Subnet</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Security group usage audit - <code>AWS::EC2::SecurityGroup</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Security group content audit - <code>AWS::EC2::SecurityGroup</code>, <code>AWS::EC2::NetworkInterface</code>, and <code>AWS::EC2::Instance</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DNS Firewall, Network Firewall, and third-party firewall - <code>AWS::EC2::VPC</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_type_list
    #   <p>An array of <code>ResourceType</code> objects. Use this only to specify multiple resource types. To specify a single resource type, use <code>ResourceType</code>.</p>
    #   @return [Array<String>]
    # @!attribute resource_tags
    #   <p>An array of <code>ResourceTag</code> objects.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute exclude_resource_tags
    #   <p>If set to <code>True</code>, resources with the tags that are specified in the
    #           <code>ResourceTag</code> array are not in scope of the policy. If set to <code>False</code>,
    #         and the <code>ResourceTag</code> array is not null, only resources with the specified tags are
    #         in scope of the policy.</p>
    #   @return [Boolean]
    # @!attribute remediation_enabled
    #   <p>Indicates if the policy should be automatically applied to new resources.</p>
    #   @return [Boolean]
    # @!attribute delete_unused_fm_managed_resources
    #   <p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
    #      that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
    #      from a protected customer resource when the customer resource leaves policy scope. </p>
    #            <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
    #            <p>This option is not available for Shield Advanced or WAF Classic policies.</p>
    #   @return [Boolean]
    # @!attribute include_map
    #   <p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to include in the policy.
    #             Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    #            <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
    #             applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    #             does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    #               applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    #            <p>You can specify account IDs, OUs, or a combination: </p>
    #            <ul>
    #               <li>
    #                  <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    #     <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<String>>]
    # @!attribute exclude_map
    #   <p>Specifies the Amazon Web Services account IDs and Organizations organizational units (OUs) to exclude from the policy.
    #             Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.</p>
    #            <p>You can specify inclusions or exclusions, but not both. If you specify an <code>IncludeMap</code>, Firewall Manager
    #             applies the policy to all accounts specified by the <code>IncludeMap</code>, and
    #             does not evaluate any <code>ExcludeMap</code> specifications. If you do not specify an <code>IncludeMap</code>, then Firewall Manager
    #               applies the policy to all accounts except for those specified by the <code>ExcludeMap</code>.</p>
    #            <p>You can specify account IDs, OUs, or a combination: </p>
    #            <ul>
    #               <li>
    #                  <p>Specify account IDs by setting the key to <code>ACCOUNT</code>. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify OUs by setting the key to <code>ORG_UNIT</code>. For example, the following is a valid map:
    #     <code>{“ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Specify accounts and OUs together in a single map, separated with a comma. For example, the following is a valid map:
    #         <code>{“ACCOUNT” : [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”, “ouid112”]}</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<String>>]
    # @!attribute resource_set_ids
    #   <p>The unique identifiers of the resource sets used by the policy.</p>
    #   @return [Array<String>]
    # @!attribute policy_description
    #   <p>Your description of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_status
    #   <p>Indicates whether the policy is in or out of an admin's policy or Region scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The administrator can manage and delete the policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_ADMIN_SCOPE</code> - The administrator can view the policy, but they can't edit or delete the policy. Existing policy protections stay in place. Any new resources that come into scope of the policy won't be protected.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resource_tag_logical_operator
    #   <p>Specifies whether to combine multiple resource tags with AND, 
    #            so that a resource must have all tags to be included or excluded, or OR, 
    #            so that a resource must have at least one tag.</p>
    #            <p>Default: <code>AND</code>
    #            </p>
    #   @return [String]
    class Policy < Struct.new(
      nil,
      :policy_id,
      :policy_name,
      :policy_update_token,
      :security_service_policy_data,
      :resource_type,
      :resource_type_list,
      :resource_tags,
      :exclude_resource_tags,
      :remediation_enabled,
      :delete_unused_fm_managed_resources,
      :include_map,
      :exclude_map,
      :resource_set_ids,
      :policy_description,
      :policy_status,
      :resource_tag_logical_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclude_resource_tags] = false unless options.key?(:exclude_resource_tags)
        options[:remediation_enabled] = false unless options.key?(:remediation_enabled)
        options[:delete_unused_fm_managed_resources] = false unless options.key?(:delete_unused_fm_managed_resources)
        super
      end
    end

    # <p>Describes
    #       the noncompliant resources in a member account for a specific Firewall Manager policy. A maximum of 100 entries are displayed. If more than 100 resources are
    #       noncompliant, <code>EvaluationLimitExceeded</code> is set to <code>True</code>.</p>
    # @!attribute policy_owner
    #   <p>The Amazon Web Services account that created the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute member_account
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute violators
    #   <p>An array of resources that aren't protected by the WAF or Shield Advanced policy or
    #         that aren't in compliance with the security group policy.</p>
    #   @return [Array<Types::ComplianceViolator>]
    # @!attribute evaluation_limit_exceeded
    #   <p>Indicates if over 100 resources are noncompliant with the Firewall Manager
    #         policy.</p>
    #   @return [Boolean]
    # @!attribute expired_at
    #   <p>A timestamp that indicates when the returned information should be considered out of
    #         date.</p>
    #   @return [Time]
    # @!attribute issue_info_map
    #   <p>Details about problems with dependent services, such as WAF or Config,
    #         and the error message received that indicates the problem with the service.</p>
    #   @return [Hash<String, String>]
    class PolicyComplianceDetail < Struct.new(
      nil,
      :policy_owner,
      :policy_id,
      :member_account,
      :violators,
      :evaluation_limit_exceeded,
      :expired_at,
      :issue_info_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluation_limit_exceeded] = false unless options.key?(:evaluation_limit_exceeded)
        super
      end
    end

    # <p>Indicates whether the account is compliant with the specified policy. An account is
    #       considered noncompliant if it includes resources that are not protected by the policy, for
    #       WAF and Shield Advanced policies, or that are noncompliant with the policy, for security group
    #       policies.</p>
    # @!attribute policy_owner
    #   <p>The Amazon Web Services account that created the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the Firewall Manager policy.</p>
    #   @return [String]
    # @!attribute member_account
    #   <p>The member account ID.</p>
    #   @return [String]
    # @!attribute evaluation_results
    #   <p>An array of <code>EvaluationResult</code> objects.</p>
    #   @return [Array<Types::EvaluationResult>]
    # @!attribute last_updated
    #   <p>Timestamp of the last update to the <code>EvaluationResult</code> objects.</p>
    #   @return [Time]
    # @!attribute issue_info_map
    #   <p>Details about problems with dependent services, such as WAF or Config,
    #         and the error message received that indicates the problem with the service.</p>
    #   @return [Hash<String, String>]
    class PolicyComplianceStatus < Struct.new(
      nil,
      :policy_owner,
      :policy_id,
      :policy_name,
      :member_account,
      :evaluation_results,
      :last_updated,
      :issue_info_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the settings to configure a network ACL policy, a Network Firewall firewall policy deployment model, or a third-party firewall policy.</p>
    # @!attribute network_firewall_policy
    #   <p>Defines the deployment model to use for the firewall policy.</p>
    #   @return [Types::NetworkFirewallPolicy]
    # @!attribute third_party_firewall_policy
    #   <p>Defines the policy options for a third-party firewall policy.</p>
    #   @return [Types::ThirdPartyFirewallPolicy]
    # @!attribute network_acl_common_policy
    #   <p>Defines a Firewall Manager network ACL policy. </p>
    #   @return [Types::NetworkAclCommonPolicy]
    class PolicyOption < Struct.new(
      nil,
      :network_firewall_policy,
      :third_party_firewall_policy,
      :network_acl_common_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Firewall Manager policy. </p>
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the specified policy.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The ID of the specified policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the specified policy.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource protected by or in scope of the policy. This is in the format shown
    #           in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>. </p>
    #   @return [String]
    # @!attribute security_service_type
    #   <p>The service that the policy is using to protect the resources. This specifies the type of
    #         policy that is created, either an WAF policy, a Shield Advanced policy, or a security
    #         group policy.</p>
    #   @return [String]
    # @!attribute remediation_enabled
    #   <p>Indicates if the policy should be automatically applied to new resources.</p>
    #   @return [Boolean]
    # @!attribute delete_unused_fm_managed_resources
    #   <p>Indicates whether Firewall Manager should automatically remove protections from resources that leave the policy scope and clean up resources
    #      that Firewall Manager is managing for accounts when those accounts leave policy scope. For example, Firewall Manager will disassociate a Firewall Manager managed web ACL
    #      from a protected customer resource when the customer resource leaves policy scope. </p>
    #            <p>By default, Firewall Manager doesn't remove protections or delete Firewall Manager managed resources. </p>
    #            <p>This option is not available for Shield Advanced or WAF Classic policies.</p>
    #   @return [Boolean]
    # @!attribute policy_status
    #   <p>Indicates whether the policy is in or out of an admin's policy or Region scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The administrator can manage and delete the policy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_ADMIN_SCOPE</code> - The administrator can view the policy, but they can't edit or delete the policy. Existing policy protections stay in place. Any new resources that come into scope of the policy won't be protected.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PolicySummary < Struct.new(
      nil,
      :policy_arn,
      :policy_id,
      :policy_name,
      :resource_type,
      :security_service_type,
      :remediation_enabled,
      :delete_unused_fm_managed_resources,
      :policy_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:remediation_enabled] = false unless options.key?(:remediation_enabled)
        options[:delete_unused_fm_managed_resources] = false unless options.key?(:delete_unused_fm_managed_resources)
        super
      end
    end

    # <p>Defines the policy types that the specified Firewall Manager administrator can manage.</p>
    # @!attribute policy_types
    #   <p>The list of policy types that the specified Firewall Manager administrator can manage.</p>
    #   @return [Array<String>]
    # @!attribute all_policy_types_enabled
    #   <p>Allows the specified Firewall Manager administrator to manage all Firewall Manager policy types, except for third-party policy types. Third-party policy types can only be managed by the Firewall Manager default administrator.</p>
    #   @return [Boolean]
    class PolicyTypeScope < Struct.new(
      nil,
      :policy_types,
      :all_policy_types_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_policy_types_enabled] = false unless options.key?(:all_policy_types_enabled)
        super
      end
    end

    # <p>A list of remediation actions.</p>
    # @!attribute description
    #   <p>A description of the list of remediation actions.</p>
    #   @return [String]
    # @!attribute ordered_remediation_actions
    #   <p>The ordered list of remediation actions.</p>
    #   @return [Array<Types::RemediationActionWithOrder>]
    # @!attribute is_default_action
    #   <p>Information about whether an action is taken by default.</p>
    #   @return [Boolean]
    class PossibleRemediationAction < Struct.new(
      nil,
      :description,
      :ordered_remediation_actions,
      :is_default_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_action] = false unless options.key?(:is_default_action)
        super
      end
    end

    # <p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>
    # @!attribute description
    #   <p>A description of the possible remediation actions list.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>Information about the actions.</p>
    #   @return [Array<Types::PossibleRemediationAction>]
    class PossibleRemediationActions < Struct.new(
      nil,
      :description,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Firewall Manager protocols list.</p>
    # @!attribute list_id
    #   <p>The ID of the Firewall Manager protocols list.</p>
    #   @return [String]
    # @!attribute list_name
    #   <p>The name of the Firewall Manager protocols list.</p>
    #   @return [String]
    # @!attribute list_update_token
    #   <p>A unique identifier for each update to the list. When you update
    #           the list, the update token must match the token of the current version of the application list.
    #           You can retrieve the update token by getting the list. </p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that the Firewall Manager protocols list was created.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The time that the Firewall Manager protocols list was last updated.</p>
    #   @return [Time]
    # @!attribute protocols_list
    #   <p>An array of protocols in the Firewall Manager protocols list.</p>
    #   @return [Array<String>]
    # @!attribute previous_protocols_list
    #   <p>A map of previous version numbers to their corresponding protocol arrays.</p>
    #   @return [Hash<String, Array<String>>]
    class ProtocolsListData < Struct.new(
      nil,
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :protocols_list,
      :previous_protocols_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the Firewall Manager protocols list.</p>
    # @!attribute list_arn
    #   <p>The Amazon Resource Name (ARN) of the specified protocols list.</p>
    #   @return [String]
    # @!attribute list_id
    #   <p>The ID of the specified protocols list.</p>
    #   @return [String]
    # @!attribute list_name
    #   <p>The name of the specified protocols list.</p>
    #   @return [String]
    # @!attribute protocols_list
    #   <p>An array of protocols in the Firewall Manager protocols list.</p>
    #   @return [Array<String>]
    class ProtocolsListDataSummary < Struct.new(
      nil,
      :list_arn,
      :list_id,
      :list_name,
      :protocols_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account
    #   <p>The Amazon Web Services account ID to add as an Firewall Manager administrator account. The account must be a member of the organization that was onboarded to Firewall Manager by <a>AssociateAdminAccount</a>. For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.</p>
    #   @return [String]
    # @!attribute admin_scope
    #   <p>Configures the resources that the specified Firewall Manager administrator can manage. As a best practice, set the administrative scope according to the principles of least privilege. Only grant the administrator the specific resources or permissions that they need to perform the duties of their role.</p>
    #   @return [Types::AdminScope]
    class PutAdminAccountRequest < Struct.new(
      nil,
      :admin_account,
      :admin_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps_list
    #   <p>The details of the Firewall Manager applications list to be created.</p>
    #   @return [Types::AppsListData]
    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class PutAppsListRequest < Struct.new(
      nil,
      :apps_list,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute apps_list
    #   <p>The details of the Firewall Manager applications list.</p>
    #   @return [Types::AppsListData]
    # @!attribute apps_list_arn
    #   <p>The Amazon Resource Name (ARN) of the applications list.</p>
    #   @return [String]
    class PutAppsListResponse < Struct.new(
      nil,
      :apps_list,
      :apps_list_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from
    #         Firewall Manager.</p>
    #   @return [String]
    # @!attribute sns_role_name
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record
    #         Firewall Manager activity. </p>
    #   @return [String]
    class PutNotificationChannelRequest < Struct.new(
      nil,
      :sns_topic_arn,
      :sns_role_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The details of the Firewall Manager policy to be created.</p>
    #   @return [Types::Policy]
    # @!attribute tag_list
    #   <p>The tags to add to the Amazon Web Services resource.</p>
    #   @return [Array<Types::Tag>]
    class PutPolicyRequest < Struct.new(
      nil,
      :policy,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The details of the Firewall Manager policy.</p>
    #   @return [Types::Policy]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    class PutPolicyResponse < Struct.new(
      nil,
      :policy,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocols_list
    #   <p>The details of the Firewall Manager protocols list to be created.</p>
    #   @return [Types::ProtocolsListData]
    # @!attribute tag_list
    #   <p>The tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class PutProtocolsListRequest < Struct.new(
      nil,
      :protocols_list,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute protocols_list
    #   <p>The details of the Firewall Manager protocols list.</p>
    #   @return [Types::ProtocolsListData]
    # @!attribute protocols_list_arn
    #   <p>The Amazon Resource Name (ARN) of the protocols list.</p>
    #   @return [String]
    class PutProtocolsListResponse < Struct.new(
      nil,
      :protocols_list,
      :protocols_list_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set
    #   <p>Details about the resource set to be created or updated.></p>
    #   @return [Types::ResourceSet]
    # @!attribute tag_list
    #   <p>Retrieves the tags associated with the specified resource set. Tags are key:value pairs that
    #            you can use to categorize and manage your resources, for purposes like billing. For
    #            example, you might set the tag key to "customer" and the value to the customer name or ID.
    #            You can specify one or more tags to add to each Amazon Web Services resource, up to 50 tags for a
    #            resource.</p>
    #   @return [Array<Types::Tag>]
    class PutResourceSetRequest < Struct.new(
      nil,
      :resource_set,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_set
    #   <p>Details about the resource set.</p>
    #   @return [Types::ResourceSet]
    # @!attribute resource_set_arn
    #   <p>The Amazon Resource Name (ARN) of the resource set.</p>
    #   @return [String]
    class PutResourceSetResponse < Struct.new(
      nil,
      :resource_set,
      :resource_set_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Amazon Web Services Regions that the specified Firewall Manager administrator can manage.</p>
    # @!attribute regions
    #   <p>The Amazon Web Services Regions that the specified Firewall Manager administrator can perform actions in.</p>
    #   @return [Array<String>]
    # @!attribute all_regions_enabled
    #   <p>Allows the specified Firewall Manager administrator to manage all Amazon Web Services Regions.</p>
    #   @return [Boolean]
    class RegionScope < Struct.new(
      nil,
      :regions,
      :all_regions_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:all_regions_enabled] = false unless options.key?(:all_regions_enabled)
        super
      end
    end

    # <p>Information about an individual action you can take to remediate a violation.</p>
    # @!attribute description
    #   <p>A description of a remediation action.</p>
    #   @return [String]
    # @!attribute ec2_create_route_action
    #   <p>Information about the CreateRoute action in the Amazon EC2 API.</p>
    #   @return [Types::EC2CreateRouteAction]
    # @!attribute ec2_replace_route_action
    #   <p>Information about the ReplaceRoute action in the Amazon EC2 API.</p>
    #   @return [Types::EC2ReplaceRouteAction]
    # @!attribute ec2_delete_route_action
    #   <p>Information about the DeleteRoute action in the Amazon EC2 API.</p>
    #   @return [Types::EC2DeleteRouteAction]
    # @!attribute ec2_copy_route_table_action
    #   <p>Information about the CopyRouteTable action in the Amazon EC2 API.</p>
    #   @return [Types::EC2CopyRouteTableAction]
    # @!attribute ec2_replace_route_table_association_action
    #   <p>Information about the ReplaceRouteTableAssociation action in the Amazon EC2 API.</p>
    #   @return [Types::EC2ReplaceRouteTableAssociationAction]
    # @!attribute ec2_associate_route_table_action
    #   <p>Information about the AssociateRouteTable action in the Amazon EC2 API.</p>
    #   @return [Types::EC2AssociateRouteTableAction]
    # @!attribute ec2_create_route_table_action
    #   <p>Information about the CreateRouteTable action in the Amazon EC2 API.</p>
    #   @return [Types::EC2CreateRouteTableAction]
    # @!attribute fms_policy_update_firewall_creation_config_action
    #   <p>The remedial action to take when updating a firewall configuration.</p>
    #   @return [Types::FMSPolicyUpdateFirewallCreationConfigAction]
    # @!attribute create_network_acl_action
    #   <p>Information about the <code>CreateNetworkAcl</code> action in Amazon EC2.</p>
    #   @return [Types::CreateNetworkAclAction]
    # @!attribute replace_network_acl_association_action
    #   <p>Information about the <code>ReplaceNetworkAclAssociation</code> action in Amazon EC2. </p>
    #   @return [Types::ReplaceNetworkAclAssociationAction]
    # @!attribute create_network_acl_entries_action
    #   <p>Information about the <code>CreateNetworkAclEntries</code> action in Amazon EC2.</p>
    #   @return [Types::CreateNetworkAclEntriesAction]
    # @!attribute delete_network_acl_entries_action
    #   <p>Information about the <code>DeleteNetworkAclEntries</code> action in Amazon EC2.</p>
    #   @return [Types::DeleteNetworkAclEntriesAction]
    class RemediationAction < Struct.new(
      nil,
      :description,
      :ec2_create_route_action,
      :ec2_replace_route_action,
      :ec2_delete_route_action,
      :ec2_copy_route_table_action,
      :ec2_replace_route_table_association_action,
      :ec2_associate_route_table_action,
      :ec2_create_route_table_action,
      :fms_policy_update_firewall_creation_config_action,
      :create_network_acl_action,
      :replace_network_acl_association_action,
      :create_network_acl_entries_action,
      :delete_network_acl_entries_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An ordered list of actions you can take to remediate a violation.</p>
    # @!attribute remediation_action
    #   <p>Information about an action you can take to remediate a violation.</p>
    #   @return [Types::RemediationAction]
    # @!attribute order
    #   <p>The order of the remediation actions in the list.</p>
    #   @return [Integer]
    class RemediationActionWithOrder < Struct.new(
      nil,
      :remediation_action,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:order] = 0 unless options.key?(:order)
        super
      end
    end

    # <p>Information about the <code>ReplaceNetworkAclAssociation</code> action in Amazon EC2. This is a remediation option in <code>RemediationAction</code>.</p>
    # @!attribute description
    #   <p>Brief description of this remediation action. </p>
    #   @return [String]
    # @!attribute association_id
    #   <p>Describes a remediation action target.</p>
    #   @return [Types::ActionTarget]
    # @!attribute network_acl_id
    #   <p>The network ACL that's associated with the remediation action.</p>
    #   @return [Types::ActionTarget]
    # @!attribute fms_can_remediate
    #   <p>Indicates whether it is possible for Firewall Manager to perform this remediation action. A false value indicates that auto remediation is disabled or Firewall Manager is unable to perform the action due to a conflict of some kind.</p>
    #   @return [Boolean]
    class ReplaceNetworkAclAssociationAction < Struct.new(
      nil,
      :description,
      :association_id,
      :network_acl_id,
      :fms_can_remediate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fms_can_remediate] = false unless options.key?(:fms_can_remediate)
        super
      end
    end

    # <p>Details of a resource that is associated to an Firewall Manager resource set.</p>
    # @!attribute uri
    #   <p>The resource's universal resource indicator (URI).</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The Amazon Web Services account ID that the associated resource belongs to.</p>
    #   @return [String]
    class Resource < Struct.new(
      nil,
      :uri,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of resources to include in a policy.</p>
    # @!attribute id
    #   <p>A unique identifier for the resource set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the resource set. You can't change the name of a resource set after you create it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the resource set.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Firewall Manager returns a token to your requests that access the resource set. The token marks the state of the resource set resource at the time of the request. Update tokens are not allowed when creating a resource set. After creation, each subsequent update call to the resource set requires the update token.
    #   </p>
    #            <p>To make an unconditional change to the resource set, omit the token in your update request. Without the token, Firewall Manager performs your updates regardless of whether the resource set has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the resource set, provide the token in your update request. Firewall Manager uses the token to ensure that the resource set hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the resource set again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute resource_type_list
    #   <p>Determines the resources that can be associated to the resource set. Depending on
    #            your setting for max results and the number of resource sets, a single call might not
    #            return the full list.</p>
    #   @return [Array<String>]
    # @!attribute last_update_time
    #   <p>The last time that the resource set was changed.</p>
    #   @return [Time]
    # @!attribute resource_set_status
    #   <p>Indicates whether the resource set is in or out of an admin's Region scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The administrator can manage and delete the resource set.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_ADMIN_SCOPE</code> - The administrator can view the resource set, but they can't edit or delete the resource set. Existing protections stay in place. Any new resource that come into scope of the resource set won't be protected.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ResourceSet < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :update_token,
      :resource_type_list,
      :last_update_time,
      :resource_set_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes the resource sets used in a policy.</p>
    # @!attribute id
    #   <p>A unique identifier for the resource set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The descriptive name of the resource set. You can't change the name of a resource set after you create it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the resource set.</p>
    #   @return [String]
    # @!attribute last_update_time
    #   <p>The last time that the resource set was changed.</p>
    #   @return [Time]
    # @!attribute resource_set_status
    #   <p>Indicates whether the resource set is in or out of an admin's Region scope.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The administrator can manage and delete the resource set.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUT_OF_ADMIN_SCOPE</code> - The administrator can view the resource set, but they can't edit or delete the resource set. Existing protections stay in place. Any new resource that come into scope of the resource set won't be protected.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ResourceSetSummary < Struct.new(
      nil,
      :id,
      :name,
      :description,
      :last_update_time,
      :resource_set_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource tags that Firewall Manager uses to determine if a particular resource
    #       should be included or excluded from the Firewall Manager policy. Tags enable you to
    #       categorize your Amazon Web Services resources in different ways, for example, by purpose, owner, or
    #       environment. Each tag consists of a key and an optional value. If you add more than one tag to a policy, you can 
    #       specify whether to combine them using the logical AND operator or the logical OR operator. For more information, see
    #     <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html">Working with Tag Editor</a>.</p>
    #          <p>Every resource tag must have a string value, either a non-empty string or an empty string. If you don't 
    #         provide a value for a resource tag, Firewall Manager saves the value as an empty string: "". When Firewall Manager compares tags, it only 
    #             matches two tags if they have the same key and the same value. A tag with an empty string value only 
    #             matches with tags that also have an empty string value. </p>
    # @!attribute key
    #   <p>The resource tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The resource tag value. To specify an empty string value, either don't provide this or specify it as "". </p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violation detail based on resource type.</p>
    # @!attribute aws_vpc_security_group_violation
    #   <p>Violation detail for security groups.</p>
    #   @return [Types::AwsVPCSecurityGroupViolation]
    # @!attribute aws_ec2_network_interface_violation
    #   <p>Violation detail for a network interface.</p>
    #   @return [Types::AwsEc2NetworkInterfaceViolation]
    # @!attribute aws_ec2_instance_violation
    #   <p>Violation detail for an EC2 instance.</p>
    #   @return [Types::AwsEc2InstanceViolation]
    # @!attribute network_firewall_missing_firewall_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a subnet has no Firewall Manager
    #           managed firewall in its VPC. </p>
    #   @return [Types::NetworkFirewallMissingFirewallViolation]
    # @!attribute network_firewall_missing_subnet_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that an Availability Zone is
    #          missing the expected Firewall Manager managed subnet.</p>
    #   @return [Types::NetworkFirewallMissingSubnetViolation]
    # @!attribute network_firewall_missing_expected_rt_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a subnet
    #         is not associated with the expected Firewall Manager managed route table. </p>
    #   @return [Types::NetworkFirewallMissingExpectedRTViolation]
    # @!attribute network_firewall_policy_modified_violation
    #   <p>Violation detail for an Network Firewall policy that indicates that a firewall policy
    #          in an individual account has been modified in a way that makes it noncompliant.
    #          For example, the individual account owner might have deleted a rule group,
    #          changed the priority of a stateless rule group, or changed a policy default action.</p>
    #   @return [Types::NetworkFirewallPolicyModifiedViolation]
    # @!attribute network_firewall_internet_traffic_not_inspected_violation
    #   <p>Violation detail for the subnet for which internet traffic hasn't been inspected.</p>
    #   @return [Types::NetworkFirewallInternetTrafficNotInspectedViolation]
    # @!attribute network_firewall_invalid_route_configuration_violation
    #   <p>The route configuration is invalid.</p>
    #   @return [Types::NetworkFirewallInvalidRouteConfigurationViolation]
    # @!attribute network_firewall_black_hole_route_detected_violation
    #   <p>Violation detail for an internet gateway route with an inactive state in the customer subnet route table or Network Firewall subnet route table.</p>
    #   @return [Types::NetworkFirewallBlackHoleRouteDetectedViolation]
    # @!attribute network_firewall_unexpected_firewall_routes_violation
    #   <p>There's an unexpected firewall route.</p>
    #   @return [Types::NetworkFirewallUnexpectedFirewallRoutesViolation]
    # @!attribute network_firewall_unexpected_gateway_routes_violation
    #   <p>There's an unexpected gateway route.</p>
    #   @return [Types::NetworkFirewallUnexpectedGatewayRoutesViolation]
    # @!attribute network_firewall_missing_expected_routes_violation
    #   <p>Expected routes are missing from Network Firewall.</p>
    #   @return [Types::NetworkFirewallMissingExpectedRoutesViolation]
    # @!attribute dns_rule_group_priority_conflict_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    #          tried to associate with a VPC has the same priority as a rule group that's already associated. </p>
    #   @return [Types::DnsRuleGroupPriorityConflictViolation]
    # @!attribute dns_duplicate_rule_group_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that a rule group that Firewall Manager
    #          tried to associate with a VPC is already associated with the VPC and can't be associated again. </p>
    #   @return [Types::DnsDuplicateRuleGroupViolation]
    # @!attribute dns_rule_group_limit_exceeded_violation
    #   <p>Violation detail for a DNS Firewall policy that indicates that the VPC reached the limit for associated DNS Firewall rule groups. Firewall Manager tried to associate another rule group with the VPC and failed. </p>
    #   @return [Types::DnsRuleGroupLimitExceededViolation]
    # @!attribute firewall_subnet_is_out_of_scope_violation
    #   <p>Contains details about the firewall subnet that violates the policy scope.</p>
    #   @return [Types::FirewallSubnetIsOutOfScopeViolation]
    # @!attribute route_has_out_of_scope_endpoint_violation
    #   <p>Contains details about the route endpoint that violates the policy scope.</p>
    #   @return [Types::RouteHasOutOfScopeEndpointViolation]
    # @!attribute third_party_firewall_missing_firewall_violation
    #   <p>The violation details for a third-party firewall that's been deleted.</p>
    #   @return [Types::ThirdPartyFirewallMissingFirewallViolation]
    # @!attribute third_party_firewall_missing_subnet_violation
    #   <p>The violation details for a third-party firewall's subnet that's been deleted.</p>
    #   @return [Types::ThirdPartyFirewallMissingSubnetViolation]
    # @!attribute third_party_firewall_missing_expected_route_table_violation
    #   <p>The violation details for a third-party firewall that has the Firewall Manager managed route table that was associated with the third-party firewall has been deleted.</p>
    #   @return [Types::ThirdPartyFirewallMissingExpectedRouteTableViolation]
    # @!attribute firewall_subnet_missing_vpc_endpoint_violation
    #   <p>The violation details for a third-party firewall's VPC endpoint subnet that was deleted.</p>
    #   @return [Types::FirewallSubnetMissingVPCEndpointViolation]
    # @!attribute invalid_network_acl_entries_violation
    #   <p>Violation detail for the entries in a network ACL resource.</p>
    #   @return [Types::InvalidNetworkAclEntriesViolation]
    # @!attribute possible_remediation_actions
    #   <p>A list of possible remediation action lists. Each individual possible remediation action is a list of individual remediation actions.</p>
    #   @return [Types::PossibleRemediationActions]
    # @!attribute web_acl_has_incompatible_configuration_violation
    #   <p>The violation details for a web ACL whose configuration is incompatible with the Firewall Manager policy. </p>
    #   @return [Types::WebACLHasIncompatibleConfigurationViolation]
    # @!attribute web_acl_has_out_of_scope_resources_violation
    #   <p>The violation details for a web ACL that's associated with at least one resource that's out of scope of the Firewall Manager policy. </p>
    #   @return [Types::WebACLHasOutOfScopeResourcesViolation]
    class ResourceViolation < Struct.new(
      nil,
      :aws_vpc_security_group_violation,
      :aws_ec2_network_interface_violation,
      :aws_ec2_instance_violation,
      :network_firewall_missing_firewall_violation,
      :network_firewall_missing_subnet_violation,
      :network_firewall_missing_expected_rt_violation,
      :network_firewall_policy_modified_violation,
      :network_firewall_internet_traffic_not_inspected_violation,
      :network_firewall_invalid_route_configuration_violation,
      :network_firewall_black_hole_route_detected_violation,
      :network_firewall_unexpected_firewall_routes_violation,
      :network_firewall_unexpected_gateway_routes_violation,
      :network_firewall_missing_expected_routes_violation,
      :dns_rule_group_priority_conflict_violation,
      :dns_duplicate_rule_group_violation,
      :dns_rule_group_limit_exceeded_violation,
      :firewall_subnet_is_out_of_scope_violation,
      :route_has_out_of_scope_endpoint_violation,
      :third_party_firewall_missing_firewall_violation,
      :third_party_firewall_missing_subnet_violation,
      :third_party_firewall_missing_expected_route_table_violation,
      :firewall_subnet_missing_vpc_endpoint_violation,
      :invalid_network_acl_entries_violation,
      :possible_remediation_actions,
      :web_acl_has_incompatible_configuration_violation,
      :web_acl_has_out_of_scope_resources_violation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a route in a route table.</p>
    # @!attribute destination_type
    #   <p>The type of destination for the route.</p>
    #   @return [String]
    # @!attribute target_type
    #   <p>The type of target for the route.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination of the route.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The route's target.</p>
    #   @return [String]
    class Route < Struct.new(
      nil,
      :destination_type,
      :target_type,
      :destination,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the route endpoint that violates the policy scope.</p>
    # @!attribute subnet_id
    #   <p>The ID of the subnet associated with the route that violates the policy scope.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC ID of the route that violates the policy scope.</p>
    #   @return [String]
    # @!attribute route_table_id
    #   <p>The ID of the route table.</p>
    #   @return [String]
    # @!attribute violating_routes
    #   <p>The list of routes that violate the route table.</p>
    #   @return [Array<Types::Route>]
    # @!attribute subnet_availability_zone
    #   <p>The subnet's Availability Zone.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone_id
    #   <p>The ID of the subnet's Availability Zone.</p>
    #   @return [String]
    # @!attribute current_firewall_subnet_route_table
    #   <p>The route table associated with the current firewall subnet.</p>
    #   @return [String]
    # @!attribute firewall_subnet_id
    #   <p>The ID of the firewall subnet.</p>
    #   @return [String]
    # @!attribute firewall_subnet_routes
    #   <p>The list of firewall subnet routes.</p>
    #   @return [Array<Types::Route>]
    # @!attribute internet_gateway_id
    #   <p>The ID of the Internet Gateway.</p>
    #   @return [String]
    # @!attribute current_internet_gateway_route_table
    #   <p>The current route table associated with the Internet Gateway.</p>
    #   @return [String]
    # @!attribute internet_gateway_routes
    #   <p>The routes in the route table associated with the Internet Gateway.</p>
    #   @return [Array<Types::Route>]
    class RouteHasOutOfScopeEndpointViolation < Struct.new(
      nil,
      :subnet_id,
      :vpc_id,
      :route_table_id,
      :violating_routes,
      :subnet_availability_zone,
      :subnet_availability_zone_id,
      :current_firewall_subnet_route_table,
      :firewall_subnet_id,
      :firewall_subnet_routes,
      :internet_gateway_id,
      :current_internet_gateway_route_table,
      :internet_gateway_routes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Remediation option for the rule specified in the <code>ViolationTarget</code>.</p>
    # @!attribute remediation_action_type
    #   <p>The remediation action that will be performed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Brief description of the action that will be performed.</p>
    #   @return [String]
    # @!attribute remediation_result
    #   <p>The final state of the rule specified in the <code>ViolationTarget</code> after it is remediated.</p>
    #   @return [Types::SecurityGroupRuleDescription]
    # @!attribute is_default_action
    #   <p>Indicates if the current action is the default action.</p>
    #   @return [Boolean]
    class SecurityGroupRemediationAction < Struct.new(
      nil,
      :remediation_action_type,
      :description,
      :remediation_result,
      :is_default_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default_action] = false unless options.key?(:is_default_action)
        super
      end
    end

    # <p>Describes a set of permissions for a security group rule.</p>
    # @!attribute ipv4_range
    #   <p>The IPv4 ranges for the security group rule.</p>
    #   @return [String]
    # @!attribute ipv6_range
    #   <p>The IPv6 ranges for the security group rule.</p>
    #   @return [String]
    # @!attribute prefix_list_id
    #   <p>The ID of the prefix list for the security group rule.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>, <code>icmpv6</code>) or number.</p>
    #   @return [String]
    # @!attribute from_port
    #   <p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. A value of <code>-1</code> indicates all ICMP/ICMPv6 types.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code. A value of <code>-1</code> indicates all ICMP/ICMPv6 codes.</p>
    #   @return [Integer]
    class SecurityGroupRuleDescription < Struct.new(
      nil,
      :ipv4_range,
      :ipv6_range,
      :prefix_list_id,
      :protocol,
      :from_port,
      :to_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the security service that is being used to protect the resources.</p>
    # @!attribute type
    #   <p>The service that the policy is using to protect the resources. This specifies the type of
    #         policy that is created, either an WAF policy, a Shield Advanced policy, or a security
    #         group policy. For security group policies, Firewall Manager supports one security group for
    #         each common policy and for each content audit policy. This is an adjustable limit that you can
    #         increase by contacting Amazon Web Services Support.</p>
    #   @return [String]
    # @!attribute managed_service_data
    #   <p>Details about the service that are specific to the service type, in JSON format. </p>
    #            <ul>
    #               <li>
    #                  <p>Example: <code>DNS_FIREWALL</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"DNS_FIREWALL\",\"preProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-1\",\"priority\":10}],\"postProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-2\",\"priority\":9911}]}"</code>
    #                  </p>
    #                  <note>
    #                     <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
    #                    values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Example: <code>IMPORT_NETWORK_FIREWALL</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"IMPORT_NETWORK_FIREWALL\",\"awsNetworkFirewallConfig\":{\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-west-2:000000000000:stateless-rulegroup\/rg1\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:drop\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:pass\"],\"networkFirewallStatelessCustomActions\":[],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-west-2:aws-managed:stateful-rulegroup\/ThreatSignaturesEmergingEventsStrictOrder\",\"priority\":8}],\"networkFirewallStatefulEngineOptions\":{\"ruleOrder\":\"STRICT_ORDER\"},\"networkFirewallStatefulDefaultActions\":[\"aws:drop_strict\"]}}"</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"DNS_FIREWALL\",\"preProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-1\",\"priority\":10}],\"postProcessRuleGroups\":[{\"ruleGroupId\":\"rslvr-frg-2\",\"priority\":9911}]}"</code>
    #                  </p>
    #                  <note>
    #                     <p>Valid values for <code>preProcessRuleGroups</code> are between 1 and 99. Valid
    #                    values for <code>postProcessRuleGroups</code> are between 9901 and 10000.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Centralized deployment
    #                model</p>
    #                  <p>
    #                     <code>"{\"type\":\"NETWORK_FIREWALL\",\"awsNetworkFirewallConfig\":{\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessCustomActions\":[{\"actionName\":\"customActionName\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"metricdimensionvalue\"}]}}}],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"}],\"networkFirewallLoggingConfiguration\":{\"logDestinationConfigs\":[{\"logDestinationType\":\"S3\",\"logType\":\"ALERT\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}},{\"logDestinationType\":\"S3\",\"logType\":\"FLOW\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}}],\"overrideExistingConfig\":true}},\"firewallDeploymentModel\":{\"centralizedFirewallDeploymentModel\":{\"centralizedFirewallOrchestrationConfig\":{\"inspectionVpcIds\":[{\"resourceId\":\"vpc-1234\",\"accountId\":\"123456789011\"}],\"firewallCreationConfig\":{\"endpointLocation\":{\"availabilityZoneConfigList\":[{\"availabilityZoneId\":null,\"availabilityZoneName\":\"us-east-1a\",\"allowedIPV4CidrList\":[\"10.0.0.0/28\"]}]}},\"allowedIPV4CidrList\":[]}}}}"</code>
    #                  </p>
    #                  <p> To use the centralized deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                   <code>CENTRALIZED</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 automatic Availability Zone configuration</p>
    #                  <p>
    #                     <code>
    #                   "{\"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessCustomActions\":[{\"actionName\":\"customActionName\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"metricdimensionvalue\"}]}}}],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"}],\"networkFirewallOrchestrationConfig\":{\"singleFirewallEndpointPerVPC\":false,\"allowedIPV4CidrList\":[\"10.0.0.0/28\",\"192.168.0.0/28\"],\"routeManagementAction\":\"OFF\"},\"networkFirewallLoggingConfiguration\":{\"logDestinationConfigs\":[{\"logDestinationType\":\"S3\",\"logType\":\"ALERT\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}},{\"logDestinationType\":\"S3\",\"logType\":\"FLOW\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}}],\"overrideExistingConfig\":true}}"
    #                 </code>
    #                  </p>
    #                  <p> With automatic Availbility Zone configuration, Firewall Manager chooses which Availability Zones to create the endpoints in. To use the distributed deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                    <code>NULL</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 automatic Availability Zone configuration and route management</p>
    #                  <p>
    #                     <code>
    #                   "{\"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessCustomActions\":[{\"actionName\":\"customActionName\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"metricdimensionvalue\"}]}}}],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"}],\"networkFirewallOrchestrationConfig\":{\"singleFirewallEndpointPerVPC\":false,\"allowedIPV4CidrList\":[\"10.0.0.0/28\",\"192.168.0.0/28\"],\"routeManagementAction\":\"MONITOR\",\"routeManagementTargetTypes\":[\"InternetGateway\"]},\"networkFirewallLoggingConfiguration\":{\"logDestinationConfigs\":[{\"logDestinationType\":\"S3\",\"logType\":\"ALERT\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}},{\"logDestinationType\":\"S3\",\"logType\": \"FLOW\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}}],\"overrideExistingConfig\":true}}"
    #                 </code>
    #                  </p>
    #                  <p>To use the distributed deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                    <code>NULL</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 custom Availability Zone configuration</p>
    #                  <p>
    #                     <code>"{\"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:forward_to_sfe\",\"fragmentcustomactionname\"],\"networkFirewallStatelessCustomActions\":[{\"actionName\":\"customActionName\", \"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"metricdimensionvalue\"}]}}},{\"actionName\":\"fragmentcustomactionname\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"fragmentmetricdimensionvalue\"}]}}}],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"}],\"networkFirewallOrchestrationConfig\":{\"firewallCreationConfig\":{ \"endpointLocation\":{\"availabilityZoneConfigList\":[{\"availabilityZoneName\":\"us-east-1a\",\"allowedIPV4CidrList\":[\"10.0.0.0/28\"]},{\"availabilityZoneName\":\"us-east-1b\",\"allowedIPV4CidrList\":[ \"10.0.0.0/28\"]}]} },\"singleFirewallEndpointPerVPC\":false,\"allowedIPV4CidrList\":null,\"routeManagementAction\":\"OFF\",\"networkFirewallLoggingConfiguration\":{\"logDestinationConfigs\":[{\"logDestinationType\":\"S3\",\"logType\":\"ALERT\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}},{\"logDestinationType\":\"S3\",\"logType\":\"FLOW\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}}],\"overrideExistingConfig\":boolean}}"
    #                 </code>
    #                  </p>
    #                  <p>
    #                With custom Availability Zone configuration,
    #                you define which specific Availability Zones to create endpoints in by configuring
    #                   <code>firewallCreationConfig</code>. To configure the Availability Zones in <code>firewallCreationConfig</code>, specify either the <code>availabilityZoneName</code> or <code>availabilityZoneId</code> parameter, not both parameters.
    #              </p>
    #                  <p>To use the distributed deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                    <code>NULL</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>NETWORK_FIREWALL</code> - Distributed deployment model with
    #                 custom Availability Zone configuration and route management</p>
    #                  <p>
    #                     <code>"{\"type\":\"NETWORK_FIREWALL\",\"networkFirewallStatelessRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateless-rulegroup/test\",\"priority\":1}],\"networkFirewallStatelessDefaultActions\":[\"aws:forward_to_sfe\",\"customActionName\"],\"networkFirewallStatelessFragmentDefaultActions\":[\"aws:forward_to_sfe\",\"fragmentcustomactionname\"],\"networkFirewallStatelessCustomActions\":[{\"actionName\":\"customActionName\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"metricdimensionvalue\"}]}}},{\"actionName\":\"fragmentcustomactionname\",\"actionDefinition\":{\"publishMetricAction\":{\"dimensions\":[{\"value\":\"fragmentmetricdimensionvalue\"}]}}}],\"networkFirewallStatefulRuleGroupReferences\":[{\"resourceARN\":\"arn:aws:network-firewall:us-east-1:123456789011:stateful-rulegroup/test\"}],\"networkFirewallOrchestrationConfig\":{\"firewallCreationConfig\":{\"endpointLocation\":{\"availabilityZoneConfigList\":[{\"availabilityZoneName\":\"us-east-1a\",\"allowedIPV4CidrList\":[\"10.0.0.0/28\"]},{\"availabilityZoneName\":\"us-east-1b\",\"allowedIPV4CidrList\":[\"10.0.0.0/28\"]}]}},\"singleFirewallEndpointPerVPC\":false,\"allowedIPV4CidrList\":null,\"routeManagementAction\":\"MONITOR\",\"routeManagementTargetTypes\":[\"InternetGateway\"],\"routeManagementConfig\":{\"allowCrossAZTrafficIfNoEndpoint\":true}},\"networkFirewallLoggingConfiguration\":{\"logDestinationConfigs\":[{\"logDestinationType\":\"S3\",\"logType\":\"ALERT\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}},{\"logDestinationType\":\"S3\",\"logType\":\"FLOW\",\"logDestination\":{\"bucketName\":\"s3-bucket-name\"}}],\"overrideExistingConfig\":boolean}}"
    #                 </code>
    #                  </p>
    #                  <p>To use the distributed deployment model, you must set <a href="https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_PolicyOption.html">PolicyOption</a> to
    #                    <code>NULL</code>. </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_COMMON</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_COMMON\",\"securityGroups\":[{\"id\":\"sg-03b1f67d69ed00197\"}],\"revertManualSecurityGroupChanges\":true,\"exclusiveResourceSecurityGroupManagement\":true,\"applyToAllEC2InstanceENIs\":false,\"includeSharedVPC\":true,\"enableSecurityGroupReferencesDistribution\":true}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_COMMON</code> - Security group tag distribution
    #              </p>
    #                  <p>
    #                     <code>""{\"type\":\"SECURITY_GROUPS_COMMON\",\"securityGroups\":[{\"id\":\"sg-000e55995d61a06bd\"}],\"revertManualSecurityGroupChanges\":true,\"exclusiveResourceSecurityGroupManagement\":false,\"applyToAllEC2InstanceENIs\":false,\"includeSharedVPC\":false,\"enableTagDistribution\":true}""</code>
    #                  </p>
    #                  <p>
    #                Firewall Manager automatically distributes tags from the primary group to the security groups created by this policy. To use security group tag distribution, you must also set <code>revertManualSecurityGroupChanges</code> to <code>true</code>, otherwise Firewall Manager won't be able to create the policy. When you enable <code>revertManualSecurityGroupChanges</code>, Firewall Manager identifies and reports when the security groups created by this policy become non-compliant.
    #              </p>
    #                  <p>
    #                Firewall Manager won't distribute system tags added by Amazon Web Services services into the replica security groups. System tags begin with the <code>aws:</code> prefix.
    #              </p>
    #               </li>
    #               <li>
    #                  <p>Example: Shared VPCs. Apply the preceding policy to resources in shared VPCs as
    #                 well as to those in VPCs that the account owns </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_COMMON\",\"revertManualSecurityGroupChanges\":false,\"exclusiveResourceSecurityGroupManagement\":false,
    #                    \"applyToAllEC2InstanceENIs\":false,\"includeSharedVPC\":true,\"securityGroups\":[{\"id\":\"
    #                    sg-000e55995d61a06bd\"}]}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_CONTENT_AUDIT</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_CONTENT_AUDIT\",\"preManagedOptions\":[{\"denyProtocolAllValue\":true},{\"auditSgDirection\":{\"type\":\"ALL\"}}],\"securityGroups\":[{\"id\":\"sg-049b2393a25468971\"}],\"securityGroupAction\":{\"type\":\"ALLOW\"}}"</code>
    #                  </p>
    #                  <p>The security group action for content audit can be <code>ALLOW</code> or
    #                    <code>DENY</code>. For <code>ALLOW</code>, all in-scope security group rules must
    #                 be within the allowed range of the policy's security group rules. For
    #                    <code>DENY</code>, all in-scope security group rules must not contain a value or a
    #                 range that matches a rule value or range in the policy security group.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SECURITY_GROUPS_USAGE_AUDIT</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"type\":\"SECURITY_GROUPS_USAGE_AUDIT\",\"deleteUnusedSecurityGroups\":true,\"coalesceRedundantSecurityGroups\":true,\"optionalDelayForUnusedInMinutes\":60}"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>SHIELD_ADVANCED</code> with web ACL management</p>
    #                  <p>
    #                     <code>"{\"type\":\"SHIELD_ADVANCED\",\"optimizeUnassociatedWebACL\":true}"</code>
    #                  </p>
    #                  <p>If you set <code>optimizeUnassociatedWebACL</code> to <code>true</code>, Firewall Manager creates web ACLs in accounts within the policy scope if the web ACLs will be used by at least one resource. Firewall Manager creates web ACLs in the accounts within policy scope only if the web ACLs will be used by at least one resource. If at any time an account comes into policy scope, Firewall Manager automatically creates a web ACL in the account if at least one resource will use the web ACL.</p>
    #                  <p>Upon enablement, Firewall Manager performs a one-time cleanup of unused web ACLs in your account. The cleanup process can take several hours. If a resource leaves policy scope after Firewall Manager creates a web ACL, Firewall Manager doesn't disassociate the resource from the web ACL. If you want Firewall Manager to clean up the web ACL, you must first manually disassociate the resources from the web ACL, and then enable the manage unused web ACLs option in your policy.</p>
    #                  <p>If you set <code>optimizeUnassociatedWebACL</code> to <code>false</code>, and Firewall Manager automatically creates an empty web ACL in each account that's within policy scope.</p>
    #               </li>
    #               <li>
    #                  <p>Specification for <code>SHIELD_ADVANCED</code> for Amazon CloudFront distributions </p>
    #                  <p>
    #                     <code>"{\"type\":\"SHIELD_ADVANCED\",\"automaticResponseConfiguration\": {\"automaticResponseStatus\":\"ENABLED|IGNORED|DISABLED\", \"automaticResponseAction\":\"BLOCK|COUNT\"}, \"overrideCustomerWebaclClassic\":true|false, \"optimizeUnassociatedWebACL\":true|false}"</code>
    #                  </p>
    #                  <p>For example:
    #                    <code>"{\"type\":\"SHIELD_ADVANCED\",\"automaticResponseConfiguration\":
    #                    {\"automaticResponseStatus\":\"ENABLED\",
    #                    \"automaticResponseAction\":\"COUNT\"}}"</code>
    #                  </p>
    #                  <p>The default value for <code>automaticResponseStatus</code> is
    #                    <code>IGNORED</code>. The value for <code>automaticResponseAction</code> is only
    #                 required when <code>automaticResponseStatus</code> is set to <code>ENABLED</code>.
    #                 The default value for <code>overrideCustomerWebaclClassic</code> is
    #                    <code>false</code>.</p>
    #                  <p>For other resource types that you can protect with a Shield Advanced policy, this
    #                    <code>ManagedServiceData</code> configuration is an empty string.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>THIRD_PARTY_FIREWALL</code>
    #                  </p>
    #                  <p>Replace <code>THIRD_PARTY_FIREWALL_NAME</code> with the name of the third-party firewall.</p>
    #                  <p>
    #                     <code>"{
    #                 "type":"THIRD_PARTY_FIREWALL",
    #                 "thirdPartyFirewall":"THIRD_PARTY_FIREWALL_NAME",
    #                 "thirdPartyFirewallConfig":{
    #                   "thirdPartyFirewallPolicyList":["global-1"]
    #                 },
    #   	          "firewallDeploymentModel":{
    #                   "distributedFirewallDeploymentModel":{
    #                     "distributedFirewallOrchestrationConfig":{
    #                       "firewallCreationConfig":{
    #                         "endpointLocation":{
    #                           "availabilityZoneConfigList":[
    #                             {
    #                               "availabilityZoneName":"${AvailabilityZone}"
    #                             }
    #                           ]
    #                         }
    #                       },
    #                       "allowedIPV4CidrList":[
    #                       ]
    #                     }
    #                   }
    #                 }
    #               }"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code> - Account takeover prevention, Bot Control managed rule groups, optimize unassociated web ACL, and rule action override
    #              </p>
    #                  <p>
    #                     <code>"{\"type\":\"WAFV2\",\"preProcessRuleGroups\":[{\"ruleGroupArn\":null,\"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\":{\"versionEnabled\":null,\"version\":null,\"vendorName\":\"AWS\",\"managedRuleGroupName\":\"AWSManagedRulesATPRuleSet\",\"managedRuleGroupConfigs\":[{\"awsmanagedRulesATPRuleSet\":{\"loginPath\":\"/loginpath\",\"requestInspection\":{\"payloadType\":\"FORM_ENCODED|JSON\",\"usernameField\":{\"identifier\":\"/form/username\"},\"passwordField\":{\"identifier\":\"/form/password\"}}}}]},\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[],\"sampledRequestsEnabled\":true},{\"ruleGroupArn\":null,\"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\":{\"versionEnabled\":null,\"version\":null,\"vendorName\":\"AWS\",\"managedRuleGroupName\":\"AWSManagedRulesBotControlRuleSet\",\"managedRuleGroupConfigs\":[{\"awsmanagedRulesBotControlRuleSet\":{\"inspectionLevel\":\"TARGETED|COMMON\"}}]},\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[],\"sampledRequestsEnabled\":true,\"ruleActionOverrides\":[{\"name\":\"Rule1\",\"actionToUse\":{\"allow|block|count|captcha|challenge\":{}}},{\"name\":\"Rule2\",\"actionToUse\":{\"allow|block|count|captcha|challenge\":{}}}]}],\"postProcessRuleGroups\":[],\"defaultAction\":{\"type\":\"ALLOW\"},\"customRequestHandling\":null,\"customResponse\":null,\"overrideCustomerWebACLAssociation\":false,\"loggingConfiguration\":null,\"sampledRequestsEnabledForDefaultActions\":true,\"optimizeUnassociatedWebACL\":true}"</code>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>Bot Control - For information about <code>AWSManagedRulesBotControlRuleSet</code> managed rule groups, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_AWSManagedRulesBotControlRuleSet.html">AWSManagedRulesBotControlRuleSet</a> in the <i>WAF API Reference</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Fraud Control account takeover prevention (ATP) - For information about the properties available for <code>AWSManagedRulesATPRuleSet</code> managed rule groups, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_AWSManagedRulesATPRuleSet.html">AWSManagedRulesATPRuleSet</a> in the <i>WAF API Reference</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>Optimize unassociated web ACL - If you set <code>optimizeUnassociatedWebACL</code> to <code>true</code>, Firewall Manager creates web ACLs in accounts within the policy scope if the web ACLs will be used by at least one resource. Firewall Manager creates web ACLs in the accounts within policy scope only if the web ACLs will be used by at least one resource. If at any time an account comes into policy scope, Firewall Manager automatically creates a web ACL in the account if at least one resource will use the web ACL.</p>
    #                        <p>Upon enablement, Firewall Manager performs a one-time cleanup of unused web ACLs in your account. The cleanup process can take several hours. If a resource leaves policy scope after Firewall Manager creates a web ACL, Firewall Manager disassociates the resource from the web ACL, but won't clean up the unused web ACL. Firewall Manager only cleans up unused web ACLs when you first enable management of unused web ACLs in a policy.</p>
    #                        <p>If you set <code>optimizeUnassociatedWebACL</code> to <code>false</code> Firewall Manager doesn't manage unused web ACLs, and Firewall Manager automatically creates an empty web ACL in each account that's within policy scope.</p>
    #                     </li>
    #                     <li>
    #                        <p>Rule action overrides - Firewall Manager supports rule action overrides only for managed rule groups. To configure a <code>RuleActionOverrides</code> add the <code>Name</code> of the rule to override, and <code>ActionToUse</code>, which is the new action to use for the rule. For information about using rule action override, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_RuleActionOverride.html">RuleActionOverride</a> in the <i>WAF API Reference</i>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code> -  <code>CAPTCHA</code> and <code>Challenge</code> configs
    #              </p>
    #                  <p>
    #                     <code>"{\"type\":\"WAFV2\",\"preProcessRuleGroups\":[{\"ruleGroupArn\":null,\"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\":{\"versionEnabled\":null,\"version\":null,\"vendorName\":\"AWS\",\"managedRuleGroupName\":\"AWSManagedRulesAdminProtectionRuleSet\"},\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[],\"sampledRequestsEnabled\":true}],\"postProcessRuleGroups\":[],\"defaultAction\":{\"type\":\"ALLOW\"},\"customRequestHandling\":null,\"customResponse\":null,\"overrideCustomerWebACLAssociation\":false,\"loggingConfiguration\":null,\"sampledRequestsEnabledForDefaultActions\":true,\"captchaConfig\":{\"immunityTimeProperty\":{\"immunityTime\":500}},\"challengeConfig\":{\"immunityTimeProperty\":{\"immunityTime\":800}},\"tokenDomains\":[\"google.com\",\"amazon.com\"],\"associationConfig\":{\"requestBody\":{\"CLOUDFRONT\":{\"defaultSizeInspectionLimit\":\"KB_16\"}}}}"</code>
    #                  </p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CAPTCHA</code> and <code>Challenge</code> configs - If you update the policy's values for <code>associationConfig</code>, <code>captchaConfig</code>, <code>challengeConfig</code>, or <code>tokenDomains</code>, Firewall Manager will overwrite your local web ACLs to contain the new value(s). However, if you don't update the policy's <code>associationConfig</code>, <code>captchaConfig</code>, <code>challengeConfig</code>, or <code>tokenDomains</code> values, the values in your local web ACLs will remain unchanged. For information about association configs, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_AssociationConfig.html">AssociationConfig</a>. For information about CAPTCHA and Challenge configs, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_CaptchaConfig.html">CaptchaConfig</a> and <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_ChallengeConfig.html">ChallengeConfig</a> in the <i>WAF API Reference</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>defaultSizeInspectionLimit</code> - Specifies the maximum size of the web request body component that an associated Amazon CloudFront distribution should send to WAF for inspection. For more information, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_RequestBodyAssociatedResourceTypeConfig.html#WAF-Type-RequestBodyAssociatedResourceTypeConfig-DefaultSizeInspectionLimit">DefaultSizeInspectionLimit</a> in the <i>WAF API Reference</i>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code> -  Firewall Manager support for WAF managed rule group versioning
    #             </p>
    #                  <p>
    #                     <code>"{\"preProcessRuleGroups\":[{\"ruleGroupType\":\"ManagedRuleGroup\",\"overrideAction\":{\"type\":\"NONE\"},\"sampledRequestsEnabled\":true,\"managedRuleGroupIdentifier\":{\"managedRuleGroupName\":\"AWSManagedRulesAdminProtectionRuleSet\",\"vendorName\":\"AWS\",\"managedRuleGroupConfigs\":null}}],\"postProcessRuleGroups\":[],\"defaultAction\":{\"type\":\"ALLOW\"},\"customRequestHandling\":null,\"tokenDomains\":null,\"customResponse\":null,\"type\":\"WAFV2\",\"overrideCustomerWebACLAssociation\":false,\"sampledRequestsEnabledForDefaultActions\":true,\"optimizeUnassociatedWebACL\":true,\"webACLSource\":\"RETROFIT_EXISTING\"}"</code>
    #                  </p>
    #                  <p>
    #               To use a specific version of a WAF managed rule group in your Firewall Manager policy, you must set <code>versionEnabled</code> to <code>true</code>, and set <code>version</code> to the version you'd like to use. If you don't set <code>versionEnabled</code> to <code>true</code>, or if you omit <code>versionEnabled</code>, then Firewall Manager uses the default version of the WAF managed rule group.
    #             </p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAFV2</code> - Logging configurations
    #              </p>
    #                  <p>
    #                     <code>"{\"type\":\"WAFV2\",\"preProcessRuleGroups\":[{\"ruleGroupArn\":null, \"overrideAction\":{\"type\":\"NONE\"},\"managedRuleGroupIdentifier\": {\"versionEnabled\":null,\"version\":null,\"vendorName\":\"AWS\", \"managedRuleGroupName\":\"AWSManagedRulesAdminProtectionRuleSet\"} ,\"ruleGroupType\":\"ManagedRuleGroup\",\"excludeRules\":[], \"sampledRequestsEnabled\":true}],\"postProcessRuleGroups\":[], \"defaultAction\":{\"type\":\"ALLOW\"},\"customRequestHandling\" :null,\"customResponse\":null,\"overrideCustomerWebACLAssociation\" :false,\"loggingConfiguration\":{\"logDestinationConfigs\": [\"arn:aws:s3:::aws-waf-logs-example-bucket\"] ,\"redactedFields\":[],\"loggingFilterConfigs\":{\"defaultBehavior\":\"KEEP\", \"filters\":[{\"behavior\":\"KEEP\",\"requirement\":\"MEETS_ALL\", \"conditions\":[{\"actionCondition\":\"CAPTCHA\"},{\"actionCondition\": \"CHALLENGE\"}, {\"actionCondition\":\"EXCLUDED_AS_COUNT\"}]}]}},\"sampledRequestsEnabledForDefaultActions\":true}"</code>
    #                  </p>
    #                  <p>Firewall Manager supports Amazon Kinesis Data Firehose and Amazon S3 as the <code>logDestinationConfigs</code> in your <code>loggingConfiguration</code>. For information about WAF logging configurations, see <a href="https://docs.aws.amazon.com/waf/latest/APIReference/API_LoggingConfiguration.html">LoggingConfiguration</a> in the <i>WAF API Reference</i>
    #                  </p>
    #                  <p>In the <code>loggingConfiguration</code>, you can specify one
    #                    <code>logDestinationConfigs</code>. Optionally provide as many as 20
    #                    <code>redactedFields</code>. The <code>RedactedFieldType</code> must be one of
    #                    <code>URI</code>, <code>QUERY_STRING</code>, <code>HEADER</code>, or
    #                    <code>METHOD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Example: <code>WAF Classic</code>
    #                  </p>
    #                  <p>
    #                     <code>"{\"ruleGroups\":[{\"id\":\"78cb36c0-1b5e-4d7d-82b2-cf48d3ad9659\",\"overrideAction\":{\"type\":\"NONE\"}}],\"overrideCustomerWebACLAssociation\":true,\"defaultAction\":{\"type\":\"ALLOW\"},\"type\":\"WAF\"}"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute policy_option
    #   <p>Contains the settings to configure a network ACL policy, a Network Firewall firewall policy deployment model, or a third-party firewall policy.</p>
    #   @return [Types::PolicyOption]
    class SecurityServicePolicyData < Struct.new(
      nil,
      :type,
      :managed_service_data,
      :policy_option,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the handling of the stateful rule groups in a Network Firewall firewall policy.</p>
    # @!attribute rule_order
    #   <p>Indicates how to manage the order of stateful rule evaluation for the policy.
    #   Stateful rules are provided to the rule engine
    #   as Suricata compatible strings, and Suricata evaluates them based on certain settings. For more
    #   information, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html">Evaluation order for stateful rules</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #            <p>Default: <code>DEFAULT_ACTION_ORDER</code>
    #            </p>
    #   @return [String]
    # @!attribute stream_exception_policy
    #   <p>Indicates how Network Firewall should handle traffic when a network connection breaks midstream.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DROP</code> - Fail closed and drop all subsequent traffic going to the firewall.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Continue to apply rules to subsequent traffic without context from traffic before the break. This impacts the behavior of rules that depend on context. For example, with a stateful rule that drops HTTP traffic, Network Firewall won't match subsequent traffic because the it won't have the context from session initialization, which defines the application layer protocol as HTTP. However, a TCP-layer rule using a <code>flow:stateless</code> rule would still match, and so would the <code>aws:drop_strict</code> default action. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECT</code> - Fail closed and drop all subsequent traffic going to the firewall. With this option, Network Firewall also sends a TCP reject packet back to the client so the client can immediately establish a new session. With the new session, Network Firewall will have context and will apply rules appropriately.</p>
    #                  <p>For applications that are reliant on long-lived TCP connections that trigger Gateway Load Balancer idle timeouts, this is the recommended setting. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FMS_IGNORE</code> - Firewall Manager doesn't monitor or modify the Network Firewall stream exception policy settings. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see 
    #         <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/stream-exception-policy.html">Stream exception policy in your firewall policy</a> 
    #             in the <i>Network Firewall Developer Guide</i>.</p>
    #            <p>Default: <code>FMS_IGNORE</code>
    #            </p>
    #   @return [String]
    class StatefulEngineOptions < Struct.new(
      nil,
      :rule_order,
      :stream_exception_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network Firewall stateful rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>
    # @!attribute rule_group_name
    #   <p>The name of the rule group.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the rule group.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>An integer setting that indicates the order in which to run the stateful rule groups in a single
    #   Network Firewall firewall policy. This setting only applies to firewall policies that specify the <code>STRICT_ORDER</code>
    #   rule order in the stateful engine options settings.</p>
    #            <p>
    #     Network Firewall evalutes each stateful rule group against a packet starting with the group that has
    #   the lowest priority setting. You must ensure that the priority settings are unique within each policy. For information about
    #   </p>
    #            <p>
    #     You can change the priority settings of your rule groups at any time. To make it easier to insert rule
    #   groups later, number them so there's a wide range in between, for example use 100, 200, and so on.
    #   </p>
    #   @return [Integer]
    # @!attribute override
    #   <p>The action that allows the policy owner to override the behavior of the rule group within a policy.</p>
    #   @return [Types::NetworkFirewallStatefulRuleGroupOverride]
    class StatefulRuleGroup < Struct.new(
      nil,
      :rule_group_name,
      :resource_id,
      :priority,
      :override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network Firewall stateless rule group, used in a <a>NetworkFirewallPolicyDescription</a>. </p>
    # @!attribute rule_group_name
    #   <p>The name of the rule group.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the rule group.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule group. Network Firewall evaluates the stateless rule groups in a firewall policy starting from the lowest priority setting. </p>
    #   @return [Integer]
    class StatelessRuleGroup < Struct.new(
      nil,
      :rule_group_name,
      :resource_id,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of key:value pairs associated with an Amazon Web Services resource. The key:value pair can be anything you define. Typically, the tag key represents a category (such as "environment") and the tag value represents a specific value within that category (such as "test," "development," or "production"). You can add up to 50 tags to each Amazon Web Services resource.  </p>
    # @!attribute key
    #   <p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as "customer." Tag keys are case-sensitive.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as "companyA" or "companyB." Tag values are case-sensitive.  </p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>The tags to add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the third-party firewall's firewall policy.</p>
    # @!attribute firewall_policy_id
    #   <p>The ID of the specified firewall policy.</p>
    #   @return [String]
    # @!attribute firewall_policy_name
    #   <p>The name of the specified firewall policy.</p>
    #   @return [String]
    class ThirdPartyFirewallFirewallPolicy < Struct.new(
      nil,
      :firewall_policy_id,
      :firewall_policy_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details for a third-party firewall that's not associated with an Firewall Manager managed route table.</p>
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a fireawll subnet that's causing the violation.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the firewall subnet that's causing the violation.</p>
    #   @return [String]
    # @!attribute current_route_table
    #   <p>The resource ID of the current route table that's associated with the subnet, if one is available.</p>
    #   @return [String]
    # @!attribute expected_route_table
    #   <p>The resource ID of the route table that should be associated with the subnet.</p>
    #   @return [String]
    class ThirdPartyFirewallMissingExpectedRouteTableViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :current_route_table,
      :expected_route_table,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details about a third-party firewall's subnet that doesn't have a Firewall Manager managed firewall in its VPC.</p>
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall that's causing the violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a third-party firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the third-party firewall that's causing the violation.</p>
    #   @return [String]
    # @!attribute target_violation_reason
    #   <p>The reason the resource is causing this violation, if a reason is available.</p>
    #   @return [String]
    class ThirdPartyFirewallMissingFirewallViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details for a third-party firewall for an Availability Zone that's missing the Firewall Manager managed subnet.</p>
    # @!attribute violation_target
    #   <p>The ID of the third-party firewall or VPC resource that's causing the violation.</p>
    #   @return [String]
    # @!attribute vpc
    #   <p>The resource ID of the VPC associated with a subnet that's causing the violation.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of a subnet that's causing the violation.</p>
    #   @return [String]
    # @!attribute target_violation_reason
    #   <p>The reason the resource is causing the violation, if a reason is available.</p>
    #   @return [String]
    class ThirdPartyFirewallMissingSubnetViolation < Struct.new(
      nil,
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the deployment model for the third-party firewall.</p>
    # @!attribute firewall_deployment_model
    #   <p>Defines the deployment model to use for the third-party firewall policy.</p>
    #   @return [String]
    class ThirdPartyFirewallPolicy < Struct.new(
      nil,
      :firewall_deployment_model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.</p>
    # @!attribute policy_id
    #   <p>The ID of the Firewall Manager policy that the violation details were requested for.</p>
    #   @return [String]
    # @!attribute member_account
    #   <p>The Amazon Web Services account that the violation details were requested for.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID that the violation details were requested for.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type that the violation details were requested for.</p>
    #   @return [String]
    # @!attribute resource_violations
    #   <p>List of violations for the requested resource.</p>
    #   @return [Array<Types::ResourceViolation>]
    # @!attribute resource_tags
    #   <p>The <code>ResourceTag</code> objects associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute resource_description
    #   <p>Brief description for the requested resource.</p>
    #   @return [String]
    class ViolationDetail < Struct.new(
      nil,
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      :resource_violations,
      :resource_tags,
      :resource_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details for a web ACL whose configuration is incompatible with the Firewall Manager policy. </p>
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Information about the problems that Firewall Manager encountered with the web ACL configuration. </p>
    #   @return [String]
    class WebACLHasIncompatibleConfigurationViolation < Struct.new(
      nil,
      :web_acl_arn,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The violation details for a web ACL that's associated with at least one resource that's out of scope of the Firewall Manager policy. </p>
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the web ACL. </p>
    #   @return [String]
    # @!attribute out_of_scope_resource_list
    #   <p>An array of Amazon Resource Name (ARN) for the resources that are out of scope of the policy and are associated with the web ACL. </p>
    #   @return [Array<String>]
    class WebACLHasOutOfScopeResourcesViolation < Struct.new(
      nil,
      :web_acl_arn,
      :out_of_scope_resource_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
