# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FMS
  module Types

    # Describes a remediation action target.
    #
    # @!attribute [rw] resource_id
    #   The ID of the remediation target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the remediation action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :resource_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # An individual Firewall Manager application.
    #
    # @note When making an API call, you may pass App
    #   data as a hash:
    #
    #       {
    #         app_name: "ResourceName", # required
    #         protocol: "Protocol", # required
    #         port: 1, # required
    #       }
    #
    # @!attribute [rw] app_name
    #   The application's name.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name or number. The name can be one of `tcp`, `udp`,
    #   or `icmp`. For information on possible numbers, see [Protocol
    #   Numbers][1].
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The application's port number, for example `80`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/App AWS API Documentation
    #
    class App < Struct.new(
      :app_name,
      :protocol,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Firewall Manager applications list.
    #
    # @note When making an API call, you may pass AppsListData
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId",
    #         list_name: "ResourceName", # required
    #         list_update_token: "UpdateToken",
    #         create_time: Time.now,
    #         last_update_time: Time.now,
    #         apps_list: [ # required
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           },
    #         ],
    #         previous_apps_list: {
    #           "PreviousListVersion" => [
    #             {
    #               app_name: "ResourceName", # required
    #               protocol: "Protocol", # required
    #               port: 1, # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the Firewall Manager applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the Firewall Manager applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_update_token
    #   A unique identifier for each update to the list. When you update the
    #   list, the update token must match the token of the current version
    #   of the application list. You can retrieve the update token by
    #   getting the list.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the Firewall Manager applications list was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the Firewall Manager applications list was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] apps_list
    #   An array of applications in the Firewall Manager applications list.
    #   @return [Array<Types::App>]
    #
    # @!attribute [rw] previous_apps_list
    #   A map of previous version numbers to their corresponding `App`
    #   object arrays.
    #   @return [Hash<String,Array<Types::App>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AppsListData AWS API Documentation
    #
    class AppsListData < Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :apps_list,
      :previous_apps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Firewall Manager applications list.
    #
    # @!attribute [rw] list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_id
    #   The ID of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] apps_list
    #   An array of `App` objects in the Firewall Manager applications list.
    #   @return [Array<Types::App>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AppsListDataSummary AWS API Documentation
    #
    class AppsListDataSummary < Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :apps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] admin_account
    #   The Amazon Web Services account ID to associate with Firewall
    #   Manager as the Firewall Manager administrator account. This must be
    #   an Organizations member account. For more information about
    #   Organizations, see [Managing the Amazon Web Services Accounts in
    #   Your Organization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AssociateAdminAccountRequest AWS API Documentation
    #
    class AssociateAdminAccountRequest < Struct.new(
      :admin_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for an EC2 instance resource.
    #
    # @!attribute [rw] violation_target
    #   The resource ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] aws_ec2_network_interface_violations
    #   Violation detail for network interfaces associated with the EC2
    #   instance.
    #   @return [Array<Types::AwsEc2NetworkInterfaceViolation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsEc2InstanceViolation AWS API Documentation
    #
    class AwsEc2InstanceViolation < Struct.new(
      :violation_target,
      :aws_ec2_network_interface_violations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for network interfaces associated with an EC2
    # instance.
    #
    # @!attribute [rw] violation_target
    #   The resource ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] violating_security_groups
    #   List of security groups that violate the rules specified in the
    #   primary security group of the Firewall Manager policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsEc2NetworkInterfaceViolation AWS API Documentation
    #
    class AwsEc2NetworkInterfaceViolation < Struct.new(
      :violation_target,
      :violating_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for the rule violation in a security group when
    # compared to the primary security group of the Firewall Manager policy.
    #
    # @!attribute [rw] violation_target
    #   The security group rule that is being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] violation_target_description
    #   A description of the security group that violates the policy.
    #   @return [String]
    #
    # @!attribute [rw] partial_matches
    #   List of rules specified in the security group of the Firewall
    #   Manager policy that partially match the `ViolationTarget` rule.
    #   @return [Array<Types::PartialMatch>]
    #
    # @!attribute [rw] possible_security_group_remediation_actions
    #   Remediation options for the rule specified in the `ViolationTarget`.
    #   @return [Array<Types::SecurityGroupRemediationAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsVPCSecurityGroupViolation AWS API Documentation
    #
    class AwsVPCSecurityGroupViolation < Struct.new(
      :violation_target,
      :violation_target_description,
      :partial_matches,
      :possible_security_group_remediation_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the resource that is not protected by the policy.
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] violation_reason
    #   The reason that the resource is not protected by the policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. This is in the format shown in the [Amazon Web
    #   Services Resource Types Reference][1]. For example:
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer`,
    #   `AWS::CloudFront::Distribution`, or
    #   `AWS::NetworkFirewall::FirewallPolicy`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ComplianceViolator AWS API Documentation
    #
    class ComplianceViolator < Struct.new(
      :resource_id,
      :violation_reason,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the applications list that you want to delete. You can
    #   retrieve this ID from `PutAppsList`, `ListAppsLists`, and
    #   `GetAppsList`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteAppsListRequest AWS API Documentation
    #
    class DeleteAppsListRequest < Struct.new(
      :list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteNotificationChannelRequest AWS API Documentation
    #
    class DeleteNotificationChannelRequest < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         delete_all_policy_resources: false,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that you want to delete. You can retrieve this
    #   ID from `PutPolicy` and `ListPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] delete_all_policy_resources
    #   If `True`, the request performs cleanup according to the policy
    #   type.
    #
    #   For WAF and Shield Advanced policies, the cleanup does the
    #   following:
    #
    #   * Deletes rule groups created by Firewall Manager
    #
    #   * Removes web ACLs from in-scope resources
    #
    #   * Deletes web ACLs that contain no rules or rule groups
    #
    #   For security group policies, the cleanup does the following for each
    #   security group in the policy:
    #
    #   * Disassociates the security group from in-scope resources
    #
    #   * Deletes the security group if it was created through Firewall
    #     Manager and if it's no longer associated with any resources
    #     through another policy
    #
    #   After the cleanup, in-scope resources are no longer protected by web
    #   ACLs in this policy. Protection of out-of-scope resources remains
    #   unchanged. Scope is determined by tags that you create and accounts
    #   that you associate with the policy. When creating the policy, if you
    #   specify that only resources in specific accounts or with specific
    #   tags are in scope of the policy, those accounts and resources are
    #   handled by the policy. All others are out of scope. If you don't
    #   specify tags or accounts, all resources are in scope.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_id,
      :delete_all_policy_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the protocols list that you want to delete. You can
    #   retrieve this ID from `PutProtocolsList`, `ListProtocolsLists`, and
    #   `GetProtocolsLost`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteProtocolsListRequest AWS API Documentation
    #
    class DeleteProtocolsListRequest < Struct.new(
      :list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DisassociateAdminAccountRequest AWS API Documentation
    #
    class DisassociateAdminAccountRequest < Aws::EmptyStructure; end

    # A DNS Firewall rule group that Firewall Manager tried to associate
    # with a VPC is already associated with the VPC and can't be associated
    # again.
    #
    # @!attribute [rw] violation_target
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @!attribute [rw] violation_target_description
    #   A description of the violation that specifies the rule group and
    #   VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DnsDuplicateRuleGroupViolation AWS API Documentation
    #
    class DnsDuplicateRuleGroupViolation < Struct.new(
      :violation_target,
      :violation_target_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC that Firewall Manager was applying a DNS Fireall policy to
    # reached the limit for associated DNS Firewall rule groups. Firewall
    # Manager tried to associate another rule group with the VPC and failed
    # due to the limit.
    #
    # @!attribute [rw] violation_target
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @!attribute [rw] violation_target_description
    #   A description of the violation that specifies the rule group and
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] number_of_rule_groups_already_associated
    #   The number of rule groups currently associated with the VPC.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DnsRuleGroupLimitExceededViolation AWS API Documentation
    #
    class DnsRuleGroupLimitExceededViolation < Struct.new(
      :violation_target,
      :violation_target_description,
      :number_of_rule_groups_already_associated)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule group that Firewall Manager tried to associate with a VPC has
    # the same priority as a rule group that's already associated.
    #
    # @!attribute [rw] violation_target
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @!attribute [rw] violation_target_description
    #   A description of the violation that specifies the VPC and the rule
    #   group that's already associated with it.
    #   @return [String]
    #
    # @!attribute [rw] conflicting_priority
    #   The priority setting of the two conflicting rule groups.
    #   @return [Integer]
    #
    # @!attribute [rw] conflicting_policy_id
    #   The ID of the Firewall Manager DNS Firewall policy that was already
    #   applied to the VPC. This policy contains the rule group that's
    #   already associated with the VPC.
    #   @return [String]
    #
    # @!attribute [rw] unavailable_priorities
    #   The priorities of rule groups that are already associated with the
    #   VPC. To retry your operation, choose priority settings that aren't
    #   in this list for the rule groups in your new DNS Firewall policy.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DnsRuleGroupPriorityConflictViolation AWS API Documentation
    #
    class DnsRuleGroupPriorityConflictViolation < Struct.new(
      :violation_target,
      :violation_target_description,
      :conflicting_priority,
      :conflicting_policy_id,
      :unavailable_priorities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action of associating an EC2 resource, such as a subnet or
    # internet gateway, with a route table.
    #
    # @!attribute [rw] description
    #   A description of the EC2 route table that is associated with the
    #   remediation action.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the EC2 route table that is associated with the
    #   remediation action.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet for the EC2 route table that is associated with
    #   the remediation action.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] gateway_id
    #   The ID of the gateway to be used with the EC2 route table that is
    #   associated with the remediation action.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2AssociateRouteTableAction AWS API Documentation
    #
    class EC2AssociateRouteTableAction < Struct.new(
      :description,
      :route_table_id,
      :subnet_id,
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action that copies the EC2 route table for use in remediation.
    #
    # @!attribute [rw] description
    #   A description of the copied EC2 route table that is associated with
    #   the remediation action.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the copied EC2 route table that is associated with the
    #   remediation action.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the copied EC2 route table that is associated with the
    #   remediation action.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2CopyRouteTableAction AWS API Documentation
    #
    class EC2CopyRouteTableAction < Struct.new(
      :description,
      :vpc_id,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the CreateRoute action in Amazon EC2.
    #
    # @!attribute [rw] description
    #   A description of CreateRoute action in Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] destination_cidr_block
    #   Information about the IPv4 CIDR address block used for the
    #   destination match.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix_list_id
    #   Information about the ID of a prefix list used for the destination
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   Information about the IPv6 CIDR block destination.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Information about the ID of a VPC endpoint. Supported for Gateway
    #   Load Balancer endpoints only.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] gateway_id
    #   Information about the ID of an internet gateway or virtual private
    #   gateway attached to your VPC.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] route_table_id
    #   Information about the ID of the route table for the route.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2CreateRouteAction AWS API Documentation
    #
    class EC2CreateRouteAction < Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv_6_cidr_block,
      :vpc_endpoint_id,
      :gateway_id,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the CreateRouteTable action in Amazon EC2.
    #
    # @!attribute [rw] description
    #   A description of the CreateRouteTable action.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Information about the ID of a VPC.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2CreateRouteTableAction AWS API Documentation
    #
    class EC2CreateRouteTableAction < Struct.new(
      :description,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the DeleteRoute action in Amazon EC2.
    #
    # @!attribute [rw] description
    #   A description of the DeleteRoute action.
    #   @return [String]
    #
    # @!attribute [rw] destination_cidr_block
    #   Information about the IPv4 CIDR range for the route. The value you
    #   specify must match the CIDR for the route exactly.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix_list_id
    #   Information about the ID of the prefix list for the route.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   Information about the IPv6 CIDR range for the route. The value you
    #   specify must match the CIDR for the route exactly.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   Information about the ID of the route table.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2DeleteRouteAction AWS API Documentation
    #
    class EC2DeleteRouteAction < Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv_6_cidr_block,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the ReplaceRoute action in Amazon EC2.
    #
    # @!attribute [rw] description
    #   A description of the ReplaceRoute action in Amazon EC2.
    #   @return [String]
    #
    # @!attribute [rw] destination_cidr_block
    #   Information about the IPv4 CIDR address block used for the
    #   destination match. The value that you provide must match the CIDR of
    #   an existing route in the table.
    #   @return [String]
    #
    # @!attribute [rw] destination_prefix_list_id
    #   Information about the ID of the prefix list for the route.
    #   @return [String]
    #
    # @!attribute [rw] destination_ipv_6_cidr_block
    #   Information about the IPv6 CIDR address block used for the
    #   destination match. The value that you provide must match the CIDR of
    #   an existing route in the table.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   Information about the ID of an internet gateway or virtual private
    #   gateway.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] route_table_id
    #   Information about the ID of the route table.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2ReplaceRouteAction AWS API Documentation
    #
    class EC2ReplaceRouteAction < Struct.new(
      :description,
      :destination_cidr_block,
      :destination_prefix_list_id,
      :destination_ipv_6_cidr_block,
      :gateway_id,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the ReplaceRouteTableAssociation action in Amazon
    # EC2.
    #
    # @!attribute [rw] description
    #   A description of the ReplaceRouteTableAssociation action in Amazon
    #   EC2.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   Information about the association ID.
    #   @return [Types::ActionTarget]
    #
    # @!attribute [rw] route_table_id
    #   Information about the ID of the new route table to associate with
    #   the subnet.
    #   @return [Types::ActionTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EC2ReplaceRouteTableAssociationAction AWS API Documentation
    #
    class EC2ReplaceRouteTableAssociationAction < Struct.new(
      :description,
      :association_id,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the compliance status for the account. An account is
    # considered noncompliant if it includes resources that are not
    # protected by the specified policy or that don't comply with the
    # policy.
    #
    # @!attribute [rw] compliance_status
    #   Describes an Amazon Web Services account's compliance with the
    #   Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] violator_count
    #   The number of resources that are noncompliant with the specified
    #   policy. For WAF and Shield Advanced policies, a resource is
    #   considered noncompliant if it is not associated with the policy. For
    #   security group policies, a resource is considered noncompliant if it
    #   doesn't comply with the rules of the policy and remediation is
    #   disabled or not possible.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates that over 100 resources are noncompliant with the Firewall
    #   Manager policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :compliance_status,
      :violator_count,
      :evaluation_limit_exceeded)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the expected route in the route table.
    #
    # @!attribute [rw] ip_v4_cidr
    #   Information about the IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_id
    #   Information about the ID of the prefix list for the route.
    #   @return [String]
    #
    # @!attribute [rw] ip_v6_cidr
    #   Information about the IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] contributing_subnets
    #   Information about the contributing subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_targets
    #   Information about the allowed targets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] route_table_id
    #   Information about the route table ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ExpectedRoute AWS API Documentation
    #
    class ExpectedRoute < Struct.new(
      :ip_v4_cidr,
      :prefix_list_id,
      :ip_v6_cidr,
      :contributing_subnets,
      :allowed_targets,
      :route_table_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccountRequest AWS API Documentation
    #
    class GetAdminAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] admin_account
    #   The Amazon Web Services account that is set as the Firewall Manager
    #   administrator.
    #   @return [String]
    #
    # @!attribute [rw] role_status
    #   The status of the Amazon Web Services account that you set as the
    #   Firewall Manager administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccountResponse AWS API Documentation
    #
    class GetAdminAccountResponse < Struct.new(
      :admin_account,
      :role_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #         default_list: false,
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the Firewall Manager applications list that you want the
    #   details for.
    #   @return [String]
    #
    # @!attribute [rw] default_list
    #   Specifies whether the list to retrieve is a default list owned by
    #   Firewall Manager.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAppsListRequest AWS API Documentation
    #
    class GetAppsListRequest < Struct.new(
      :list_id,
      :default_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_list
    #   Information about the specified Firewall Manager applications list.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] apps_list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAppsListResponse AWS API Documentation
    #
    class GetAppsListResponse < Struct.new(
      :apps_list,
      :apps_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceDetailRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that you want to get the details for.
    #   `PolicyId` is returned by `PutPolicy` and by `ListPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The Amazon Web Services account that owns the resources that you
    #   want to get the details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetailRequest AWS API Documentation
    #
    class GetComplianceDetailRequest < Struct.new(
      :policy_id,
      :member_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_compliance_detail
    #   Information about the resources and the policy that you specified in
    #   the `GetComplianceDetail` request.
    #   @return [Types::PolicyComplianceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetailResponse AWS API Documentation
    #
    class GetComplianceDetailResponse < Struct.new(
      :policy_compliance_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannelRequest AWS API Documentation
    #
    class GetNotificationChannelRequest < Aws::EmptyStructure; end

    # @!attribute [rw] sns_topic_arn
    #   The SNS topic that records Firewall Manager activity.
    #   @return [String]
    #
    # @!attribute [rw] sns_role_name
    #   The IAM role that is used by Firewall Manager to record activity to
    #   SNS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannelResponse AWS API Documentation
    #
    class GetNotificationChannelResponse < Struct.new(
      :sns_topic_arn,
      :sns_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy that you want the details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Information about the specified Firewall Manager policy.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the specified policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProtectionStatusRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account_id: "AWSAccountId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy for which you want to get the attack
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] member_account_id
    #   The Amazon Web Services account that is in scope of the policy that
    #   you want to get the details for.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number`
    #   type because the default used by Firewall Manager is Unix time in
    #   seconds. However, any valid `timestamp` format is allowed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number`
    #   type because the default used by Firewall Manager is Unix time in
    #   seconds. However, any valid `timestamp` format is allowed.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more objects
    #   than the number that you specify for `MaxResults`, Firewall Manager
    #   returns a `NextToken` value in the response, which you can use to
    #   retrieve another group of objects. For the second and subsequent
    #   `GetProtectionStatus` requests, specify the value of `NextToken`
    #   from the previous response to get information about another batch of
    #   objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of objects that you want Firewall Manager to
    #   return for this request. If you have more objects than the number
    #   that you specify for `MaxResults`, the response includes a
    #   `NextToken` value that you can use to get another batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtectionStatusRequest AWS API Documentation
    #
    class GetProtectionStatusRequest < Struct.new(
      :policy_id,
      :member_account_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The ID of the Firewall Manager administrator account for this
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The service type that is protected by the policy. Currently, this is
    #   always `SHIELD_ADVANCED`.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Details about the attack, including the following:
    #
    #   * Attack type
    #
    #   * Account ID
    #
    #   * ARN of the resource attacked
    #
    #   * Start time of the attack
    #
    #   * End time of the attack (ongoing attacks will not have an end time)
    #
    #   The details are in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you have more objects than the number that you specified for
    #   `MaxResults` in the request, the response includes a `NextToken`
    #   value. To list more objects, submit another `GetProtectionStatus`
    #   request, and specify the `NextToken` value from the response in the
    #   `NextToken` value in the next request.
    #
    #   Amazon Web Services SDKs provide auto-pagination that identify
    #   `NextToken` in a response and make subsequent request calls
    #   automatically on your behalf. However, this feature is not supported
    #   by `GetProtectionStatus`. You must submit subsequent requests with
    #   `NextToken` using your own processes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtectionStatusResponse AWS API Documentation
    #
    class GetProtectionStatusResponse < Struct.new(
      :admin_account_id,
      :service_type,
      :data,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #         default_list: false,
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the Firewall Manager protocols list that you want the
    #   details for.
    #   @return [String]
    #
    # @!attribute [rw] default_list
    #   Specifies whether the list to retrieve is a default list owned by
    #   Firewall Manager.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtocolsListRequest AWS API Documentation
    #
    class GetProtocolsListRequest < Struct.new(
      :list_id,
      :default_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_list
    #   Information about the specified Firewall Manager protocols list.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] protocols_list_arn
    #   The Amazon Resource Name (ARN) of the specified protocols list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtocolsListResponse AWS API Documentation
    #
    class GetProtocolsListResponse < Struct.new(
      :protocols_list,
      :protocols_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetViolationDetailsRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account: "AWSAccountId", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "ResourceType", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy that you want the details for.
    #   This currently only supports security group content audit policies.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The Amazon Web Services account ID that you want the details for.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that has violations.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. This is in the format shown in the [Amazon Web
    #   Services Resource Types Reference][1]. Supported resource types are:
    #   `AWS::EC2::Instance`, `AWS::EC2::NetworkInterface`,
    #   `AWS::EC2::SecurityGroup`, `AWS::NetworkFirewall::FirewallPolicy`,
    #   and `AWS::EC2::Subnet`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetViolationDetailsRequest AWS API Documentation
    #
    class GetViolationDetailsRequest < Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] violation_detail
    #   Violation detail for a resource.
    #   @return [Types::ViolationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetViolationDetailsResponse AWS API Documentation
    #
    class GetViolationDetailsResponse < Struct.new(
      :violation_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because of a system problem, even though the
    # request was valid. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters of the request were invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because there was nothing to do or the operation
    # wasn't possible. For example, you might have submitted an
    # `AssociateAdminAccount` request for an account ID that was already set
    # as the Firewall Manager administrator. Or you might have tried to
    # access a Region that's disabled by default, and that you need to
    # enable for the Firewall Manager administrator account and for
    # Organizations before you can access it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of the `Type` parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidTypeException AWS API Documentation
    #
    class InvalidTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation exceeds a resource limit, for example, the maximum
    # number of `policy` objects that you can create for an Amazon Web
    # Services account. For more information, see [Firewall Manager
    # Limits][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppsListsRequest
    #   data as a hash:
    #
    #       {
    #         default_lists: false,
    #         next_token: "PaginationToken",
    #         max_results: 1, # required
    #       }
    #
    # @!attribute [rw] default_lists
    #   Specifies whether the lists to retrieve are default lists owned by
    #   Firewall Manager.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, Firewall Manager returns
    #   this token in the response. For all but the first request, you
    #   provide the token returned by the prior request in the request
    #   parameters, to retrieve the next batch of objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, Firewall Manager provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, Firewall Manager returns all available
    #   objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListAppsListsRequest AWS API Documentation
    #
    class ListAppsListsRequest < Struct.new(
      :default_lists,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_lists
    #   An array of `AppsListDataSummary` objects.
    #   @return [Array<Types::AppsListDataSummary>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, Firewall Manager returns
    #   this token in the response. You can use this token in subsequent
    #   requests to retrieve the next batch of objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListAppsListsResponse AWS API Documentation
    #
    class ListAppsListsResponse < Struct.new(
      :apps_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComplianceStatusRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy that you want the details for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicyComplianceStatus` objects than the number that you specify
    #   for `MaxResults`, Firewall Manager returns a `NextToken` value in
    #   the response that allows you to list another group of
    #   `PolicyComplianceStatus` objects. For the second and subsequent
    #   `ListComplianceStatus` requests, specify the value of `NextToken`
    #   from the previous response to get information about another batch of
    #   `PolicyComplianceStatus` objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of `PolicyComplianceStatus` objects that you
    #   want Firewall Manager to return for this request. If you have more
    #   `PolicyComplianceStatus` objects than the number that you specify
    #   for `MaxResults`, the response includes a `NextToken` value that you
    #   can use to get another batch of `PolicyComplianceStatus` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatusRequest AWS API Documentation
    #
    class ListComplianceStatusRequest < Struct.new(
      :policy_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_compliance_status_list
    #   An array of `PolicyComplianceStatus` objects.
    #   @return [Array<Types::PolicyComplianceStatus>]
    #
    # @!attribute [rw] next_token
    #   If you have more `PolicyComplianceStatus` objects than the number
    #   that you specified for `MaxResults` in the request, the response
    #   includes a `NextToken` value. To list more `PolicyComplianceStatus`
    #   objects, submit another `ListComplianceStatus` request, and specify
    #   the `NextToken` value from the response in the `NextToken` value in
    #   the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatusResponse AWS API Documentation
    #
    class ListComplianceStatusResponse < Struct.new(
      :policy_compliance_status_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMemberAccountsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more account
    #   IDs than the number that you specify for `MaxResults`, Firewall
    #   Manager returns a `NextToken` value in the response that allows you
    #   to list another group of IDs. For the second and subsequent
    #   `ListMemberAccountsRequest` requests, specify the value of
    #   `NextToken` from the previous response to get information about
    #   another batch of member account IDs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of member account IDs that you want Firewall
    #   Manager to return for this request. If you have more IDs than the
    #   number that you specify for `MaxResults`, the response includes a
    #   `NextToken` value that you can use to get another batch of member
    #   account IDs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccountsRequest AWS API Documentation
    #
    class ListMemberAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_accounts
    #   An array of account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If you have more member account IDs than the number that you
    #   specified for `MaxResults` in the request, the response includes a
    #   `NextToken` value. To list more IDs, submit another
    #   `ListMemberAccounts` request, and specify the `NextToken` value from
    #   the response in the `NextToken` value in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccountsResponse AWS API Documentation
    #
    class ListMemberAccountsResponse < Struct.new(
      :member_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, Firewall Manager returns a `NextToken` value in the
    #   response that allows you to list another group of `PolicySummary`
    #   objects. For the second and subsequent `ListPolicies` requests,
    #   specify the value of `NextToken` from the previous response to get
    #   information about another batch of `PolicySummary` objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of `PolicySummary` objects that you want
    #   Firewall Manager to return for this request. If you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, the response includes a `NextToken` value that you can
    #   use to get another batch of `PolicySummary` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_list
    #   An array of `PolicySummary` objects.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If you have more `PolicySummary` objects than the number that you
    #   specified for `MaxResults` in the request, the response includes a
    #   `NextToken` value. To list more `PolicySummary` objects, submit
    #   another `ListPolicies` request, and specify the `NextToken` value
    #   from the response in the `NextToken` value in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policy_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProtocolsListsRequest
    #   data as a hash:
    #
    #       {
    #         default_lists: false,
    #         next_token: "PaginationToken",
    #         max_results: 1, # required
    #       }
    #
    # @!attribute [rw] default_lists
    #   Specifies whether the lists to retrieve are default lists owned by
    #   Firewall Manager.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, Firewall Manager returns
    #   this token in the response. For all but the first request, you
    #   provide the token returned by the prior request in the request
    #   parameters, to retrieve the next batch of objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, Firewall Manager provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, Firewall Manager returns all available
    #   objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListProtocolsListsRequest AWS API Documentation
    #
    class ListProtocolsListsRequest < Struct.new(
      :default_lists,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_lists
    #   An array of `ProtocolsListDataSummary` objects.
    #   @return [Array<Types::ProtocolsListDataSummary>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, Firewall Manager returns
    #   this token in the response. You can use this token in subsequent
    #   requests to retrieve the next batch of objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListProtocolsListsResponse AWS API Documentation
    #
    class ListProtocolsListsResponse < Struct.new(
      :protocols_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for an internet gateway route with an inactive state
    # in the customer subnet route table or Network Firewall subnet route
    # table.
    #
    # @!attribute [rw] violation_target
    #   The subnet that has an inactive state.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   Information about the route table ID.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @!attribute [rw] violating_routes
    #   Information about the route or routes that are in violation.
    #   @return [Array<Types::Route>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallBlackHoleRouteDetectedViolation AWS API Documentation
    #
    class NetworkFirewallBlackHoleRouteDetectedViolation < Struct.new(
      :violation_target,
      :route_table_id,
      :vpc_id,
      :violating_routes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for the subnet for which internet traffic that
    # hasn't been inspected.
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   The subnet Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] route_table_id
    #   Information about the route table ID.
    #   @return [String]
    #
    # @!attribute [rw] violating_routes
    #   The route or routes that are in violation.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] is_route_table_used_in_different_az
    #   Information about whether the route table is used in another
    #   Availability Zone.
    #   @return [Boolean]
    #
    # @!attribute [rw] current_firewall_subnet_route_table
    #   Information about the subnet route table for the current firewall.
    #   @return [String]
    #
    # @!attribute [rw] expected_firewall_endpoint
    #   The expected endpoint for the current firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_subnet_id
    #   The firewall subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] expected_firewall_subnet_routes
    #   The firewall subnet routes that are expected.
    #   @return [Array<Types::ExpectedRoute>]
    #
    # @!attribute [rw] actual_firewall_subnet_routes
    #   The actual firewall subnet routes.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] internet_gateway_id
    #   The internet gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] current_internet_gateway_route_table
    #   The current route table for the internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] expected_internet_gateway_routes
    #   The internet gateway routes that are expected.
    #   @return [Array<Types::ExpectedRoute>]
    #
    # @!attribute [rw] actual_internet_gateway_routes
    #   The actual internet gateway routes.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallInternetTrafficNotInspectedViolation AWS API Documentation
    #
    class NetworkFirewallInternetTrafficNotInspectedViolation < Struct.new(
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
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for the improperly configured subnet route. It's
    # possible there is a missing route table route, or a configuration that
    # causes traffic to cross an Availability Zone boundary.
    #
    # @!attribute [rw] affected_subnets
    #   The subnets that are affected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] route_table_id
    #   The route table ID.
    #   @return [String]
    #
    # @!attribute [rw] is_route_table_used_in_different_az
    #   Information about whether the route table is used in another
    #   Availability Zone.
    #   @return [Boolean]
    #
    # @!attribute [rw] violating_route
    #   The route that's in violation.
    #   @return [Types::Route]
    #
    # @!attribute [rw] current_firewall_subnet_route_table
    #   The subnet route table for the current firewall.
    #   @return [String]
    #
    # @!attribute [rw] expected_firewall_endpoint
    #   The firewall endpoint that's expected.
    #   @return [String]
    #
    # @!attribute [rw] actual_firewall_endpoint
    #   The actual firewall endpoint.
    #   @return [String]
    #
    # @!attribute [rw] expected_firewall_subnet_id
    #   The expected subnet ID for the firewall.
    #   @return [String]
    #
    # @!attribute [rw] actual_firewall_subnet_id
    #   The actual subnet ID for the firewall.
    #   @return [String]
    #
    # @!attribute [rw] expected_firewall_subnet_routes
    #   The firewall subnet routes that are expected.
    #   @return [Array<Types::ExpectedRoute>]
    #
    # @!attribute [rw] actual_firewall_subnet_routes
    #   The actual firewall subnet routes that are expected.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] internet_gateway_id
    #   The internet gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] current_internet_gateway_route_table
    #   The route table for the current internet gateway.
    #   @return [String]
    #
    # @!attribute [rw] expected_internet_gateway_routes
    #   The expected routes for the internet gateway.
    #   @return [Array<Types::ExpectedRoute>]
    #
    # @!attribute [rw] actual_internet_gateway_routes
    #   The actual internet gateway routes.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallInvalidRouteConfigurationViolation AWS API Documentation
    #
    class NetworkFirewallInvalidRouteConfigurationViolation < Struct.new(
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
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for Network Firewall for a subnet that's not
    # associated to the expected Firewall Manager managed route table.
    #
    # @!attribute [rw] violation_target
    #   The ID of the Network Firewall or VPC resource that's in violation.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The resource ID of the VPC associated with a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] current_route_table
    #   The resource ID of the current route table that's associated with
    #   the subnet, if one is available.
    #   @return [String]
    #
    # @!attribute [rw] expected_route_table
    #   The resource ID of the route table that should be associated with
    #   the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallMissingExpectedRTViolation AWS API Documentation
    #
    class NetworkFirewallMissingExpectedRTViolation < Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :current_route_table,
      :expected_route_table)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for an expected route missing in Network Firewall.
    #
    # @!attribute [rw] violation_target
    #   The target of the violation.
    #   @return [String]
    #
    # @!attribute [rw] expected_routes
    #   The expected routes.
    #   @return [Array<Types::ExpectedRoute>]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallMissingExpectedRoutesViolation AWS API Documentation
    #
    class NetworkFirewallMissingExpectedRoutesViolation < Struct.new(
      :violation_target,
      :expected_routes,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for Network Firewall for a subnet that doesn't have
    # a Firewall Manager managed firewall in its VPC.
    #
    # @!attribute [rw] violation_target
    #   The ID of the Network Firewall or VPC resource that's in violation.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The resource ID of the VPC associated with a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] target_violation_reason
    #   The reason the resource has this violation, if one is available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallMissingFirewallViolation AWS API Documentation
    #
    class NetworkFirewallMissingFirewallViolation < Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for Network Firewall for an Availability Zone that's
    # missing the expected Firewall Manager managed subnet.
    #
    # @!attribute [rw] violation_target
    #   The ID of the Network Firewall or VPC resource that's in violation.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The resource ID of the VPC associated with a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone of a violating subnet.
    #   @return [String]
    #
    # @!attribute [rw] target_violation_reason
    #   The reason the resource has this violation, if one is available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallMissingSubnetViolation AWS API Documentation
    #
    class NetworkFirewallMissingSubnetViolation < Struct.new(
      :violation_target,
      :vpc,
      :availability_zone,
      :target_violation_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the Network Firewall firewall policy.
    #
    # @!attribute [rw] stateless_rule_groups
    #   The stateless rule groups that are used in the Network Firewall
    #   firewall policy.
    #   @return [Array<Types::StatelessRuleGroup>]
    #
    # @!attribute [rw] stateless_default_actions
    #   The actions to take on packets that don't match any of the
    #   stateless rule groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_fragment_default_actions
    #   The actions to take on packet fragments that don't match any of the
    #   stateless rule groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_custom_actions
    #   Names of custom actions that are available for use in the stateless
    #   default actions settings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateful_rule_groups
    #   The stateful rule groups that are used in the Network Firewall
    #   firewall policy.
    #   @return [Array<Types::StatefulRuleGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallPolicyDescription AWS API Documentation
    #
    class NetworkFirewallPolicyDescription < Struct.new(
      :stateless_rule_groups,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_custom_actions,
      :stateful_rule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for Network Firewall for a firewall policy that has a
    # different NetworkFirewallPolicyDescription than is required by the
    # Firewall Manager policy.
    #
    # @!attribute [rw] violation_target
    #   The ID of the Network Firewall or VPC resource that's in violation.
    #   @return [String]
    #
    # @!attribute [rw] current_policy_description
    #   The policy that's currently in use in the individual account.
    #   @return [Types::NetworkFirewallPolicyDescription]
    #
    # @!attribute [rw] expected_policy_description
    #   The policy that should be in use in the individual account in order
    #   to be compliant.
    #   @return [Types::NetworkFirewallPolicyDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallPolicyModifiedViolation AWS API Documentation
    #
    class NetworkFirewallPolicyModifiedViolation < Struct.new(
      :violation_target,
      :current_policy_description,
      :expected_policy_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for an unexpected route that's present in a route
    # table.
    #
    # @!attribute [rw] firewall_subnet_id
    #   The subnet ID for the firewall.
    #   @return [String]
    #
    # @!attribute [rw] violating_routes
    #   The routes that are in violation.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] route_table_id
    #   The ID of the route table.
    #   @return [String]
    #
    # @!attribute [rw] firewall_endpoint
    #   The endpoint of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallUnexpectedFirewallRoutesViolation AWS API Documentation
    #
    class NetworkFirewallUnexpectedFirewallRoutesViolation < Struct.new(
      :firewall_subnet_id,
      :violating_routes,
      :route_table_id,
      :firewall_endpoint,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail for an unexpected gateway route that’s present in a
    # route table.
    #
    # @!attribute [rw] gateway_id
    #   Information about the gateway ID.
    #   @return [String]
    #
    # @!attribute [rw] violating_routes
    #   The routes that are in violation.
    #   @return [Array<Types::Route>]
    #
    # @!attribute [rw] route_table_id
    #   Information about the route table.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Information about the VPC ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/NetworkFirewallUnexpectedGatewayRoutesViolation AWS API Documentation
    #
    class NetworkFirewallUnexpectedGatewayRoutesViolation < Struct.new(
      :gateway_id,
      :violating_routes,
      :route_table_id,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference rule that partially matches the `ViolationTarget` rule
    # and violation reason.
    #
    # @!attribute [rw] reference
    #   The reference rule from the primary security group of the Firewall
    #   Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] target_violation_reasons
    #   The violation reason.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PartialMatch AWS API Documentation
    #
    class PartialMatch < Struct.new(
      :reference,
      :target_violation_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Firewall Manager policy.
    #
    # @note When making an API call, you may pass Policy
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId",
    #         policy_name: "ResourceName", # required
    #         policy_update_token: "PolicyUpdateToken",
    #         security_service_policy_data: { # required
    #           type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT, NETWORK_FIREWALL, DNS_FIREWALL
    #           managed_service_data: "ManagedServiceData",
    #         },
    #         resource_type: "ResourceType", # required
    #         resource_type_list: ["ResourceType"],
    #         resource_tags: [
    #           {
    #             key: "ResourceTagKey", # required
    #             value: "ResourceTagValue",
    #           },
    #         ],
    #         exclude_resource_tags: false, # required
    #         remediation_enabled: false, # required
    #         delete_unused_fm_managed_resources: false,
    #         include_map: {
    #           "ACCOUNT" => ["CustomerPolicyScopeId"],
    #         },
    #         exclude_map: {
    #           "ACCOUNT" => ["CustomerPolicyScopeId"],
    #         },
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_update_token
    #   A unique identifier for each update to the policy. When issuing a
    #   `PutPolicy` request, the `PolicyUpdateToken` in the request must
    #   match the `PolicyUpdateToken` of the current policy version. To get
    #   the `PolicyUpdateToken` of the current policy version, use a
    #   `GetPolicy` request.
    #   @return [String]
    #
    # @!attribute [rw] security_service_policy_data
    #   Details about the security service that is being used to protect the
    #   resources.
    #   @return [Types::SecurityServicePolicyData]
    #
    # @!attribute [rw] resource_type
    #   The type of resource protected by or in scope of the policy. This is
    #   in the format shown in the [Amazon Web Services Resource Types
    #   Reference][1]. To apply this policy to multiple resource types,
    #   specify a resource type of `ResourceTypeList` and then specify the
    #   resource types in a `ResourceTypeList`.
    #
    #   For WAF and Shield Advanced, resource types include
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer`,
    #   `AWS::ElasticLoadBalancing::LoadBalancer`, `AWS::EC2::EIP`, and
    #   `AWS::CloudFront::Distribution`. For a security group common policy,
    #   valid values are `AWS::EC2::NetworkInterface` and
    #   `AWS::EC2::Instance`. For a security group content audit policy,
    #   valid values are `AWS::EC2::SecurityGroup`,
    #   `AWS::EC2::NetworkInterface`, and `AWS::EC2::Instance`. For a
    #   security group usage audit policy, the value is
    #   `AWS::EC2::SecurityGroup`. For an Network Firewall policy or DNS
    #   Firewall policy, the value is `AWS::EC2::VPC`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] resource_type_list
    #   An array of `ResourceType` objects. Use this only to specify
    #   multiple resource types. To specify a single resource type, use
    #   `ResourceType`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   An array of `ResourceTag` objects.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] exclude_resource_tags
    #   If set to `True`, resources with the tags that are specified in the
    #   `ResourceTag` array are not in scope of the policy. If set to
    #   `False`, and the `ResourceTag` array is not null, only resources
    #   with the specified tags are in scope of the policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediation_enabled
    #   Indicates if the policy should be automatically applied to new
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_unused_fm_managed_resources
    #   Indicates whether Firewall Manager should automatically remove
    #   protections from resources that leave the policy scope and clean up
    #   resources that Firewall Manager is managing for accounts when those
    #   accounts leave policy scope. For example, Firewall Manager will
    #   disassociate a Firewall Manager managed web ACL from a protected
    #   customer resource when the customer resource leaves policy scope.
    #
    #   By default, Firewall Manager doesn't remove protections or delete
    #   Firewall Manager managed resources.
    #
    #   This option is not available for Shield Advanced or WAF Classic
    #   policies.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_map
    #   Specifies the Amazon Web Services account IDs and Organizations
    #   organizational units (OUs) to include in the policy. Specifying an
    #   OU is the equivalent of specifying all accounts in the OU and in any
    #   of its child OUs, including any child OUs and accounts that are
    #   added at a later time.
    #
    #   You can specify inclusions or exclusions, but not both. If you
    #   specify an `IncludeMap`, Firewall Manager applies the policy to all
    #   accounts specified by the `IncludeMap`, and does not evaluate any
    #   `ExcludeMap` specifications. If you do not specify an `IncludeMap`,
    #   then Firewall Manager applies the policy to all accounts except for
    #   those specified by the `ExcludeMap`.
    #
    #   You can specify account IDs, OUs, or a combination:
    #
    #   * Specify account IDs by setting the key to `ACCOUNT`. For example,
    #     the following is a valid map: `\{“ACCOUNT” : [“accountID1”,
    #     “accountID2”]\}`.
    #
    #   * Specify OUs by setting the key to `ORG_UNIT`. For example, the
    #     following is a valid map: `\{“ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #
    #   * Specify accounts and OUs together in a single map, separated with
    #     a comma. For example, the following is a valid map: `\{“ACCOUNT” :
    #     [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] exclude_map
    #   Specifies the Amazon Web Services account IDs and Organizations
    #   organizational units (OUs) to exclude from the policy. Specifying an
    #   OU is the equivalent of specifying all accounts in the OU and in any
    #   of its child OUs, including any child OUs and accounts that are
    #   added at a later time.
    #
    #   You can specify inclusions or exclusions, but not both. If you
    #   specify an `IncludeMap`, Firewall Manager applies the policy to all
    #   accounts specified by the `IncludeMap`, and does not evaluate any
    #   `ExcludeMap` specifications. If you do not specify an `IncludeMap`,
    #   then Firewall Manager applies the policy to all accounts except for
    #   those specified by the `ExcludeMap`.
    #
    #   You can specify account IDs, OUs, or a combination:
    #
    #   * Specify account IDs by setting the key to `ACCOUNT`. For example,
    #     the following is a valid map: `\{“ACCOUNT” : [“accountID1”,
    #     “accountID2”]\}`.
    #
    #   * Specify OUs by setting the key to `ORG_UNIT`. For example, the
    #     following is a valid map: `\{“ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #
    #   * Specify accounts and OUs together in a single map, separated with
    #     a comma. For example, the following is a valid map: `\{“ACCOUNT” :
    #     [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/Policy AWS API Documentation
    #
    class Policy < Struct.new(
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
      :exclude_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the noncompliant resources in a member account for a
    # specific Firewall Manager policy. A maximum of 100 entries are
    # displayed. If more than 100 resources are noncompliant,
    # `EvaluationLimitExceeded` is set to `True`.
    #
    # @!attribute [rw] policy_owner
    #   The Amazon Web Services account that created the Firewall Manager
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] violators
    #   An array of resources that aren't protected by the WAF or Shield
    #   Advanced policy or that aren't in compliance with the security
    #   group policy.
    #   @return [Array<Types::ComplianceViolator>]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates if over 100 resources are noncompliant with the Firewall
    #   Manager policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] expired_at
    #   A timestamp that indicates when the returned information should be
    #   considered out of date.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as WAF or
    #   Config, and the error message received that indicates the problem
    #   with the service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicyComplianceDetail AWS API Documentation
    #
    class PolicyComplianceDetail < Struct.new(
      :policy_owner,
      :policy_id,
      :member_account,
      :violators,
      :evaluation_limit_exceeded,
      :expired_at,
      :issue_info_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether the account is compliant with the specified policy.
    # An account is considered noncompliant if it includes resources that
    # are not protected by the policy, for WAF and Shield Advanced policies,
    # or that are noncompliant with the policy, for security group policies.
    #
    # @!attribute [rw] policy_owner
    #   The Amazon Web Services account that created the Firewall Manager
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The member account ID.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_results
    #   An array of `EvaluationResult` objects.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] last_updated
    #   Timestamp of the last update to the `EvaluationResult` objects.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as WAF or
    #   Config, and the error message received that indicates the problem
    #   with the service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicyComplianceStatus AWS API Documentation
    #
    class PolicyComplianceStatus < Struct.new(
      :policy_owner,
      :policy_id,
      :policy_name,
      :member_account,
      :evaluation_results,
      :last_updated,
      :issue_info_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Firewall Manager policy.
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource protected by or in scope of the policy. This is
    #   in the format shown in the [Amazon Web Services Resource Types
    #   Reference][1]. For WAF and Shield Advanced, examples include
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer` and
    #   `AWS::CloudFront::Distribution`. For a security group common policy,
    #   valid values are `AWS::EC2::NetworkInterface` and
    #   `AWS::EC2::Instance`. For a security group content audit policy,
    #   valid values are `AWS::EC2::SecurityGroup`,
    #   `AWS::EC2::NetworkInterface`, and `AWS::EC2::Instance`. For a
    #   security group usage audit policy, the value is
    #   `AWS::EC2::SecurityGroup`. For an Network Firewall policy or DNS
    #   Firewall policy, the value is `AWS::EC2::VPC`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] security_service_type
    #   The service that the policy is using to protect the resources. This
    #   specifies the type of policy that is created, either an WAF policy,
    #   a Shield Advanced policy, or a security group policy.
    #   @return [String]
    #
    # @!attribute [rw] remediation_enabled
    #   Indicates if the policy should be automatically applied to new
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_unused_fm_managed_resources
    #   Indicates whether Firewall Manager should automatically remove
    #   protections from resources that leave the policy scope and clean up
    #   resources that Firewall Manager is managing for accounts when those
    #   accounts leave policy scope. For example, Firewall Manager will
    #   disassociate a Firewall Manager managed web ACL from a protected
    #   customer resource when the customer resource leaves policy scope.
    #
    #   By default, Firewall Manager doesn't remove protections or delete
    #   Firewall Manager managed resources.
    #
    #   This option is not available for Shield Advanced or WAF Classic
    #   policies.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :policy_arn,
      :policy_id,
      :policy_name,
      :resource_type,
      :security_service_type,
      :remediation_enabled,
      :delete_unused_fm_managed_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of remediation actions.
    #
    # @!attribute [rw] description
    #   A description of the list of remediation actions.
    #   @return [String]
    #
    # @!attribute [rw] ordered_remediation_actions
    #   The ordered list of remediation actions.
    #   @return [Array<Types::RemediationActionWithOrder>]
    #
    # @!attribute [rw] is_default_action
    #   Information about whether an action is taken by default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PossibleRemediationAction AWS API Documentation
    #
    class PossibleRemediationAction < Struct.new(
      :description,
      :ordered_remediation_actions,
      :is_default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of possible remediation action lists. Each individual possible
    # remediation action is a list of individual remediation actions.
    #
    # @!attribute [rw] description
    #   A description of the possible remediation actions list.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   Information about the actions.
    #   @return [Array<Types::PossibleRemediationAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PossibleRemediationActions AWS API Documentation
    #
    class PossibleRemediationActions < Struct.new(
      :description,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Firewall Manager protocols list.
    #
    # @note When making an API call, you may pass ProtocolsListData
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId",
    #         list_name: "ResourceName", # required
    #         list_update_token: "UpdateToken",
    #         create_time: Time.now,
    #         last_update_time: Time.now,
    #         protocols_list: ["Protocol"], # required
    #         previous_protocols_list: {
    #           "PreviousListVersion" => ["Protocol"],
    #         },
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the Firewall Manager protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the Firewall Manager protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_update_token
    #   A unique identifier for each update to the list. When you update the
    #   list, the update token must match the token of the current version
    #   of the application list. You can retrieve the update token by
    #   getting the list.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the Firewall Manager protocols list was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the Firewall Manager protocols list was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] protocols_list
    #   An array of protocols in the Firewall Manager protocols list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous_protocols_list
    #   A map of previous version numbers to their corresponding protocol
    #   arrays.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ProtocolsListData AWS API Documentation
    #
    class ProtocolsListData < Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :protocols_list,
      :previous_protocols_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the Firewall Manager protocols list.
    #
    # @!attribute [rw] list_arn
    #   The Amazon Resource Name (ARN) of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_id
    #   The ID of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] protocols_list
    #   An array of protocols in the Firewall Manager protocols list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ProtocolsListDataSummary AWS API Documentation
    #
    class ProtocolsListDataSummary < Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :protocols_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAppsListRequest
    #   data as a hash:
    #
    #       {
    #         apps_list: { # required
    #           list_id: "ListId",
    #           list_name: "ResourceName", # required
    #           list_update_token: "UpdateToken",
    #           create_time: Time.now,
    #           last_update_time: Time.now,
    #           apps_list: [ # required
    #             {
    #               app_name: "ResourceName", # required
    #               protocol: "Protocol", # required
    #               port: 1, # required
    #             },
    #           ],
    #           previous_apps_list: {
    #             "PreviousListVersion" => [
    #               {
    #                 app_name: "ResourceName", # required
    #                 protocol: "Protocol", # required
    #                 port: 1, # required
    #               },
    #             ],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] apps_list
    #   The details of the Firewall Manager applications list to be created.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutAppsListRequest AWS API Documentation
    #
    class PutAppsListRequest < Struct.new(
      :apps_list,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_list
    #   The details of the Firewall Manager applications list.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] apps_list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutAppsListResponse AWS API Documentation
    #
    class PutAppsListResponse < Struct.new(
      :apps_list,
      :apps_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "ResourceArn", # required
    #         sns_role_name: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic that collects
    #   notifications from Firewall Manager.
    #   @return [String]
    #
    # @!attribute [rw] sns_role_name
    #   The Amazon Resource Name (ARN) of the IAM role that allows Amazon
    #   SNS to record Firewall Manager activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutNotificationChannelRequest AWS API Documentation
    #
    class PutNotificationChannelRequest < Struct.new(
      :sns_topic_arn,
      :sns_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy: { # required
    #           policy_id: "PolicyId",
    #           policy_name: "ResourceName", # required
    #           policy_update_token: "PolicyUpdateToken",
    #           security_service_policy_data: { # required
    #             type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT, NETWORK_FIREWALL, DNS_FIREWALL
    #             managed_service_data: "ManagedServiceData",
    #           },
    #           resource_type: "ResourceType", # required
    #           resource_type_list: ["ResourceType"],
    #           resource_tags: [
    #             {
    #               key: "ResourceTagKey", # required
    #               value: "ResourceTagValue",
    #             },
    #           ],
    #           exclude_resource_tags: false, # required
    #           remediation_enabled: false, # required
    #           delete_unused_fm_managed_resources: false,
    #           include_map: {
    #             "ACCOUNT" => ["CustomerPolicyScopeId"],
    #           },
    #           exclude_map: {
    #             "ACCOUNT" => ["CustomerPolicyScopeId"],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy
    #   The details of the Firewall Manager policy to be created.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] tag_list
    #   The tags to add to the Amazon Web Services resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyRequest AWS API Documentation
    #
    class PutPolicyRequest < Struct.new(
      :policy,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The details of the Firewall Manager policy.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyResponse AWS API Documentation
    #
    class PutPolicyResponse < Struct.new(
      :policy,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         protocols_list: { # required
    #           list_id: "ListId",
    #           list_name: "ResourceName", # required
    #           list_update_token: "UpdateToken",
    #           create_time: Time.now,
    #           last_update_time: Time.now,
    #           protocols_list: ["Protocol"], # required
    #           previous_protocols_list: {
    #             "PreviousListVersion" => ["Protocol"],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] protocols_list
    #   The details of the Firewall Manager protocols list to be created.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutProtocolsListRequest AWS API Documentation
    #
    class PutProtocolsListRequest < Struct.new(
      :protocols_list,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_list
    #   The details of the Firewall Manager protocols list.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] protocols_list_arn
    #   The Amazon Resource Name (ARN) of the protocols list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutProtocolsListResponse AWS API Documentation
    #
    class PutProtocolsListResponse < Struct.new(
      :protocols_list,
      :protocols_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an individual action you can take to remediate a
    # violation.
    #
    # @!attribute [rw] description
    #   A description of a remediation action.
    #   @return [String]
    #
    # @!attribute [rw] ec2_create_route_action
    #   Information about the CreateRoute action in the Amazon EC2 API.
    #   @return [Types::EC2CreateRouteAction]
    #
    # @!attribute [rw] ec2_replace_route_action
    #   Information about the ReplaceRoute action in the Amazon EC2 API.
    #   @return [Types::EC2ReplaceRouteAction]
    #
    # @!attribute [rw] ec2_delete_route_action
    #   Information about the DeleteRoute action in the Amazon EC2 API.
    #   @return [Types::EC2DeleteRouteAction]
    #
    # @!attribute [rw] ec2_copy_route_table_action
    #   Information about the CopyRouteTable action in the Amazon EC2 API.
    #   @return [Types::EC2CopyRouteTableAction]
    #
    # @!attribute [rw] ec2_replace_route_table_association_action
    #   Information about the ReplaceRouteTableAssociation action in the
    #   Amazon EC2 API.
    #   @return [Types::EC2ReplaceRouteTableAssociationAction]
    #
    # @!attribute [rw] ec2_associate_route_table_action
    #   Information about the AssociateRouteTable action in the Amazon EC2
    #   API.
    #   @return [Types::EC2AssociateRouteTableAction]
    #
    # @!attribute [rw] ec2_create_route_table_action
    #   Information about the CreateRouteTable action in the Amazon EC2 API.
    #   @return [Types::EC2CreateRouteTableAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/RemediationAction AWS API Documentation
    #
    class RemediationAction < Struct.new(
      :description,
      :ec2_create_route_action,
      :ec2_replace_route_action,
      :ec2_delete_route_action,
      :ec2_copy_route_table_action,
      :ec2_replace_route_table_association_action,
      :ec2_associate_route_table_action,
      :ec2_create_route_table_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # An ordered list of actions you can take to remediate a violation.
    #
    # @!attribute [rw] remediation_action
    #   Information about an action you can take to remediate a violation.
    #   @return [Types::RemediationAction]
    #
    # @!attribute [rw] order
    #   The order of the remediation actions in the list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/RemediationActionWithOrder AWS API Documentation
    #
    class RemediationActionWithOrder < Struct.new(
      :remediation_action,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource tags that Firewall Manager uses to determine if a
    # particular resource should be included or excluded from the Firewall
    # Manager policy. Tags enable you to categorize your Amazon Web Services
    # resources in different ways, for example, by purpose, owner, or
    # environment. Each tag consists of a key and an optional value.
    # Firewall Manager combines the tags with "AND" so that, if you add
    # more than one tag to a policy scope, a resource must have all the
    # specified tags to be included or excluded. For more information, see
    # [Working with Tag Editor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html
    #
    # @note When making an API call, you may pass ResourceTag
    #   data as a hash:
    #
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The resource tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail based on resource type.
    #
    # @!attribute [rw] aws_vpc_security_group_violation
    #   Violation detail for security groups.
    #   @return [Types::AwsVPCSecurityGroupViolation]
    #
    # @!attribute [rw] aws_ec2_network_interface_violation
    #   Violation detail for a network interface.
    #   @return [Types::AwsEc2NetworkInterfaceViolation]
    #
    # @!attribute [rw] aws_ec2_instance_violation
    #   Violation detail for an EC2 instance.
    #   @return [Types::AwsEc2InstanceViolation]
    #
    # @!attribute [rw] network_firewall_missing_firewall_violation
    #   Violation detail for an Network Firewall policy that indicates that
    #   a subnet has no Firewall Manager managed firewall in its VPC.
    #   @return [Types::NetworkFirewallMissingFirewallViolation]
    #
    # @!attribute [rw] network_firewall_missing_subnet_violation
    #   Violation detail for an Network Firewall policy that indicates that
    #   an Availability Zone is missing the expected Firewall Manager
    #   managed subnet.
    #   @return [Types::NetworkFirewallMissingSubnetViolation]
    #
    # @!attribute [rw] network_firewall_missing_expected_rt_violation
    #   Violation detail for an Network Firewall policy that indicates that
    #   a subnet is not associated with the expected Firewall Manager
    #   managed route table.
    #   @return [Types::NetworkFirewallMissingExpectedRTViolation]
    #
    # @!attribute [rw] network_firewall_policy_modified_violation
    #   Violation detail for an Network Firewall policy that indicates that
    #   a firewall policy in an individual account has been modified in a
    #   way that makes it noncompliant. For example, the individual account
    #   owner might have deleted a rule group, changed the priority of a
    #   stateless rule group, or changed a policy default action.
    #   @return [Types::NetworkFirewallPolicyModifiedViolation]
    #
    # @!attribute [rw] network_firewall_internet_traffic_not_inspected_violation
    #   Violation detail for the subnet for which internet traffic hasn't
    #   been inspected.
    #   @return [Types::NetworkFirewallInternetTrafficNotInspectedViolation]
    #
    # @!attribute [rw] network_firewall_invalid_route_configuration_violation
    #   The route configuration is invalid.
    #   @return [Types::NetworkFirewallInvalidRouteConfigurationViolation]
    #
    # @!attribute [rw] network_firewall_black_hole_route_detected_violation
    #   Violation detail for an internet gateway route with an inactive
    #   state in the customer subnet route table or Network Firewall subnet
    #   route table.
    #   @return [Types::NetworkFirewallBlackHoleRouteDetectedViolation]
    #
    # @!attribute [rw] network_firewall_unexpected_firewall_routes_violation
    #   There's an unexpected firewall route.
    #   @return [Types::NetworkFirewallUnexpectedFirewallRoutesViolation]
    #
    # @!attribute [rw] network_firewall_unexpected_gateway_routes_violation
    #   There's an unexpected gateway route.
    #   @return [Types::NetworkFirewallUnexpectedGatewayRoutesViolation]
    #
    # @!attribute [rw] network_firewall_missing_expected_routes_violation
    #   Expected routes are missing from Network Firewall.
    #   @return [Types::NetworkFirewallMissingExpectedRoutesViolation]
    #
    # @!attribute [rw] dns_rule_group_priority_conflict_violation
    #   Violation detail for a DNS Firewall policy that indicates that a
    #   rule group that Firewall Manager tried to associate with a VPC has
    #   the same priority as a rule group that's already associated.
    #   @return [Types::DnsRuleGroupPriorityConflictViolation]
    #
    # @!attribute [rw] dns_duplicate_rule_group_violation
    #   Violation detail for a DNS Firewall policy that indicates that a
    #   rule group that Firewall Manager tried to associate with a VPC is
    #   already associated with the VPC and can't be associated again.
    #   @return [Types::DnsDuplicateRuleGroupViolation]
    #
    # @!attribute [rw] dns_rule_group_limit_exceeded_violation
    #   Violation detail for a DNS Firewall policy that indicates that the
    #   VPC reached the limit for associated DNS Firewall rule groups.
    #   Firewall Manager tried to associate another rule group with the VPC
    #   and failed.
    #   @return [Types::DnsRuleGroupLimitExceededViolation]
    #
    # @!attribute [rw] possible_remediation_actions
    #   A list of possible remediation action lists. Each individual
    #   possible remediation action is a list of individual remediation
    #   actions.
    #   @return [Types::PossibleRemediationActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceViolation AWS API Documentation
    #
    class ResourceViolation < Struct.new(
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
      :possible_remediation_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a route in a route table.
    #
    # @!attribute [rw] destination_type
    #   The type of destination for the route.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The type of target for the route.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination of the route.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The route's target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/Route AWS API Documentation
    #
    class Route < Struct.new(
      :destination_type,
      :target_type,
      :destination,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Remediation option for the rule specified in the `ViolationTarget`.
    #
    # @!attribute [rw] remediation_action_type
    #   The remediation action that will be performed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Brief description of the action that will be performed.
    #   @return [String]
    #
    # @!attribute [rw] remediation_result
    #   The final state of the rule specified in the `ViolationTarget` after
    #   it is remediated.
    #   @return [Types::SecurityGroupRuleDescription]
    #
    # @!attribute [rw] is_default_action
    #   Indicates if the current action is the default action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityGroupRemediationAction AWS API Documentation
    #
    class SecurityGroupRemediationAction < Struct.new(
      :remediation_action_type,
      :description,
      :remediation_result,
      :is_default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a set of permissions for a security group rule.
    #
    # @!attribute [rw] ipv4_range
    #   The IPv4 ranges for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_range
    #   The IPv6 ranges for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix list for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. A value of `-1` indicates all ICMP/ICMPv6
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityGroupRuleDescription AWS API Documentation
    #
    class SecurityGroupRuleDescription < Struct.new(
      :ipv4_range,
      :ipv6_range,
      :prefix_list_id,
      :protocol,
      :from_port,
      :to_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the security service that is being used to protect the
    # resources.
    #
    # @note When making an API call, you may pass SecurityServicePolicyData
    #   data as a hash:
    #
    #       {
    #         type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT, NETWORK_FIREWALL, DNS_FIREWALL
    #         managed_service_data: "ManagedServiceData",
    #       }
    #
    # @!attribute [rw] type
    #   The service that the policy is using to protect the resources. This
    #   specifies the type of policy that is created, either an WAF policy,
    #   a Shield Advanced policy, or a security group policy. For security
    #   group policies, Firewall Manager supports one security group for
    #   each common policy and for each content audit policy. This is an
    #   adjustable limit that you can increase by contacting Amazon Web
    #   Services Support.
    #   @return [String]
    #
    # @!attribute [rw] managed_service_data
    #   Details about the service that are specific to the service type, in
    #   JSON format.
    #
    #   * Example: `DNS_FIREWALL`
    #
    #     `"\{"type":"DNS_FIREWALL","preProcessRuleGroups":[\{"ruleGroupId":"rslvr-frg-1","priority":10\}],"postProcessRuleGroups":[\{"ruleGroupId":"rslvr-frg-2","priority":9911\}]\}"`
    #
    #     <note markdown="1"> Valid values for `preProcessRuleGroups` are between 1 and 99.
    #     Valid values for `postProcessRuleGroups` are between 9901 and
    #     10000.
    #
    #      </note>
    #
    #   * Example: `NETWORK_FIREWALL`
    #
    #     `"\{"type":"NETWORK_FIREWALL","networkFirewallStatelessRuleGroupReferences":[\{"resourceARN":"arn:aws:network-firewall:us-west-1:1234567891011:stateless-rulegroup/rulegroup2","priority":10\}],"networkFirewallStatelessDefaultActions":["aws:pass","custom1"],"networkFirewallStatelessFragmentDefaultActions":["custom2","aws:pass"],"networkFirewallStatelessCustomActions":[\{"actionName":"custom1","actionDefinition":\{"publishMetricAction":\{"dimensions":[\{"value":"dimension1"\}]\}\}\},\{"actionName":"custom2","actionDefinition":\{"publishMetricAction":\{"dimensions":[\{"value":"dimension2"\}]\}\}\}],"networkFirewallStatefulRuleGroupReferences":[\{"resourceARN":"arn:aws:network-firewall:us-west-1:1234567891011:stateful-rulegroup/rulegroup1"\}],"networkFirewallOrchestrationConfig":\{"singleFirewallEndpointPerVPC":true,"allowedIPV4CidrList":["10.24.34.0/28"]\}
    #     \}"`
    #
    #   * Specification for `SHIELD_ADVANCED` for Amazon CloudFront
    #     distributions
    #
    #     `"\{"type":"SHIELD_ADVANCED","automaticResponseConfiguration":
    #     \{"automaticResponseStatus":"ENABLED|IGNORED|DISABLED",
    #     "automaticResponseAction":"BLOCK|COUNT"\},
    #     "overrideCustomerWebaclClassic":true|false\}"`
    #
    #     For example:
    #     `"\{"type":"SHIELD_ADVANCED","automaticResponseConfiguration":
    #     \{"automaticResponseStatus":"ENABLED",
    #     "automaticResponseAction":"COUNT"\}\}"`
    #
    #     The default value for `automaticResponseStatus` is `IGNORED`. The
    #     value for `automaticResponseAction` is only required when
    #     `automaticResponseStatus` is set to `ENABLED`. The default value
    #     for `overrideCustomerWebaclClassic` is `false`.
    #
    #     For other resource types that you can protect with a Shield
    #     Advanced policy, this `ManagedServiceData` configuration is an
    #     empty string.
    #
    #   * Example: `WAFV2`
    #
    #     `"\{"type":"WAFV2","preProcessRuleGroups":[\{"ruleGroupArn":null,"overrideAction":\{"type":"NONE"\},"managedRuleGroupIdentifier":\{"version":null,"vendorName":"AWS","managedRuleGroupName":"AWSManagedRulesAmazonIpReputationList"\},"ruleGroupType":"ManagedRuleGroup","excludeRules":[\{"name":"NoUserAgent_HEADER"\}]\}],"postProcessRuleGroups":[],"defaultAction":\{"type":"ALLOW"\},"overrideCustomerWebACLAssociation":false,"loggingConfiguration":\{"logDestinationConfigs":["arn:aws:firehose:us-west-2:12345678912:deliverystream/aws-waf-logs-fms-admin-destination"],"redactedFields":[\{"redactedFieldType":"SingleHeader","redactedFieldValue":"Cookies"\},\{"redactedFieldType":"Method"\}]\}\}"`
    #
    #     In the `loggingConfiguration`, you can specify one
    #     `logDestinationConfigs`, you can optionally provide up to 20
    #     `redactedFields`, and the `RedactedFieldType` must be one of
    #     `URI`, `QUERY_STRING`, `HEADER`, or `METHOD`.
    #
    #   * Example: `WAF Classic`
    #
    #     `"\{"type": "WAF", "ruleGroups":
    #     [\{"id":"12345678-1bcd-9012-efga-0987654321ab",
    #     "overrideAction" : \{"type": "COUNT"\}\}],
    #     "defaultAction": \{"type": "BLOCK"\}\}"`
    #
    #   * Example: `SECURITY_GROUPS_COMMON`
    #
    #     `"\{"type":"SECURITY_GROUPS_COMMON","revertManualSecurityGroupChanges":false,"exclusiveResourceSecurityGroupManagement":false,
    #     "applyToAllEC2InstanceENIs":false,"securityGroups":[\{"id":"
    #     sg-000e55995d61a06bd"\}]\}"`
    #
    #   * Example: Shared VPCs. Apply the preceding policy to resources in
    #     shared VPCs as well as to those in VPCs that the account owns
    #
    #     `"\{"type":"SECURITY_GROUPS_COMMON","revertManualSecurityGroupChanges":false,"exclusiveResourceSecurityGroupManagement":false,
    #     "applyToAllEC2InstanceENIs":false,"includeSharedVPC":true,"securityGroups":[\{"id":"
    #     sg-000e55995d61a06bd"\}]\}"`
    #
    #   * Example: `SECURITY_GROUPS_CONTENT_AUDIT`
    #
    #     `"\{"type":"SECURITY_GROUPS_CONTENT_AUDIT","securityGroups":[\{"id":"sg-000e55995d61a06bd"\}],"securityGroupAction":\{"type":"ALLOW"\}\}"`
    #
    #     The security group action for content audit can be `ALLOW` or
    #     `DENY`. For `ALLOW`, all in-scope security group rules must be
    #     within the allowed range of the policy's security group rules.
    #     For `DENY`, all in-scope security group rules must not contain a
    #     value or a range that matches a rule value or range in the policy
    #     security group.
    #
    #   * Example: `SECURITY_GROUPS_USAGE_AUDIT`
    #
    #     `"\{"type":"SECURITY_GROUPS_USAGE_AUDIT","deleteUnusedSecurityGroups":true,"coalesceRedundantSecurityGroups":true\}"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityServicePolicyData AWS API Documentation
    #
    class SecurityServicePolicyData < Struct.new(
      :type,
      :managed_service_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network Firewall stateful rule group, used in a
    # NetworkFirewallPolicyDescription.
    #
    # @!attribute [rw] rule_group_name
    #   The name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/StatefulRuleGroup AWS API Documentation
    #
    class StatefulRuleGroup < Struct.new(
      :rule_group_name,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network Firewall stateless rule group, used in a
    # NetworkFirewallPolicyDescription.
    #
    # @!attribute [rw] rule_group_name
    #   The name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule group. Network Firewall evaluates the
    #   stateless rule groups in a firewall policy starting from the lowest
    #   priority setting.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/StatelessRuleGroup AWS API Documentation
    #
    class StatelessRuleGroup < Struct.new(
      :rule_group_name,
      :resource_id,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of key:value pairs associated with an Amazon Web Services
    # resource. The key:value pair can be anything you define. Typically,
    # the tag key represents a category (such as "environment") and the
    # tag value represents a specific value within that category (such as
    # "test," "development," or "production"). You can add up to 50
    # tags to each Amazon Web Services resource.
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
    #   Part of the key:value pair that defines a tag. You can use a tag key
    #   to describe a category of information, such as "customer." Tag
    #   keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Part of the key:value pair that defines a tag. You can use a tag
    #   value to describe a specific value within a category, such as
    #   "companyA" or "companyB." Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/Tag AWS API Documentation
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
    #         resource_arn: "ResourceArn", # required
    #         tag_list: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The tags to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The Firewall Manager resources that support tagging are policies,
    #   applications lists, and protocols lists.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Violations for a resource based on the specified Firewall Manager
    # policy and Amazon Web Services account.
    #
    # @!attribute [rw] policy_id
    #   The ID of the Firewall Manager policy that the violation details
    #   were requested for.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The Amazon Web Services account that the violation details were
    #   requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID that the violation details were requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type that the violation details were requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_violations
    #   List of violations for the requested resource.
    #   @return [Array<Types::ResourceViolation>]
    #
    # @!attribute [rw] resource_tags
    #   The `ResourceTag` objects associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_description
    #   Brief description for the requested resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ViolationDetail AWS API Documentation
    #
    class ViolationDetail < Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      :resource_violations,
      :resource_tags,
      :resource_description)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
