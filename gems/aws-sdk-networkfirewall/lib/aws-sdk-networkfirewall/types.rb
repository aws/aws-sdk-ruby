# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkFirewall
  module Types

    # A custom action to use in stateless rule actions settings. This is
    # used in CustomAction.
    #
    # @!attribute [rw] publish_metric_action
    #   Stateless inspection criteria that publishes the specified metrics
    #   to Amazon CloudWatch for the matching packet. This setting defines a
    #   CloudWatch dimension value to be published.
    #
    #   You can pair this custom action with any of the standard stateless
    #   rule actions. For example, you could pair this in a rule action with
    #   the standard action that forwards the packet for stateful
    #   inspection. Then, when a packet matches the rule, Network Firewall
    #   publishes metrics for the packet and forwards it.
    #   @return [Types::PublishMetricAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ActionDefinition AWS API Documentation
    #
    class ActionDefinition < Struct.new(
      :publish_metric_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single IP address specification. This is used in the MatchAttributes
    # source and destination specifications.
    #
    # @!attribute [rw] address_definition
    #   Specify an IP address or a block of IP addresses in Classless
    #   Inter-Domain Routing (CIDR) notation. Network Firewall supports all
    #   address ranges for IPv4 and IPv6.
    #
    #   Examples:
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     192.0.2.0 to 192.0.2.255, specify `192.0.2.0/24`.
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Address AWS API Documentation
    #
    class Address < Struct.new(
      :address_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateFirewallPolicyRequest AWS API Documentation
    #
    class AssociateFirewallPolicyRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateFirewallPolicyResponse AWS API Documentation
    #
    class AssociateFirewallPolicyResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the subnets that you want to associate with the firewall.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateSubnetsRequest AWS API Documentation
    #
    class AssociateSubnetsRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the subnets that are associated with the firewall.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateSubnetsResponse AWS API Documentation
    #
    class AssociateSubnetsResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration and status for a single subnet that you've
    # specified for use by the Network Firewall firewall. This is part of
    # the FirewallStatus.
    #
    # @!attribute [rw] subnet_id
    #   The unique identifier of the subnet that you've specified to be
    #   used for a firewall endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The identifier of the firewall endpoint that Network Firewall has
    #   instantiated in the subnet. You use this to identify the firewall
    #   endpoint in the VPC route tables, when you redirect the VPC traffic
    #   through the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the firewall endpoint in the subnet. This
    #   value reflects both the instantiation of the endpoint in the VPC
    #   subnet and the sync states that are reported in the `Config`
    #   settings. When this value is `READY`, the endpoint is available and
    #   configured properly to handle network traffic. When the endpoint
    #   isn't available for traffic, this value will reflect its state, for
    #   example `CREATING` or `DELETING`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If Network Firewall fails to create or delete the firewall endpoint
    #   in the subnet, it populates this with the reason for the error or
    #   failure and how to resolve it. A `FAILED` status indicates a
    #   non-recoverable state, and a `ERROR` status indicates an issue that
    #   you can fix. Depending on the error, it can take as many as 15
    #   minutes to populate this field. For more information about the
    #   causes for failiure or errors and solutions available for this
    #   field, see [Troubleshooting firewall endpoint failures][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :subnet_id,
      :endpoint_id,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes the CIDR blocks used by the IP set references in a
    # firewall. Network Firewall calculates the number of CIDRs by taking an
    # aggregated count of all CIDRs used by the IP sets you are referencing.
    #
    # @!attribute [rw] available_cidr_count
    #   The number of CIDR blocks available for use by the IP set references
    #   in a firewall.
    #   @return [Integer]
    #
    # @!attribute [rw] utilized_cidr_count
    #   The number of CIDR blocks used by the IP set references in a
    #   firewall.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_set_references
    #   The list of the IP set references used by a firewall.
    #   @return [Hash<String,Types::IPSetMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CIDRSummary AWS API Documentation
    #
    class CIDRSummary < Struct.new(
      :available_cidr_count,
      :utilized_cidr_count,
      :ip_set_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # The capacity usage summary of the resources used by the ReferenceSets
    # in a firewall.
    #
    # @!attribute [rw] cid_rs
    #   Describes the capacity usage of the CIDR blocks used by the IP set
    #   references in a firewall.
    #   @return [Types::CIDRSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CapacityUsageSummary AWS API Documentation
    #
    class CapacityUsageSummary < Struct.new(
      :cid_rs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy
    #   The rule groups and policy actions to use in the firewall policy.
    #   @return [Types::FirewallPolicy]
    #
    # @!attribute [rw] description
    #   A description of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] dry_run
    #   Indicates whether you want Network Firewall to just check the
    #   validity of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can
    #   run successfully, but doesn't actually make the requested changes.
    #   The call returns the value that the request would return if you ran
    #   it with dry run set to `FALSE`, but doesn't make additions or
    #   changes to your resources. This option allows you to make sure that
    #   you have the required permissions to run the request and that your
    #   request parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains settings for encryption of your
    #   firewall policy resources.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewallPolicyRequest AWS API Documentation
    #
    class CreateFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :tags,
      :dry_run,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the firewall policy. The token
    #   marks the state of the policy resource at the time of the request.
    #
    #   To make changes to the policy, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the policy
    #   hasn't changed since you last retrieved it. If it has changed, the
    #   operation fails with an `InvalidTokenException`. If this happens,
    #   retrieve the firewall policy again to get a current copy of it with
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_response
    #   The high-level properties of a firewall policy. This, along with the
    #   FirewallPolicy, define the policy. You can retrieve all objects for
    #   a firewall policy by calling DescribeFirewallPolicy.
    #   @return [Types::FirewallPolicyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewallPolicyResponse AWS API Documentation
    #
    class CreateFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the FirewallPolicy that you want
    #   to use for the firewall.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC where Network Firewall should
    #   create the firewall.
    #
    #   You can't change this setting after you create the firewall.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mappings
    #   The public subnets to use for your Network Firewall firewalls. Each
    #   subnet must belong to a different Availability Zone in the VPC.
    #   Network Firewall creates a firewall endpoint in each subnet.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting
    #   a firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] subnet_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to
    #   protect against accidentally modifying the firewall policy for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains settings for encryption of your
    #   firewall resources.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewallRequest AWS API Documentation
    #
    class CreateFirewallRequest < Struct.new(
      :firewall_name,
      :firewall_policy_arn,
      :vpc_id,
      :subnet_mappings,
      :delete_protection,
      :subnet_change_protection,
      :firewall_policy_change_protection,
      :description,
      :tags,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall
    #   The configuration settings for the firewall. These settings include
    #   the firewall policy and the subnets in your VPC to use for the
    #   firewall endpoints.
    #   @return [Types::Firewall]
    #
    # @!attribute [rw] firewall_status
    #   Detailed information about the current status of a Firewall. You can
    #   retrieve this for a firewall by calling DescribeFirewall and
    #   providing the firewall name and ARN.
    #   @return [Types::FirewallStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateFirewallResponse AWS API Documentation
    #
    class CreateFirewallResponse < Struct.new(
      :firewall,
      :firewall_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rule_group
    #   An object that defines the rule group rules.
    #
    #   <note markdown="1"> You must provide either this rule group setting or a `Rules`
    #   setting, but not both.
    #
    #    </note>
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] rules
    #   A string containing stateful rule group rules specifications in
    #   Suricata flat format, with one rule per line. Use this to import
    #   your existing Suricata compatible rule groups.
    #
    #   <note markdown="1"> You must provide either this rules setting or a populated
    #   `RuleGroup` setting, but not both.
    #
    #    </note>
    #
    #   You can provide your rule group specification in Suricata flat
    #   format through this setting when you create or update your rule
    #   group. The call response returns a RuleGroup object that Network
    #   Firewall has populated from your string.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The maximum operating resources that this rule group can use. Rule
    #   group capacity is fixed at creation. When you update a rule group,
    #   you are limited to this capacity. When you reference a rule group
    #   from a firewall policy, Network Firewall reserves this capacity for
    #   the rule group.
    #
    #   You can retrieve the capacity that would be required for a rule
    #   group before you create the rule group by calling CreateRuleGroup
    #   with `DryRun` set to `TRUE`.
    #
    #   <note markdown="1"> You can't change or exceed this capacity when you update the rule
    #   group, so leave room for your rule group to grow.
    #
    #    </note>
    #
    #   **Capacity for a stateless rule group**
    #
    #   For a stateless rule group, the capacity required is the sum of the
    #   capacity requirements of the individual rules that you expect to
    #   have in the rule group.
    #
    #   To calculate the capacity requirement of a single rule, multiply the
    #   capacity requirement values of each of the rule's match settings:
    #
    #   * A match setting with no criteria specified has a value of 1.
    #
    #   * A match setting with `Any` specified has a value of 1.
    #
    #   * All other match settings have a value equal to the number of
    #     elements provided in the setting. For example, a protocol setting
    #     \["UDP"\] and a source setting \["10.0.0.0/24"\] each have a
    #     value of 1. A protocol setting \["UDP","TCP"\] has a value of
    #     2. A source setting
    #     \["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"\] has a value of
    #     3.
    #
    #   A rule with no criteria specified in any of its match settings has a
    #   capacity requirement of 1. A rule with protocol setting
    #   \["UDP","TCP"\], source setting
    #   \["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"\], and a single
    #   specification or no specification for each of the other match
    #   settings has a capacity requirement of 6.
    #
    #   **Capacity for a stateful rule group**
    #
    #   For a stateful rule group, the minimum capacity required is the
    #   number of individual rules that you expect to have in the rule
    #   group.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] dry_run
    #   Indicates whether you want Network Firewall to just check the
    #   validity of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can
    #   run successfully, but doesn't actually make the requested changes.
    #   The call returns the value that the request would return if you ran
    #   it with dry run set to `FALSE`, but doesn't make additions or
    #   changes to your resources. This option allows you to make sure that
    #   you have the required permissions to run the request and that your
    #   request parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains settings for encryption of your rule
    #   group resources.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] source_metadata
    #   A complex type that contains metadata about the rule group that your
    #   own rule group is copied from. You can use the metadata to keep
    #   track of updates made to the originating rule group.
    #   @return [Types::SourceMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateRuleGroupRequest AWS API Documentation
    #
    class CreateRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group,
      :rules,
      :type,
      :description,
      :capacity,
      :tags,
      :dry_run,
      :encryption_configuration,
      :source_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the rule group. The token marks
    #   the state of the rule group resource at the time of the request.
    #
    #   To make changes to the rule group, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the rule
    #   group hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the rule group again to get a current copy of
    #   it with a current token. Reapply your changes as needed, then try
    #   the operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_response
    #   The high-level properties of a rule group. This, along with the
    #   RuleGroup, define the rule group. You can retrieve all objects for a
    #   rule group by calling DescribeRuleGroup.
    #   @return [Types::RuleGroupResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateRuleGroupResponse AWS API Documentation
    #
    class CreateRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration
    #   The object that defines a TLS inspection configuration. This, along
    #   with TLSInspectionConfigurationResponse, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #
    #   Network Firewall uses a TLS inspection configuration to decrypt
    #   traffic. Network Firewall re-encrypts the traffic before sending it
    #   to its destination.
    #
    #   To use a TLS inspection configuration, you add it to a Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect inbound traffic. You can reference a TLS inspection
    #   configuration from more than one firewall policy, and you can use a
    #   firewall policy in more than one firewall. For more information
    #   about using TLS inspection configurations, see [Decrypting SSL/TLS
    #   traffic with TLS inspection configurations][1] in the *Network
    #   Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #   @return [Types::TLSInspectionConfiguration]
    #
    # @!attribute [rw] description
    #   A description of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains optional Amazon Web Services Key
    #   Management Service (KMS) encryption settings for your Network
    #   Firewall resources. Your data is encrypted by default with an Amazon
    #   Web Services owned key that Amazon Web Services owns and manages for
    #   you. You can use either the Amazon Web Services owned key, or
    #   provide your own customer managed key. To learn more about KMS
    #   encryption of your Network Firewall resources, see [Encryption at
    #   rest with Amazon Web Services Key Managment Service][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateTLSInspectionConfigurationRequest AWS API Documentation
    #
    class CreateTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_name,
      :tls_inspection_configuration,
      :description,
      :tags,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the TLS inspection configuration.
    #   The token marks the state of the TLS inspection configuration
    #   resource at the time of the request.
    #
    #   To make changes to the TLS inspection configuration, you provide the
    #   token in your request. Network Firewall uses the token to ensure
    #   that the TLS inspection configuration hasn't changed since you last
    #   retrieved it. If it has changed, the operation fails with an
    #   `InvalidTokenException`. If this happens, retrieve the TLS
    #   inspection configuration again to get a current copy of it with a
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_response
    #   The high-level properties of a TLS inspection configuration. This,
    #   along with the TLSInspectionConfiguration, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #   @return [Types::TLSInspectionConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateTLSInspectionConfigurationResponse AWS API Documentation
    #
    class CreateTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional, non-standard action to use for stateless packet handling.
    # You can define this in addition to the standard action that you must
    # specify.
    #
    # You define and name the custom actions that you want to be able to
    # use, and then you reference them by name in your actions settings.
    #
    # You can use custom actions in the following places:
    #
    # * In a rule group's StatelessRulesAndCustomActions specification. The
    #   custom actions are available for use by name inside the
    #   `StatelessRulesAndCustomActions` where you define them. You can use
    #   them for your stateless rule actions to specify what to do with a
    #   packet that matches the rule's match attributes.
    #
    # * In a FirewallPolicy specification, in `StatelessCustomActions`. The
    #   custom actions are available for use inside the policy where you
    #   define them. You can use them for the policy's default stateless
    #   actions settings to specify what to do with packets that don't
    #   match any of the policy's stateless rules.
    #
    # @!attribute [rw] action_name
    #   The descriptive name of the custom action. You can't change the
    #   name of a custom action after you create it.
    #   @return [String]
    #
    # @!attribute [rw] action_definition
    #   The custom action associated with the action name.
    #   @return [Types::ActionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CustomAction AWS API Documentation
    #
    class CustomAction < Struct.new(
      :action_name,
      :action_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewallPolicyRequest AWS API Documentation
    #
    class DeleteFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_policy_response
    #   The object containing the definition of the FirewallPolicyResponse
    #   that you asked to delete.
    #   @return [Types::FirewallPolicyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewallPolicyResponse AWS API Documentation
    #
    class DeleteFirewallPolicyResponse < Struct.new(
      :firewall_policy_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewallRequest AWS API Documentation
    #
    class DeleteFirewallRequest < Struct.new(
      :firewall_name,
      :firewall_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall
    #   The firewall defines the configuration settings for an Network
    #   Firewall firewall. These settings include the firewall policy, the
    #   subnets in your VPC to use for the firewall endpoints, and any tags
    #   that are attached to the firewall Amazon Web Services resource.
    #
    #   The status of the firewall, for example whether it's ready to
    #   filter network traffic, is provided in the corresponding
    #   FirewallStatus. You can retrieve both objects by calling
    #   DescribeFirewall.
    #   @return [Types::Firewall]
    #
    # @!attribute [rw] firewall_status
    #   Detailed information about the current status of a Firewall. You can
    #   retrieve this for a firewall by calling DescribeFirewall and
    #   providing the firewall name and ARN.
    #   @return [Types::FirewallStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteFirewallResponse AWS API Documentation
    #
    class DeleteFirewallResponse < Struct.new(
      :firewall,
      :firewall_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rule group or firewall policy
    #   whose resource policy you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteRuleGroupRequest AWS API Documentation
    #
    class DeleteRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_response
    #   The high-level properties of a rule group. This, along with the
    #   RuleGroup, define the rule group. You can retrieve all objects for a
    #   rule group by calling DescribeRuleGroup.
    #   @return [Types::RuleGroupResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteRuleGroupResponse AWS API Documentation
    #
    class DeleteRuleGroupResponse < Struct.new(
      :rule_group_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteTLSInspectionConfigurationRequest AWS API Documentation
    #
    class DeleteTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_inspection_configuration_response
    #   The high-level properties of a TLS inspection configuration. This,
    #   along with the TLSInspectionConfiguration, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #   @return [Types::TLSInspectionConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteTLSInspectionConfigurationResponse AWS API Documentation
    #
    class DeleteTLSInspectionConfigurationResponse < Struct.new(
      :tls_inspection_configuration_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallPolicyRequest AWS API Documentation
    #
    class DescribeFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the firewall policy. The token
    #   marks the state of the policy resource at the time of the request.
    #
    #   To make changes to the policy, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the policy
    #   hasn't changed since you last retrieved it. If it has changed, the
    #   operation fails with an `InvalidTokenException`. If this happens,
    #   retrieve the firewall policy again to get a current copy of it with
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_response
    #   The high-level properties of a firewall policy. This, along with the
    #   FirewallPolicy, define the policy. You can retrieve all objects for
    #   a firewall policy by calling DescribeFirewallPolicy.
    #   @return [Types::FirewallPolicyResponse]
    #
    # @!attribute [rw] firewall_policy
    #   The policy for the specified firewall policy.
    #   @return [Types::FirewallPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallPolicyResponse AWS API Documentation
    #
    class DescribeFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response,
      :firewall_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallRequest AWS API Documentation
    #
    class DescribeFirewallRequest < Struct.new(
      :firewall_name,
      :firewall_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall
    #   The configuration settings for the firewall. These settings include
    #   the firewall policy and the subnets in your VPC to use for the
    #   firewall endpoints.
    #   @return [Types::Firewall]
    #
    # @!attribute [rw] firewall_status
    #   Detailed information about the current status of a Firewall. You can
    #   retrieve this for a firewall by calling DescribeFirewall and
    #   providing the firewall name and ARN.
    #   @return [Types::FirewallStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallResponse AWS API Documentation
    #
    class DescribeFirewallResponse < Struct.new(
      :update_token,
      :firewall,
      :firewall_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeLoggingConfigurationRequest AWS API Documentation
    #
    class DescribeLoggingConfigurationRequest < Struct.new(
      :firewall_arn,
      :firewall_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Defines how Network Firewall performs logging for a Firewall.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeLoggingConfigurationResponse AWS API Documentation
    #
    class DescribeLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the rule group or firewall policy
    #   whose resource policy you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeResourcePolicyRequest AWS API Documentation
    #
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The IAM policy for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeResourcePolicyResponse AWS API Documentation
    #
    class DescribeResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_arn
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupMetadataRequest AWS API Documentation
    #
    class DescribeRuleGroupMetadataRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_arn
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Returns the metadata objects for the specified rule group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The maximum operating resources that this rule group can use. Rule
    #   group capacity is fixed at creation. When you update a rule group,
    #   you are limited to this capacity. When you reference a rule group
    #   from a firewall policy, Network Firewall reserves this capacity for
    #   the rule group.
    #
    #   You can retrieve the capacity that would be required for a rule
    #   group before you create the rule group by calling CreateRuleGroup
    #   with `DryRun` set to `TRUE`.
    #   @return [Integer]
    #
    # @!attribute [rw] stateful_rule_options
    #   Additional options governing how Network Firewall handles the rule
    #   group. You can only use these for stateful rule groups.
    #   @return [Types::StatefulRuleOptions]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the rule group was changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupMetadataResponse AWS API Documentation
    #
    class DescribeRuleGroupMetadataResponse < Struct.new(
      :rule_group_arn,
      :rule_group_name,
      :description,
      :type,
      :capacity,
      :stateful_rule_options,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupRequest AWS API Documentation
    #
    class DescribeRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the rule group. The token marks
    #   the state of the rule group resource at the time of the request.
    #
    #   To make changes to the rule group, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the rule
    #   group hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the rule group again to get a current copy of
    #   it with a current token. Reapply your changes as needed, then try
    #   the operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] rule_group
    #   The object that defines the rules in a rule group. This, along with
    #   RuleGroupResponse, define the rule group. You can retrieve all
    #   objects for a rule group by calling DescribeRuleGroup.
    #
    #   Network Firewall uses a rule group to inspect and control network
    #   traffic. You define stateless rule groups to inspect individual
    #   packets and you define stateful rule groups to inspect packets in
    #   the context of their traffic flow.
    #
    #   To use a rule group, you include it by reference in an Network
    #   Firewall firewall policy, then you use the policy in a firewall. You
    #   can reference a rule group from more than one firewall policy, and
    #   you can use a firewall policy in more than one firewall.
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] rule_group_response
    #   The high-level properties of a rule group. This, along with the
    #   RuleGroup, define the rule group. You can retrieve all objects for a
    #   rule group by calling DescribeRuleGroup.
    #   @return [Types::RuleGroupResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupResponse AWS API Documentation
    #
    class DescribeRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group,
      :rule_group_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeTLSInspectionConfigurationRequest AWS API Documentation
    #
    class DescribeTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the TLS inspection configuration.
    #   The token marks the state of the TLS inspection configuration
    #   resource at the time of the request.
    #
    #   To make changes to the TLS inspection configuration, you provide the
    #   token in your request. Network Firewall uses the token to ensure
    #   that the TLS inspection configuration hasn't changed since you last
    #   retrieved it. If it has changed, the operation fails with an
    #   `InvalidTokenException`. If this happens, retrieve the TLS
    #   inspection configuration again to get a current copy of it with a
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration
    #   The object that defines a TLS inspection configuration. This, along
    #   with TLSInspectionConfigurationResponse, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #
    #   Network Firewall uses a TLS inspection configuration to decrypt
    #   traffic. Network Firewall re-encrypts the traffic before sending it
    #   to its destination.
    #
    #   To use a TLS inspection configuration, you add it to a Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect inbound traffic. You can reference a TLS inspection
    #   configuration from more than one firewall policy, and you can use a
    #   firewall policy in more than one firewall. For more information
    #   about using TLS inspection configurations, see [Decrypting SSL/TLS
    #   traffic with TLS inspection configurations][1] in the *Network
    #   Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #   @return [Types::TLSInspectionConfiguration]
    #
    # @!attribute [rw] tls_inspection_configuration_response
    #   The high-level properties of a TLS inspection configuration. This,
    #   along with the TLSInspectionConfiguration, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #   @return [Types::TLSInspectionConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeTLSInspectionConfigurationResponse AWS API Documentation
    #
    class DescribeTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration,
      :tls_inspection_configuration_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value to use in an Amazon CloudWatch custom metric dimension. This
    # is used in the `PublishMetrics` CustomAction. A CloudWatch custom
    # metric dimension is a name/value pair that's part of the identity of
    # a metric.
    #
    # Network Firewall sets the dimension name to `CustomAction` and you
    # provide the dimension value.
    #
    # For more information about CloudWatch custom metric dimensions, see
    # [Publishing Custom Metrics][1] in the [Amazon CloudWatch User
    # Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#usingDimensions
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
    #
    # @!attribute [rw] value
    #   The value to use in the custom metric dimension.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers for the subnets that you want to
    #   disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DisassociateSubnetsRequest AWS API Documentation
    #
    class DisassociateSubnetsRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the subnets that are associated with the firewall.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DisassociateSubnetsResponse AWS API Documentation
    #
    class DisassociateSubnetsResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains optional Amazon Web Services Key
    # Management Service (KMS) encryption settings for your Network Firewall
    # resources. Your data is encrypted by default with an Amazon Web
    # Services owned key that Amazon Web Services owns and manages for you.
    # You can use either the Amazon Web Services owned key, or provide your
    # own customer managed key. To learn more about KMS encryption of your
    # Network Firewall resources, see [Encryption at rest with Amazon Web
    # Services Key Managment Service][1] in the *Network Firewall Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #
    # @!attribute [rw] key_id
    #   The ID of the Amazon Web Services Key Management Service (KMS)
    #   customer managed key. You can use any of the key identifiers that
    #   KMS supports, unless you're using a key that's managed by another
    #   account. If you're using a key managed by another account, then
    #   specify the key ARN. For more information, see [Key ID][1] in the
    #   *Amazon Web Services KMS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of Amazon Web Services KMS key to use for encryption of
    #   your Network Firewall resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :key_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The firewall defines the configuration settings for an Network
    # Firewall firewall. These settings include the firewall policy, the
    # subnets in your VPC to use for the firewall endpoints, and any tags
    # that are attached to the firewall Amazon Web Services resource.
    #
    # The status of the firewall, for example whether it's ready to filter
    # network traffic, is provided in the corresponding FirewallStatus. You
    # can retrieve both objects by calling DescribeFirewall.
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   The relationship of firewall to firewall policy is many to one. Each
    #   firewall requires one firewall policy association, and you can use
    #   the same firewall policy for multiple firewalls.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC where the firewall is in use.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mappings
    #   The public subnets that Network Firewall is using for the firewall.
    #   Each subnet must belong to a different Availability Zone.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting
    #   a firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] subnet_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to
    #   protect against accidentally modifying the firewall policy for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_id
    #   The unique identifier for the firewall.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your firewall.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Firewall AWS API Documentation
    #
    class Firewall < Struct.new(
      :firewall_name,
      :firewall_arn,
      :firewall_policy_arn,
      :vpc_id,
      :subnet_mappings,
      :delete_protection,
      :subnet_change_protection,
      :firewall_policy_change_protection,
      :description,
      :firewall_id,
      :tags,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a firewall, returned by operations like
    # create and describe. You can use the information provided in the
    # metadata to retrieve and manage a firewall.
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallMetadata AWS API Documentation
    #
    class FirewallMetadata < Struct.new(
      :firewall_name,
      :firewall_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The firewall policy defines the behavior of a firewall using a
    # collection of stateless and stateful rule groups and other settings.
    # You can use one firewall policy for multiple firewalls.
    #
    # This, along with FirewallPolicyResponse, define the policy. You can
    # retrieve all objects for a firewall policy by calling
    # DescribeFirewallPolicy.
    #
    # @!attribute [rw] stateless_rule_group_references
    #   References to the stateless rule groups that are used in the policy.
    #   These define the matching criteria in stateless rules.
    #   @return [Array<Types::StatelessRuleGroupReference>]
    #
    # @!attribute [rw] stateless_default_actions
    #   The actions to take on a packet if it doesn't match any of the
    #   stateless rules in the policy. If you want non-matching packets to
    #   be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
    #
    #   You must specify one of the standard actions: `aws:pass`,
    #   `aws:drop`, or `aws:forward_to_sfe`. In addition, you can specify
    #   custom actions that are compatible with your standard section
    #   choice.
    #
    #   For example, you could specify `["aws:pass"]` or you could specify
    #   `["aws:pass", “customActionName”]`. For information about
    #   compatibility, see the custom action descriptions under
    #   CustomAction.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_fragment_default_actions
    #   The actions to take on a fragmented UDP packet if it doesn't match
    #   any of the stateless rules in the policy. Network Firewall only
    #   manages UDP packet fragments and silently drops packet fragments for
    #   other protocols. If you want non-matching fragmented UDP packets to
    #   be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
    #
    #   You must specify one of the standard actions: `aws:pass`,
    #   `aws:drop`, or `aws:forward_to_sfe`. In addition, you can specify
    #   custom actions that are compatible with your standard section
    #   choice.
    #
    #   For example, you could specify `["aws:pass"]` or you could specify
    #   `["aws:pass", “customActionName”]`. For information about
    #   compatibility, see the custom action descriptions under
    #   CustomAction.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateless_custom_actions
    #   The custom action definitions that are available for use in the
    #   firewall policy's `StatelessDefaultActions` setting. You name each
    #   custom action that you define, and then you can use it by name in
    #   your default actions specifications.
    #   @return [Array<Types::CustomAction>]
    #
    # @!attribute [rw] stateful_rule_group_references
    #   References to the stateful rule groups that are used in the policy.
    #   These define the inspection criteria in stateful rules.
    #   @return [Array<Types::StatefulRuleGroupReference>]
    #
    # @!attribute [rw] stateful_default_actions
    #   The default actions to take on a packet that doesn't match any
    #   stateful rules. The stateful default action is optional, and is only
    #   valid when using the strict rule order.
    #
    #   Valid values of the stateful default action:
    #
    #   * aws:drop\_strict
    #
    #   * aws:drop\_established
    #
    #   * aws:alert\_strict
    #
    #   * aws:alert\_established
    #
    #   For more information, see [Strict evaluation order][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] stateful_engine_options
    #   Additional options governing how Network Firewall handles stateful
    #   rules. The stateful rule groups that you use in your policy must
    #   have stateful rule options settings that are compatible with these
    #   settings.
    #   @return [Types::StatefulEngineOptions]
    #
    # @!attribute [rw] tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] policy_variables
    #   Contains variables that you can use to override default Suricata
    #   settings in your firewall policy.
    #   @return [Types::PolicyVariables]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallPolicy AWS API Documentation
    #
    class FirewallPolicy < Struct.new(
      :stateless_rule_group_references,
      :stateless_default_actions,
      :stateless_fragment_default_actions,
      :stateless_custom_actions,
      :stateful_rule_group_references,
      :stateful_default_actions,
      :stateful_engine_options,
      :tls_inspection_configuration_arn,
      :policy_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a firewall policy, returned by operations
    # like create and describe. You can use the information provided in the
    # metadata to retrieve and manage a firewall policy. You can retrieve
    # all objects for a firewall policy by calling DescribeFirewallPolicy.
    #
    # @!attribute [rw] name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallPolicyMetadata AWS API Documentation
    #
    class FirewallPolicyMetadata < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The high-level properties of a firewall policy. This, along with the
    # FirewallPolicy, define the policy. You can retrieve all objects for a
    # firewall policy by calling DescribeFirewallPolicy.
    #
    # @!attribute [rw] firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   <note markdown="1"> If this response is for a create request that had `DryRun` set to
    #   `TRUE`, then this ARN is a placeholder that isn't attached to a
    #   valid resource.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_id
    #   The unique identifier for the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_status
    #   The current status of the firewall policy. You can retrieve this for
    #   a firewall policy by calling DescribeFirewallPolicy and providing
    #   the firewall policy's name or ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] consumed_stateless_rule_capacity
    #   The number of capacity units currently consumed by the policy's
    #   stateless rules.
    #   @return [Integer]
    #
    # @!attribute [rw] consumed_stateful_rule_capacity
    #   The number of capacity units currently consumed by the policy's
    #   stateful rules.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associations
    #   The number of firewalls that are associated with this firewall
    #   policy.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your firewall policy.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the firewall policy was changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallPolicyResponse AWS API Documentation
    #
    class FirewallPolicyResponse < Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      :firewall_policy_id,
      :description,
      :firewall_policy_status,
      :tags,
      :consumed_stateless_rule_capacity,
      :consumed_stateful_rule_capacity,
      :number_of_associations,
      :encryption_configuration,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the current status of a Firewall. You can
    # retrieve this for a firewall by calling DescribeFirewall and providing
    # the firewall name and ARN.
    #
    # @!attribute [rw] status
    #   The readiness of the configured firewall to handle network traffic
    #   across all of the Availability Zones where you've configured it.
    #   This setting is `READY` only when the
    #   `ConfigurationSyncStateSummary` value is `IN_SYNC` and the
    #   `Attachment` `Status` values for all of the configured subnets are
    #   `READY`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_sync_state_summary
    #   The configuration sync state for the firewall. This summarizes the
    #   sync states reported in the `Config` settings for all of the
    #   Availability Zones where you have configured the firewall.
    #
    #   When you create a firewall or update its configuration, for example
    #   by adding a rule group to its firewall policy, Network Firewall
    #   distributes the configuration changes to all zones where the
    #   firewall is in use. This summary indicates whether the configuration
    #   changes have been applied everywhere.
    #
    #   This status must be `IN_SYNC` for the firewall to be ready for use,
    #   but it doesn't indicate that the firewall is ready. The `Status`
    #   setting indicates firewall readiness.
    #   @return [String]
    #
    # @!attribute [rw] sync_states
    #   The subnets that you've configured for use by the Network Firewall
    #   firewall. This contains one array element per Availability Zone
    #   where you've configured a subnet. These objects provide details of
    #   the information that is summarized in the
    #   `ConfigurationSyncStateSummary` and `Status`, broken down by zone
    #   and configuration object.
    #   @return [Hash<String,Types::SyncState>]
    #
    # @!attribute [rw] capacity_usage_summary
    #   Describes the capacity usage of the resources contained in a
    #   firewall's reference sets. Network Firewall calclulates the
    #   capacity usage by taking an aggregated count of all of the resources
    #   used by all of the reference sets in a firewall.
    #   @return [Types::CapacityUsageSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallStatus AWS API Documentation
    #
    class FirewallStatus < Struct.new(
      :status,
      :configuration_sync_state_summary,
      :sync_states,
      :capacity_usage_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The basic rule criteria for Network Firewall to use to inspect packet
    # headers in stateful traffic flow inspection. Traffic flows that match
    # the criteria are a match for the corresponding StatefulRule.
    #
    # @!attribute [rw] protocol
    #   The protocol to inspect for. To specify all, you can use `IP`,
    #   because all traffic on Amazon Web Services and on the internet is
    #   IP.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source IP address or address range to inspect for, in CIDR
    #   notation. To match with any address, specify `ANY`.
    #
    #   Specify an IP address or a block of IP addresses in Classless
    #   Inter-Domain Routing (CIDR) notation. Network Firewall supports all
    #   address ranges for IPv4 and IPv6.
    #
    #   Examples:
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     192.0.2.0 to 192.0.2.255, specify `192.0.2.0/24`.
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port to inspect for. You can specify an individual port,
    #   for example `1994` and you can specify a port range, for example
    #   `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The direction of traffic flow to inspect. If set to `ANY`, the
    #   inspection matches bidirectional traffic, both from the source to
    #   the destination and from the destination to the source. If set to
    #   `FORWARD`, the inspection only matches traffic going from the source
    #   to the destination.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination IP address or address range to inspect for, in CIDR
    #   notation. To match with any address, specify `ANY`.
    #
    #   Specify an IP address or a block of IP addresses in Classless
    #   Inter-Domain Routing (CIDR) notation. Network Firewall supports all
    #   address ranges for IPv4 and IPv6.
    #
    #   Examples:
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     192.0.2.0 to 192.0.2.255, specify `192.0.2.0/24`.
    #
    #   * To configure Network Firewall to inspect for the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure Network Firewall to inspect for IP addresses from
    #     1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port to inspect for. You can specify an individual
    #   port, for example `1994` and you can specify a port range, for
    #   example `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Header AWS API Documentation
    #
    class Header < Struct.new(
      :protocol,
      :source,
      :source_port,
      :direction,
      :destination,
      :destination_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of IP addresses and address ranges, in CIDR notation. This is
    # part of a RuleVariables.
    #
    # @!attribute [rw] definition
    #   The list of IP addresses and address ranges, in CIDR notation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/IPSet AWS API Documentation
    #
    class IPSet < Struct.new(
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # General information about the IP set.
    #
    # @!attribute [rw] resolved_cidr_count
    #   Describes the total number of CIDR blocks currently in use by the IP
    #   set references in a firewall. To determine how many CIDR blocks are
    #   available for you to use in a firewall, you can call
    #   `AvailableCIDRCount`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/IPSetMetadata AWS API Documentation
    #
    class IPSetMetadata < Struct.new(
      :resolved_cidr_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures one or more IP set references for a Suricata-compatible
    # rule group. This is used in CreateRuleGroup or UpdateRuleGroup. An IP
    # set reference is a rule variable that references resources that you
    # create and manage in another Amazon Web Services service, such as an
    # Amazon VPC prefix list. Network Firewall IP set references enable you
    # to dynamically update the contents of your rules. When you create,
    # update, or delete the resource you are referencing in your rule,
    # Network Firewall automatically updates the rule's content with the
    # changes. For more information about IP set references in Network
    # Firewall, see [Using IP set references][1] in the *Network Firewall
    # Developer Guide*.
    #
    # Network Firewall currently supports [Amazon VPC prefix lists][2] and
    # [resource groups][3] in IP set references.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references
    # [2]: https://docs.aws.amazon.com/vpc/latest/userguide/managed-prefix-lists.html
    # [3]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references.html#rule-groups-referencing-resource-groups
    #
    # @!attribute [rw] reference_arn
    #   The Amazon Resource Name (ARN) of the resource that you are
    #   referencing in your rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/IPSetReference AWS API Documentation
    #
    class IPSetReference < Struct.new(
      :reference_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services doesn't currently have enough available capacity
    # to fulfill your request. Try your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InsufficientCapacityException AWS API Documentation
    #
    class InsufficientCapacityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request is valid, but Network Firewall couldn’t perform the
    # operation because of a system problem. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InternalServerError AWS API Documentation
    #
    class InternalServerError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because it's not valid. For example, you might
    # have tried to delete a rule group or firewall policy that's in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because of a problem with your request. Examples
    # include:
    #
    # * You specified an unsupported parameter name or value.
    #
    # * You tried to update a property with a value that isn't among the
    #   available types.
    #
    # * Your request references an ARN that is malformed, or corresponds to
    #   a resource that isn't valid in the context of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy statement failed validation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InvalidResourcePolicyException AWS API Documentation
    #
    class InvalidResourcePolicyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The token you provided is stale or isn't valid for the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/InvalidTokenException AWS API Documentation
    #
    class InvalidTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to perform the operation because doing so would violate a limit
    # setting.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Network Firewall to
    #   return for this request. If more objects are available, in the
    #   response, Network Firewall provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewallPoliciesRequest AWS API Documentation
    #
    class ListFirewallPoliciesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policies
    #   The metadata for the firewall policies. Depending on your setting
    #   for max results and the number of firewall policies that you have,
    #   this might not be the full list.
    #   @return [Array<Types::FirewallPolicyMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewallPoliciesResponse AWS API Documentation
    #
    class ListFirewallPoliciesResponse < Struct.new(
      :next_token,
      :firewall_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] vpc_ids
    #   The unique identifiers of the VPCs that you want Network Firewall to
    #   retrieve the firewalls for. Leave this blank to retrieve all
    #   firewalls that you have defined.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Network Firewall to
    #   return for this request. If more objects are available, in the
    #   response, Network Firewall provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewallsRequest AWS API Documentation
    #
    class ListFirewallsRequest < Struct.new(
      :next_token,
      :vpc_ids,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewalls
    #   The firewall metadata objects for the VPCs that you specified.
    #   Depending on your setting for max results and the number of
    #   firewalls you have, a single call might not be the full list.
    #   @return [Array<Types::FirewallMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFirewallsResponse AWS API Documentation
    #
    class ListFirewallsResponse < Struct.new(
      :next_token,
      :firewalls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Network Firewall to
    #   return for this request. If more objects are available, in the
    #   response, Network Firewall provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @!attribute [rw] scope
    #   The scope of the request. The default setting of `ACCOUNT` or a
    #   setting of `NULL` returns all of the rule groups in your account. A
    #   setting of `MANAGED` returns all available managed rule groups.
    #   @return [String]
    #
    # @!attribute [rw] managed_type
    #   Indicates the general category of the Amazon Web Services managed
    #   rule group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListRuleGroupsRequest AWS API Documentation
    #
    class ListRuleGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :scope,
      :managed_type,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] rule_groups
    #   The rule group metadata objects that you've defined. Depending on
    #   your setting for max results and the number of rule groups, this
    #   might not be the full list.
    #   @return [Array<Types::RuleGroupMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListRuleGroupsResponse AWS API Documentation
    #
    class ListRuleGroupsResponse < Struct.new(
      :next_token,
      :rule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Network Firewall to
    #   return for this request. If more objects are available, in the
    #   response, Network Firewall provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTLSInspectionConfigurationsRequest AWS API Documentation
    #
    class ListTLSInspectionConfigurationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configurations
    #   The TLS inspection configuration metadata objects that you've
    #   defined. Depending on your setting for max results and the number of
    #   TLS inspection configurations, this might not be the full list.
    #   @return [Array<Types::TLSInspectionConfigurationMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTLSInspectionConfigurationsResponse AWS API Documentation
    #
    class ListTLSInspectionConfigurationsResponse < Struct.new(
      :next_token,
      :tls_inspection_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Network Firewall to
    #   return for this request. If more objects are available, in the
    #   response, Network Firewall provides a `NextToken` value that you can
    #   use in a subsequent call to get the next batch of objects.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines where Network Firewall sends logs for the firewall for one log
    # type. This is used in LoggingConfiguration. You can send each type of
    # log to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data
    # Firehose delivery stream.
    #
    # Network Firewall generates logs for stateful rule groups. You can save
    # alert and flow log types. The stateful rules engine records flow logs
    # for all network traffic that it receives. It records alert logs for
    # traffic that matches stateful rules that have the rule action set to
    # `DROP` or `ALERT`.
    #
    # @!attribute [rw] log_type
    #   The type of log to send. Alert logs report traffic that matches a
    #   StatefulRule with an action setting that sends an alert log message.
    #   Flow logs are standard network traffic flow logs.
    #   @return [String]
    #
    # @!attribute [rw] log_destination_type
    #   The type of storage destination to send these logs to. You can send
    #   logs to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis
    #   Data Firehose delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] log_destination
    #   The named location for the logs, provided in a key:value mapping
    #   that is specific to the chosen destination type.
    #
    #   * For an Amazon S3 bucket, provide the name of the bucket, with key
    #     `bucketName`, and optionally provide a prefix, with key `prefix`.
    #     The following example specifies an Amazon S3 bucket named
    #     `DOC-EXAMPLE-BUCKET` and the prefix `alerts`:
    #
    #     `"LogDestination": \{ "bucketName": "DOC-EXAMPLE-BUCKET",
    #     "prefix": "alerts" \}`
    #
    #   * For a CloudWatch log group, provide the name of the CloudWatch log
    #     group, with key `logGroup`. The following example specifies a log
    #     group named `alert-log-group`:
    #
    #     `"LogDestination": \{ "logGroup": "alert-log-group" \}`
    #
    #   * For a Kinesis Data Firehose delivery stream, provide the name of
    #     the delivery stream, with key `deliveryStream`. The following
    #     example specifies a delivery stream named `alert-delivery-stream`:
    #
    #     `"LogDestination": \{ "deliveryStream": "alert-delivery-stream"
    #     \}`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/LogDestinationConfig AWS API Documentation
    #
    class LogDestinationConfig < Struct.new(
      :log_type,
      :log_destination_type,
      :log_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to send logs to a configured logging destination.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/LogDestinationPermissionException AWS API Documentation
    #
    class LogDestinationPermissionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how Network Firewall performs logging for a Firewall.
    #
    # @!attribute [rw] log_destination_configs
    #   Defines the logging destinations for the logs for a firewall.
    #   Network Firewall generates logs for stateful rule groups.
    #   @return [Array<Types::LogDestinationConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :log_destination_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Criteria for Network Firewall to use to inspect an individual packet
    # in stateless rule inspection. Each match attributes set can include
    # one or more items such as IP address, CIDR range, port number,
    # protocol, and TCP flags.
    #
    # @!attribute [rw] sources
    #   The source IP addresses and address ranges to inspect for, in CIDR
    #   notation. If not specified, this matches with any source address.
    #   @return [Array<Types::Address>]
    #
    # @!attribute [rw] destinations
    #   The destination IP addresses and address ranges to inspect for, in
    #   CIDR notation. If not specified, this matches with any destination
    #   address.
    #   @return [Array<Types::Address>]
    #
    # @!attribute [rw] source_ports
    #   The source ports to inspect for. If not specified, this matches with
    #   any source port. This setting is only used for protocols 6 (TCP) and
    #   17 (UDP).
    #
    #   You can specify individual ports, for example `1994` and you can
    #   specify port ranges, for example `1990:1994`.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] destination_ports
    #   The destination ports to inspect for. If not specified, this matches
    #   with any destination port. This setting is only used for protocols 6
    #   (TCP) and 17 (UDP).
    #
    #   You can specify individual ports, for example `1994` and you can
    #   specify port ranges, for example `1990:1994`.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocols
    #   The protocols to inspect for, specified using each protocol's
    #   assigned internet protocol number (IANA). If not specified, this
    #   matches with any protocol.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] tcp_flags
    #   The TCP flags and masks to inspect for. If not specified, this
    #   matches with any settings. This setting is only used for protocol 6
    #   (TCP).
    #   @return [Array<Types::TCPFlagField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/MatchAttributes AWS API Documentation
    #
    class MatchAttributes < Struct.new(
      :sources,
      :destinations,
      :source_ports,
      :destination_ports,
      :protocols,
      :tcp_flags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration status for a single policy or rule group that
    # is used for a firewall endpoint. Network Firewall provides each
    # endpoint with the rules that are configured in the firewall policy.
    # Each time you add a subnet or modify the associated firewall policy,
    # Network Firewall synchronizes the rules in the endpoint, so it can
    # properly filter network traffic. This is part of a SyncState for a
    # firewall.
    #
    # @!attribute [rw] sync_status
    #   Indicates whether this object is in sync with the version indicated
    #   in the update token.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   The current version of the object that is either in sync or pending
    #   synchronization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PerObjectStatus AWS API Documentation
    #
    class PerObjectStatus < Struct.new(
      :sync_status,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains variables that you can use to override default Suricata
    # settings in your firewall policy.
    #
    # @!attribute [rw] rule_variables
    #   The IPv4 or IPv6 addresses in CIDR notation to use for the Suricata
    #   `HOME_NET` variable. If your firewall uses an inspection VPC, you
    #   might want to override the `HOME_NET` variable with the CIDRs of
    #   your home networks. If you don't override `HOME_NET` with your own
    #   CIDRs, Network Firewall by default uses the CIDR of your inspection
    #   VPC.
    #   @return [Hash<String,Types::IPSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PolicyVariables AWS API Documentation
    #
    class PolicyVariables < Struct.new(
      :rule_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single port range specification. This is used for source and
    # destination port ranges in the stateless rule MatchAttributes,
    # `SourcePorts`, and `DestinationPorts` settings.
    #
    # @!attribute [rw] from_port
    #   The lower limit of the port range. This must be less than or equal
    #   to the `ToPort` specification.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The upper limit of the port range. This must be greater than or
    #   equal to the `FromPort` specification.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :from_port,
      :to_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of port ranges for use in the rules in a rule group.
    #
    # @!attribute [rw] definition
    #   The set of port ranges.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PortSet AWS API Documentation
    #
    class PortSet < Struct.new(
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stateless inspection criteria that publishes the specified metrics to
    # Amazon CloudWatch for the matching packet. This setting defines a
    # CloudWatch dimension value to be published.
    #
    # @!attribute [rw] dimensions
    #   @return [Array<Types::Dimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PublishMetricAction AWS API Documentation
    #
    class PublishMetricAction < Struct.new(
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rule groups and firewall policies with.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The IAM policy statement that lists the accounts that you want to
    #   share your rule group or firewall policy with and the operations
    #   that you want the accounts to be able to perform.
    #
    #   For a rule group resource, you can specify the following operations
    #   in the Actions section of the statement:
    #
    #   * network-firewall:CreateFirewallPolicy
    #
    #   * network-firewall:UpdateFirewallPolicy
    #
    #   * network-firewall:ListRuleGroups
    #
    #   For a firewall policy resource, you can specify the following
    #   operations in the Actions section of the statement:
    #
    #   * network-firewall:AssociateFirewallPolicy
    #
    #   * network-firewall:ListFirewallPolicies
    #
    #   In the Resource section of the statement, you specify the ARNs for
    #   the rule groups and firewall policies that you want to share with
    #   the account that you specified in `Arn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Aws::EmptyStructure; end

    # Contains a set of IP set references.
    #
    # @!attribute [rw] ip_set_references
    #   The list of IP set references.
    #   @return [Hash<String,Types::IPSetReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ReferenceSets AWS API Documentation
    #
    class ReferenceSets < Struct.new(
      :ip_set_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to locate a resource using the parameters that you provided.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to change the resource because your account doesn't own it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ResourceOwnerCheckException AWS API Documentation
    #
    class ResourceOwnerCheckException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inspection criteria and action for a single stateless rule.
    # Network Firewall inspects each packet for the specified matching
    # criteria. When a packet matches the criteria, Network Firewall
    # performs the rule's actions on the packet.
    #
    # @!attribute [rw] match_attributes
    #   Criteria for Network Firewall to use to inspect an individual packet
    #   in stateless rule inspection. Each match attributes set can include
    #   one or more items such as IP address, CIDR range, port number,
    #   protocol, and TCP flags.
    #   @return [Types::MatchAttributes]
    #
    # @!attribute [rw] actions
    #   The actions to take on a packet that matches one of the stateless
    #   rule definition's match attributes. You must specify a standard
    #   action and you can add custom actions.
    #
    #   <note markdown="1"> Network Firewall only forwards a packet for stateful rule inspection
    #   if you specify `aws:forward_to_sfe` for a rule that the packet
    #   matches, or if the packet doesn't match any stateless rule and you
    #   specify `aws:forward_to_sfe` for the `StatelessDefaultActions`
    #   setting for the FirewallPolicy.
    #
    #    </note>
    #
    #   For every rule, you must specify exactly one of the following
    #   standard actions.
    #
    #   * **aws:pass** - Discontinues all inspection of the packet and
    #     permits it to go to its intended destination.
    #
    #   * **aws:drop** - Discontinues all inspection of the packet and
    #     blocks it from going to its intended destination.
    #
    #   * **aws:forward\_to\_sfe** - Discontinues stateless inspection of
    #     the packet and forwards it to the stateful rule engine for
    #     inspection.
    #
    #   Additionally, you can specify a custom action. To do this, you
    #   define a custom action by name and type, then provide the name
    #   you've assigned to the action in this `Actions` setting. For
    #   information about the options, see CustomAction.
    #
    #   To provide more than one action in this setting, separate the
    #   settings with a comma. For example, if you have a custom
    #   `PublishMetrics` action that you've named `MyMetricsAction`, then
    #   you could specify the standard action `aws:pass` and the custom
    #   action with `[“aws:pass”, “MyMetricsAction”]`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleDefinition AWS API Documentation
    #
    class RuleDefinition < Struct.new(
      :match_attributes,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that defines the rules in a rule group. This, along with
    # RuleGroupResponse, define the rule group. You can retrieve all objects
    # for a rule group by calling DescribeRuleGroup.
    #
    # Network Firewall uses a rule group to inspect and control network
    # traffic. You define stateless rule groups to inspect individual
    # packets and you define stateful rule groups to inspect packets in the
    # context of their traffic flow.
    #
    # To use a rule group, you include it by reference in an Network
    # Firewall firewall policy, then you use the policy in a firewall. You
    # can reference a rule group from more than one firewall policy, and you
    # can use a firewall policy in more than one firewall.
    #
    # @!attribute [rw] rule_variables
    #   Settings that are available for use in the rules in the rule group.
    #   You can only use these for stateful rule groups.
    #   @return [Types::RuleVariables]
    #
    # @!attribute [rw] reference_sets
    #   The list of a rule group's reference sets.
    #   @return [Types::ReferenceSets]
    #
    # @!attribute [rw] rules_source
    #   The stateful rules or stateless rules for the rule group.
    #   @return [Types::RulesSource]
    #
    # @!attribute [rw] stateful_rule_options
    #   Additional options governing how Network Firewall handles stateful
    #   rules. The policies where you use your stateful rule group must have
    #   stateful rule options settings that are compatible with these
    #   settings.
    #   @return [Types::StatefulRuleOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleGroup AWS API Documentation
    #
    class RuleGroup < Struct.new(
      :rule_variables,
      :reference_sets,
      :rules_source,
      :stateful_rule_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a rule group, returned by ListRuleGroups.
    # You can use the information provided in the metadata to retrieve and
    # manage a rule group.
    #
    # @!attribute [rw] name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleGroupMetadata AWS API Documentation
    #
    class RuleGroupMetadata < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The high-level properties of a rule group. This, along with the
    # RuleGroup, define the rule group. You can retrieve all objects for a
    # rule group by calling DescribeRuleGroup.
    #
    # @!attribute [rw] rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   <note markdown="1"> If this response is for a create request that had `DryRun` set to
    #   `TRUE`, then this ARN is a placeholder that isn't attached to a
    #   valid resource.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_id
    #   The unique identifier for the rule group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #   @return [String]
    #
    # @!attribute [rw] capacity
    #   The maximum operating resources that this rule group can use. Rule
    #   group capacity is fixed at creation. When you update a rule group,
    #   you are limited to this capacity. When you reference a rule group
    #   from a firewall policy, Network Firewall reserves this capacity for
    #   the rule group.
    #
    #   You can retrieve the capacity that would be required for a rule
    #   group before you create the rule group by calling CreateRuleGroup
    #   with `DryRun` set to `TRUE`.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_group_status
    #   Detailed information about the current status of a rule group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] consumed_capacity
    #   The number of capacity units currently consumed by the rule group
    #   rules.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_associations
    #   The number of firewall policies that use this rule group.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your rule group.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] source_metadata
    #   A complex type that contains metadata about the rule group that your
    #   own rule group is copied from. You can use the metadata to track the
    #   version updates made to the originating rule group.
    #   @return [Types::SourceMetadata]
    #
    # @!attribute [rw] sns_topic
    #   The Amazon resource name (ARN) of the Amazon Simple Notification
    #   Service SNS topic that's used to record changes to the managed rule
    #   group. You can subscribe to the SNS topic to receive notifications
    #   when the managed rule group is modified, such as for new versions
    #   and for version expiration. For more information, see the [Amazon
    #   Simple Notification Service Developer Guide.][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sns/latest/dg/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the rule group was changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleGroupResponse AWS API Documentation
    #
    class RuleGroupResponse < Struct.new(
      :rule_group_arn,
      :rule_group_name,
      :rule_group_id,
      :description,
      :type,
      :capacity,
      :rule_group_status,
      :tags,
      :consumed_capacity,
      :number_of_associations,
      :encryption_configuration,
      :source_metadata,
      :sns_topic,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional settings for a stateful rule. This is part of the
    # StatefulRule configuration.
    #
    # @!attribute [rw] keyword
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleOption AWS API Documentation
    #
    class RuleOption < Struct.new(
      :keyword,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that are available for use in the rules in the RuleGroup
    # where this is defined.
    #
    # @!attribute [rw] ip_sets
    #   A list of IP addresses and address ranges, in CIDR notation.
    #   @return [Hash<String,Types::IPSet>]
    #
    # @!attribute [rw] port_sets
    #   A list of port ranges.
    #   @return [Hash<String,Types::PortSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleVariables AWS API Documentation
    #
    class RuleVariables < Struct.new(
      :ip_sets,
      :port_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The stateless or stateful rules definitions for use in a single rule
    # group. Each rule group requires a single `RulesSource`. You can use an
    # instance of this for either stateless rules or stateful rules.
    #
    # @!attribute [rw] rules_string
    #   Stateful inspection criteria, provided in Suricata compatible
    #   intrusion prevention system (IPS) rules. Suricata is an open-source
    #   network IPS that includes a standard rule-based language for network
    #   traffic inspection.
    #
    #   These rules contain the inspection criteria and the action to take
    #   for traffic that matches the criteria, so this type of rule group
    #   doesn't have a separate action setting.
    #   @return [String]
    #
    # @!attribute [rw] rules_source_list
    #   Stateful inspection criteria for a domain list rule group.
    #   @return [Types::RulesSourceList]
    #
    # @!attribute [rw] stateful_rules
    #   An array of individual stateful rules inspection criteria to be used
    #   together in a stateful rule group. Use this option to specify simple
    #   Suricata rules with protocol, source and destination, ports,
    #   direction, and rule options. For information about the Suricata
    #   `Rules` format, see [Rules Format][1].
    #
    #
    #
    #   [1]: https://suricata.readthedocs.iorules/intro.html#
    #   @return [Array<Types::StatefulRule>]
    #
    # @!attribute [rw] stateless_rules_and_custom_actions
    #   Stateless inspection criteria to be used in a stateless rule group.
    #   @return [Types::StatelessRulesAndCustomActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RulesSource AWS API Documentation
    #
    class RulesSource < Struct.new(
      :rules_string,
      :rules_source_list,
      :stateful_rules,
      :stateless_rules_and_custom_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stateful inspection criteria for a domain list rule group.
    #
    # For HTTPS traffic, domain filtering is SNI-based. It uses the server
    # name indicator extension of the TLS handshake.
    #
    # By default, Network Firewall domain list inspection only includes
    # traffic coming from the VPC where you deploy the firewall. To inspect
    # traffic from IP addresses outside of the deployment VPC, you set the
    # `HOME_NET` rule variable to include the CIDR range of the deployment
    # VPC plus the other CIDR ranges. For more information, see
    # RuleVariables in this guide and [Stateful domain list rule groups in
    # Network Firewall][1] in the *Network Firewall Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/stateful-rule-groups-domain-names.html
    #
    # @!attribute [rw] targets
    #   The domains that you want to inspect for in your traffic flows.
    #   Valid domain specifications are the following:
    #
    #   * Explicit names. For example, `abc.example.com` matches only the
    #     domain `abc.example.com`.
    #
    #   * Names that use a domain wildcard, which you indicate with an
    #     initial '`.`'. For example,`.example.com` matches `example.com`
    #     and matches all subdomains of `example.com`, such as
    #     `abc.example.com` and `www.example.com`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_types
    #   The protocols you want to inspect. Specify `TLS_SNI` for `HTTPS`.
    #   Specify `HTTP_HOST` for `HTTP`. You can specify either or both.
    #   @return [Array<String>]
    #
    # @!attribute [rw] generated_rules_type
    #   Whether you want to allow or deny access to the domains in your
    #   target list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RulesSourceList AWS API Documentation
    #
    class RulesSourceList < Struct.new(
      :targets,
      :target_types,
      :generated_rules_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Any Certificate Manager Secure Sockets Layer/Transport Layer Security
    # (SSL/TLS) server certificate that's associated with a
    # ServerCertificateConfiguration used in a TLSInspectionConfiguration.
    # You must request or import a SSL/TLS certificate into ACM for each
    # domain Network Firewall needs to decrypt and inspect. Network Firewall
    # uses the SSL/TLS certificates to decrypt specified inbound SSL/TLS
    # traffic going to your firewall. For information about working with
    # certificates in Certificate Manager, see [Request a public certificate
    # ][1] or [Importing certificates][2] in the *Certificate Manager User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html
    # [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Certificate Manager SSL/TLS
    #   server certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ServerCertificate AWS API Documentation
    #
    class ServerCertificate < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the associated Certificate Manager Secure Sockets
    # Layer/Transport Layer Security (SSL/TLS) server certificates and scope
    # settings Network Firewall uses to decrypt traffic in a
    # TLSInspectionConfiguration. For information about working with SSL/TLS
    # certificates for TLS inspection, see [ Requirements for using SSL/TLS
    # server certficiates with TLS inspection configurations][1] in the
    # *Network Firewall Developer Guide*.
    #
    # <note markdown="1"> If a server certificate that's associated with your
    # TLSInspectionConfiguration is revoked, deleted, or expired it can
    # result in client-side TLS errors.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html
    #
    # @!attribute [rw] server_certificates
    #   The list of a server certificate configuration's Certificate
    #   Manager SSL/TLS certificates.
    #   @return [Array<Types::ServerCertificate>]
    #
    # @!attribute [rw] scopes
    #   A list of a server certificate configuration's scopes.
    #   @return [Array<Types::ServerCertificateScope>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ServerCertificateConfiguration AWS API Documentation
    #
    class ServerCertificateConfiguration < Struct.new(
      :server_certificates,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that define the Secure Sockets Layer/Transport Layer Security
    # (SSL/TLS) traffic that Network Firewall should decrypt for inspection
    # by the stateful rule engine.
    #
    # @!attribute [rw] sources
    #   The source IP addresses and address ranges to decrypt for
    #   inspection, in CIDR notation. If not specified, this matches with
    #   any source address.
    #   @return [Array<Types::Address>]
    #
    # @!attribute [rw] destinations
    #   The destination IP addresses and address ranges to decrypt for
    #   inspection, in CIDR notation. If not specified, this matches with
    #   any destination address.
    #   @return [Array<Types::Address>]
    #
    # @!attribute [rw] source_ports
    #   The source ports to decrypt for inspection, in Transmission Control
    #   Protocol (TCP) format. If not specified, this matches with any
    #   source port.
    #
    #   You can specify individual ports, for example `1994`, and you can
    #   specify port ranges, such as `1990:1994`.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] destination_ports
    #   The destination ports to decrypt for inspection, in Transmission
    #   Control Protocol (TCP) format. If not specified, this matches with
    #   any destination port.
    #
    #   You can specify individual ports, for example `1994`, and you can
    #   specify port ranges, such as `1990:1994`.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocols
    #   The protocols to decrypt for inspection, specified using each
    #   protocol's assigned internet protocol number (IANA). Network
    #   Firewall currently supports only TCP.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ServerCertificateScope AWS API Documentation
    #
    class ServerCertificateScope < Struct.new(
      :sources,
      :destinations,
      :source_ports,
      :destination_ports,
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about the managed rule group that your own rule
    # group is copied from. You can use the the metadata to track version
    # updates made to the originating rule group. You can retrieve all
    # objects for a rule group by calling [DescribeRuleGroup][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) of the rule group that your own rule
    #   group is copied from.
    #   @return [String]
    #
    # @!attribute [rw] source_update_token
    #   The update token of the Amazon Web Services managed rule group that
    #   your own rule group is copied from. To determine the update token
    #   for the managed rule group, call [DescribeRuleGroup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html#networkfirewall-DescribeRuleGroup-response-UpdateToken
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/SourceMetadata AWS API Documentation
    #
    class SourceMetadata < Struct.new(
      :source_arn,
      :source_update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for the handling of the stateful rule groups in
    # a firewall policy.
    #
    # @!attribute [rw] rule_order
    #   Indicates how to manage the order of stateful rule evaluation for
    #   the policy. `DEFAULT_ACTION_ORDER` is the default behavior. Stateful
    #   rules are provided to the rule engine as Suricata compatible
    #   strings, and Suricata evaluates them based on certain settings. For
    #   more information, see [Evaluation order for stateful rules][1] in
    #   the *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html
    #   @return [String]
    #
    # @!attribute [rw] stream_exception_policy
    #   Configures how Network Firewall processes traffic when a network
    #   connection breaks midstream. Network connections can break due to
    #   disruptions in external networks or within the firewall itself.
    #
    #   * `DROP` - Network Firewall fails closed and drops all subsequent
    #     traffic going to the firewall. This is the default behavior.
    #
    #   * `CONTINUE` - Network Firewall continues to apply rules to the
    #     subsequent traffic without context from traffic before the break.
    #     This impacts the behavior of rules that depend on this context.
    #     For example, if you have a stateful rule to `drop http` traffic,
    #     Network Firewall won't match the traffic for this rule because
    #     the service won't have the context from session initialization
    #     defining the application layer protocol as HTTP. However, this
    #     behavior is rule dependent—a TCP-layer rule using a
    #     `flow:stateless` rule would still match, as would the
    #     `aws:drop_strict` default action.
    #
    #   * `REJECT` - Network Firewall fails closed and drops all subsequent
    #     traffic going to the firewall. Network Firewall also sends a TCP
    #     reject packet back to your client so that the client can
    #     immediately establish a new session. Network Firewall will have
    #     context about the new session and will apply rules to the
    #     subsequent traffic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulEngineOptions AWS API Documentation
    #
    class StatefulEngineOptions < Struct.new(
      :rule_order,
      :stream_exception_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single Suricata rules specification, for use in a stateful rule
    # group. Use this option to specify a simple Suricata rule with
    # protocol, source and destination, ports, direction, and rule options.
    # For information about the Suricata `Rules` format, see [Rules
    # Format][1].
    #
    #
    #
    # [1]: https://suricata.readthedocs.iorules/intro.html#
    #
    # @!attribute [rw] action
    #   Defines what Network Firewall should do with the packets in a
    #   traffic flow when the flow matches the stateful rule criteria. For
    #   all actions, Network Firewall performs the specified action and
    #   discontinues stateful inspection of the traffic flow.
    #
    #   The actions for a stateful rule are defined as follows:
    #
    #   * **PASS** - Permits the packets to go to the intended destination.
    #
    #   * **DROP** - Blocks the packets from going to the intended
    #     destination and sends an alert log message, if alert logging is
    #     configured in the Firewall LoggingConfiguration.
    #
    #   * **ALERT** - Permits the packets to go to the intended destination
    #     and sends an alert log message, if alert logging is configured in
    #     the Firewall LoggingConfiguration.
    #
    #     You can use this action to test a rule that you intend to use to
    #     drop traffic. You can enable the rule with `ALERT` action, verify
    #     in the logs that the rule is filtering as you want, then change
    #     the action to `DROP`.
    #
    #   * **REJECT** - Drops TCP traffic that matches the conditions of the
    #     stateful rule, and sends a TCP reset packet back to sender of the
    #     packet. A TCP reset packet is a packet with no payload and a `RST`
    #     bit contained in the TCP header flags. Also sends an alert log
    #     mesage if alert logging is configured in the Firewall
    #     LoggingConfiguration.
    #
    #     `REJECT` isn't currently available for use with IMAP and FTP
    #     protocols.
    #   @return [String]
    #
    # @!attribute [rw] header
    #   The stateful inspection criteria for this rule, used to inspect
    #   traffic flows.
    #   @return [Types::Header]
    #
    # @!attribute [rw] rule_options
    #   Additional options for the rule. These are the Suricata
    #   `RuleOptions` settings.
    #   @return [Array<Types::RuleOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulRule AWS API Documentation
    #
    class StatefulRule < Struct.new(
      :action,
      :header,
      :rule_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The setting that allows the policy owner to change the behavior of the
    # rule group within a policy.
    #
    # @!attribute [rw] action
    #   The action that changes the rule group from `DROP` to `ALERT`. This
    #   only applies to managed rule groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulRuleGroupOverride AWS API Documentation
    #
    class StatefulRuleGroupOverride < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier for a single stateful rule group, used in a firewall policy
    # to refer to a rule group.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the stateful rule group.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   An integer setting that indicates the order in which to run the
    #   stateful rule groups in a single FirewallPolicy. This setting only
    #   applies to firewall policies that specify the `STRICT_ORDER` rule
    #   order in the stateful engine options settings.
    #
    #   Network Firewall evalutes each stateful rule group against a packet
    #   starting with the group that has the lowest priority setting. You
    #   must ensure that the priority settings are unique within each
    #   policy.
    #
    #   You can change the priority settings of your rule groups at any
    #   time. To make it easier to insert rule groups later, number them so
    #   there's a wide range in between, for example use 100, 200, and so
    #   on.
    #   @return [Integer]
    #
    # @!attribute [rw] override
    #   The action that allows the policy owner to override the behavior of
    #   the rule group within a policy.
    #   @return [Types::StatefulRuleGroupOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulRuleGroupReference AWS API Documentation
    #
    class StatefulRuleGroupReference < Struct.new(
      :resource_arn,
      :priority,
      :override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options governing how Network Firewall handles the rule
    # group. You can only use these for stateful rule groups.
    #
    # @!attribute [rw] rule_order
    #   Indicates how to manage the order of the rule evaluation for the
    #   rule group. `DEFAULT_ACTION_ORDER` is the default behavior. Stateful
    #   rules are provided to the rule engine as Suricata compatible
    #   strings, and Suricata evaluates them based on certain settings. For
    #   more information, see [Evaluation order for stateful rules][1] in
    #   the *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulRuleOptions AWS API Documentation
    #
    class StatefulRuleOptions < Struct.new(
      :rule_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single stateless rule. This is used in
    # StatelessRulesAndCustomActions.
    #
    # @!attribute [rw] rule_definition
    #   Defines the stateless 5-tuple packet inspection criteria and the
    #   action to take on a packet that matches the criteria.
    #   @return [Types::RuleDefinition]
    #
    # @!attribute [rw] priority
    #   Indicates the order in which to run this rule relative to all of the
    #   rules that are defined for a stateless rule group. Network Firewall
    #   evaluates the rules in a rule group starting with the lowest
    #   priority setting. You must ensure that the priority settings are
    #   unique for the rule group.
    #
    #   Each stateless rule group uses exactly one
    #   `StatelessRulesAndCustomActions` object, and each
    #   `StatelessRulesAndCustomActions` contains exactly one
    #   `StatelessRules` object. To ensure unique priority settings for your
    #   rule groups, set unique priorities for the stateless rules that you
    #   define inside any single `StatelessRules` object.
    #
    #   You can change the priority settings of your rules at any time. To
    #   make it easier to insert rules later, number them so there's a wide
    #   range in between, for example use 100, 200, and so on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatelessRule AWS API Documentation
    #
    class StatelessRule < Struct.new(
      :rule_definition,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifier for a single stateless rule group, used in a firewall
    # policy to refer to the rule group.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the stateless rule group.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   An integer setting that indicates the order in which to run the
    #   stateless rule groups in a single FirewallPolicy. Network Firewall
    #   applies each stateless rule group to a packet starting with the
    #   group that has the lowest priority setting. You must ensure that the
    #   priority settings are unique within each policy.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatelessRuleGroupReference AWS API Documentation
    #
    class StatelessRuleGroupReference < Struct.new(
      :resource_arn,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stateless inspection criteria. Each stateless rule group uses exactly
    # one of these data types to define its stateless rules.
    #
    # @!attribute [rw] stateless_rules
    #   Defines the set of stateless rules for use in a stateless rule
    #   group.
    #   @return [Array<Types::StatelessRule>]
    #
    # @!attribute [rw] custom_actions
    #   Defines an array of individual custom action definitions that are
    #   available for use by the stateless rules in this
    #   `StatelessRulesAndCustomActions` specification. You name each custom
    #   action that you define, and then you can use it by name in your
    #   StatelessRule RuleDefinition `Actions` specification.
    #   @return [Array<Types::CustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatelessRulesAndCustomActions AWS API Documentation
    #
    class StatelessRulesAndCustomActions < Struct.new(
      :stateless_rules,
      :custom_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ID for a subnet that you want to associate with the firewall. This
    # is used with CreateFirewall and AssociateSubnets. Network Firewall
    # creates an instance of the associated firewall in each subnet that you
    # specify, to filter traffic in the subnet's Availability Zone.
    #
    # @!attribute [rw] subnet_id
    #   The unique identifier for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The subnet's IP address type. You can't change the IP address type
    #   after you create the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/SubnetMapping AWS API Documentation
    #
    class SubnetMapping < Struct.new(
      :subnet_id,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the firewall endpoint and firewall policy configuration
    # for a single VPC subnet.
    #
    # For each VPC subnet that you associate with a firewall, Network
    # Firewall does the following:
    #
    # * Instantiates a firewall endpoint in the subnet, ready to take
    #   traffic.
    #
    # * Configures the endpoint with the current firewall policy settings,
    #   to provide the filtering behavior for the endpoint.
    #
    # When you update a firewall, for example to add a subnet association or
    # change a rule group in the firewall policy, the affected sync states
    # reflect out-of-sync or not ready status until the changes are
    # complete.
    #
    # @!attribute [rw] attachment
    #   The attachment status of the firewall's association with a single
    #   VPC subnet. For each configured subnet, Network Firewall creates the
    #   attachment by instantiating the firewall endpoint in the subnet so
    #   that it's ready to take traffic. This is part of the
    #   FirewallStatus.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] config
    #   The configuration status of the firewall endpoint in a single VPC
    #   subnet. Network Firewall provides each endpoint with the rules that
    #   are configured in the firewall policy. Each time you add a subnet or
    #   modify the associated firewall policy, Network Firewall synchronizes
    #   the rules in the endpoint, so it can properly filter network
    #   traffic. This is part of the FirewallStatus.
    #   @return [Hash<String,Types::PerObjectStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/SyncState AWS API Documentation
    #
    class SyncState < Struct.new(
      :attachment,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # TCP flags and masks to inspect packets for, used in stateless rules
    # MatchAttributes settings.
    #
    # @!attribute [rw] flags
    #   Used in conjunction with the `Masks` setting to define the flags
    #   that must be set and flags that must not be set in order for the
    #   packet to match. This setting can only specify values that are also
    #   specified in the `Masks` setting.
    #
    #   For the flags that are specified in the masks setting, the following
    #   must be true for the packet to match:
    #
    #   * The ones that are set in this flags setting must be set in the
    #     packet.
    #
    #   * The ones that are not set in this flags setting must also not be
    #     set in the packet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] masks
    #   The set of flags to consider in the inspection. To inspect all flags
    #   in the valid values list, leave this with no setting.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TCPFlagField AWS API Documentation
    #
    class TCPFlagField < Struct.new(
      :flags,
      :masks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that defines a TLS inspection configuration. This, along
    # with TLSInspectionConfigurationResponse, define the TLS inspection
    # configuration. You can retrieve all objects for a TLS inspection
    # configuration by calling DescribeTLSInspectionConfiguration.
    #
    # Network Firewall uses a TLS inspection configuration to decrypt
    # traffic. Network Firewall re-encrypts the traffic before sending it to
    # its destination.
    #
    # To use a TLS inspection configuration, you add it to a Network
    # Firewall firewall policy, then you apply the firewall policy to a
    # firewall. Network Firewall acts as a proxy service to decrypt and
    # inspect inbound traffic. You can reference a TLS inspection
    # configuration from more than one firewall policy, and you can use a
    # firewall policy in more than one firewall. For more information about
    # using TLS inspection configurations, see [Decrypting SSL/TLS traffic
    # with TLS inspection configurations][1] in the *Network Firewall
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #
    # @!attribute [rw] server_certificate_configurations
    #   Lists the server certificate configurations that are associated with
    #   the TLS configuration.
    #   @return [Array<Types::ServerCertificateConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TLSInspectionConfiguration AWS API Documentation
    #
    class TLSInspectionConfiguration < Struct.new(
      :server_certificate_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a TLS inspection configuration, returned
    # by `ListTLSInspectionConfigurations`. You can use the information
    # provided in the metadata to retrieve and manage a TLS configuration.
    #
    # @!attribute [rw] name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TLSInspectionConfigurationMetadata AWS API Documentation
    #
    class TLSInspectionConfigurationMetadata < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The high-level properties of a TLS inspection configuration. This,
    # along with the `TLSInspectionConfiguration`, define the TLS inspection
    # configuration. You can retrieve all objects for a TLS inspection
    # configuration by calling `DescribeTLSInspectionConfiguration`.
    #
    # @!attribute [rw] tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_id
    #   A unique identifier for the TLS inspection configuration. This ID is
    #   returned in the responses to create and list commands. You provide
    #   it to operations such as update and delete.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_status
    #   Detailed information about the current status of a
    #   TLSInspectionConfiguration. You can retrieve this for a TLS
    #   inspection configuration by calling
    #   DescribeTLSInspectionConfiguration and providing the TLS inspection
    #   configuration name and ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the TLS inspection configuration was changed.
    #   @return [Time]
    #
    # @!attribute [rw] number_of_associations
    #   The number of firewall policies that use this TLS inspection
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your TLS inspection configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] certificates
    #   A list of the certificates associated with the TLS inspection
    #   configuration.
    #   @return [Array<Types::TlsCertificateData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TLSInspectionConfigurationResponse AWS API Documentation
    #
    class TLSInspectionConfigurationResponse < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name,
      :tls_inspection_configuration_id,
      :tls_inspection_configuration_status,
      :description,
      :tags,
      :last_modified_time,
      :number_of_associations,
      :encryption_configuration,
      :certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key:value pair associated with an Amazon Web Services resource. The
    # key:value pair can be anything you define. Typically, the tag key
    # represents a category (such as "environment") and the tag value
    # represents a specific value within that category (such as "test,"
    # "development," or "production"). You can add up to 50 tags to each
    # Amazon Web Services resource.
    #
    # @!attribute [rw] key
    #   The part of the key:value pair that defines a tag. You can use a tag
    #   key to describe a category of information, such as "customer." Tag
    #   keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The part of the key:value pair that defines a tag. You can use a tag
    #   value to describe a specific value within a category, such as
    #   "companyA" or "companyB." Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Unable to process the request due to throttling limitations.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about an Certificate Manager certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Contains details about the certificate status, including information
    #   about certificate errors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TlsCertificateData AWS API Documentation
    #
    class TlsCertificateData < Struct.new(
      :certificate_arn,
      :certificate_serial,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation you requested isn't supported by Network Firewall.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UnsupportedOperationException AWS API Documentation
    #
    class UnsupportedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting
    #   a firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDeleteProtectionRequest AWS API Documentation
    #
    class UpdateFirewallDeleteProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :delete_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] delete_protection
    #   A flag indicating whether it is possible to delete the firewall. A
    #   setting of `TRUE` indicates that the firewall is protected against
    #   deletion. Use this setting to protect against accidentally deleting
    #   a firewall that is in use. When you create a firewall, the operation
    #   initializes this flag to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDeleteProtectionResponse AWS API Documentation
    #
    class UpdateFirewallDeleteProtectionResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :delete_protection,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the firewall. If you omit this setting,
    #   Network Firewall removes the description for the firewall.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDescriptionRequest AWS API Documentation
    #
    class UpdateFirewallDescriptionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallDescriptionResponse AWS API Documentation
    #
    class UpdateFirewallDescriptionResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :description,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains optional Amazon Web Services Key
    #   Management Service (KMS) encryption settings for your Network
    #   Firewall resources. Your data is encrypted by default with an Amazon
    #   Web Services owned key that Amazon Web Services owns and manages for
    #   you. You can use either the Amazon Web Services owned key, or
    #   provide your own customer managed key. To learn more about KMS
    #   encryption of your Network Firewall resources, see [Encryption at
    #   rest with Amazon Web Services Key Managment Service][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallEncryptionConfigurationRequest AWS API Documentation
    #
    class UpdateFirewallEncryptionConfigurationRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains optional Amazon Web Services Key
    #   Management Service (KMS) encryption settings for your Network
    #   Firewall resources. Your data is encrypted by default with an Amazon
    #   Web Services owned key that Amazon Web Services owns and manages for
    #   you. You can use either the Amazon Web Services owned key, or
    #   provide your own customer managed key. To learn more about KMS
    #   encryption of your Network Firewall resources, see [Encryption at
    #   rest with Amazon Web Services Key Managment Service][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallEncryptionConfigurationResponse AWS API Documentation
    #
    class UpdateFirewallEncryptionConfigurationResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :update_token,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to
    #   protect against accidentally modifying the firewall policy for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicyChangeProtectionRequest AWS API Documentation
    #
    class UpdateFirewallPolicyChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_change_protection
    #   A setting indicating whether the firewall is protected against a
    #   change to the firewall policy association. Use this setting to
    #   protect against accidentally modifying the firewall policy for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicyChangeProtectionResponse AWS API Documentation
    #
    class UpdateFirewallPolicyChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the firewall policy. The token
    #   marks the state of the policy resource at the time of the request.
    #
    #   To make changes to the policy, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the policy
    #   hasn't changed since you last retrieved it. If it has changed, the
    #   operation fails with an `InvalidTokenException`. If this happens,
    #   retrieve the firewall policy again to get a current copy of it with
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_name
    #   The descriptive name of the firewall policy. You can't change the
    #   name of a firewall policy after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy
    #   The updated firewall policy to use for the firewall.
    #   @return [Types::FirewallPolicy]
    #
    # @!attribute [rw] description
    #   A description of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Indicates whether you want Network Firewall to just check the
    #   validity of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can
    #   run successfully, but doesn't actually make the requested changes.
    #   The call returns the value that the request would return if you ran
    #   it with dry run set to `FALSE`, but doesn't make additions or
    #   changes to your resources. This option allows you to make sure that
    #   you have the required permissions to run the request and that your
    #   request parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains settings for encryption of your
    #   firewall policy resources.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicyRequest AWS API Documentation
    #
    class UpdateFirewallPolicyRequest < Struct.new(
      :update_token,
      :firewall_policy_arn,
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :dry_run,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the firewall policy. The token
    #   marks the state of the policy resource at the time of the request.
    #
    #   To make changes to the policy, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the policy
    #   hasn't changed since you last retrieved it. If it has changed, the
    #   operation fails with an `InvalidTokenException`. If this happens,
    #   retrieve the firewall policy again to get a current copy of it with
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_response
    #   The high-level properties of a firewall policy. This, along with the
    #   FirewallPolicy, define the policy. You can retrieve all objects for
    #   a firewall policy by calling DescribeFirewallPolicy.
    #   @return [Types::FirewallPolicyResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallPolicyResponse AWS API Documentation
    #
    class UpdateFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Defines how Network Firewall performs logging for a firewall. If you
    #   omit this setting, Network Firewall disables logging for the
    #   firewall.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateLoggingConfigurationRequest < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Defines how Network Firewall performs logging for a Firewall.
    #   @return [Types::LoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the rule group. The token marks
    #   the state of the rule group resource at the time of the request.
    #
    #   To make changes to the rule group, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the rule
    #   group hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the rule group again to get a current copy of
    #   it with a current token. Reapply your changes as needed, then try
    #   the operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_arn
    #   The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group
    #   An object that defines the rule group rules.
    #
    #   <note markdown="1"> You must provide either this rule group setting or a `Rules`
    #   setting, but not both.
    #
    #    </note>
    #   @return [Types::RuleGroup]
    #
    # @!attribute [rw] rules
    #   A string containing stateful rule group rules specifications in
    #   Suricata flat format, with one rule per line. Use this to import
    #   your existing Suricata compatible rule groups.
    #
    #   <note markdown="1"> You must provide either this rules setting or a populated
    #   `RuleGroup` setting, but not both.
    #
    #    </note>
    #
    #   You can provide your rule group specification in Suricata flat
    #   format through this setting when you create or update your rule
    #   group. The call response returns a RuleGroup object that Network
    #   Firewall has populated from your string.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the rule group is stateless or stateful. If the
    #   rule group is stateless, it contains stateless rules. If it is
    #   stateful, it contains stateful rules.
    #
    #   <note markdown="1"> This setting is required for requests that do not include the
    #   `RuleGroupARN`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Indicates whether you want Network Firewall to just check the
    #   validity of the request, rather than run the request.
    #
    #   If set to `TRUE`, Network Firewall checks whether the request can
    #   run successfully, but doesn't actually make the requested changes.
    #   The call returns the value that the request would return if you ran
    #   it with dry run set to `FALSE`, but doesn't make additions or
    #   changes to your resources. This option allows you to make sure that
    #   you have the required permissions to run the request and that your
    #   request parameters are valid.
    #
    #   If set to `FALSE`, Network Firewall makes the requested changes to
    #   your resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains settings for encryption of your rule
    #   group resources.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] source_metadata
    #   A complex type that contains metadata about the rule group that your
    #   own rule group is copied from. You can use the metadata to keep
    #   track of updates made to the originating rule group.
    #   @return [Types::SourceMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateRuleGroupRequest AWS API Documentation
    #
    class UpdateRuleGroupRequest < Struct.new(
      :update_token,
      :rule_group_arn,
      :rule_group_name,
      :rule_group,
      :rules,
      :type,
      :description,
      :dry_run,
      :encryption_configuration,
      :source_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the rule group. The token marks
    #   the state of the rule group resource at the time of the request.
    #
    #   To make changes to the rule group, you provide the token in your
    #   request. Network Firewall uses the token to ensure that the rule
    #   group hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the rule group again to get a current copy of
    #   it with a current token. Reapply your changes as needed, then try
    #   the operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_response
    #   The high-level properties of a rule group. This, along with the
    #   RuleGroup, define the rule group. You can retrieve all objects for a
    #   rule group by calling DescribeRuleGroup.
    #   @return [Types::RuleGroupResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateRuleGroupResponse AWS API Documentation
    #
    class UpdateRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] subnet_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateSubnetChangeProtectionRequest AWS API Documentation
    #
    class UpdateSubnetChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   An optional token that you can use for optimistic locking. Network
    #   Firewall returns a token to your requests that access the firewall.
    #   The token marks the state of the firewall resource at the time of
    #   the request.
    #
    #   To make an unconditional change to the firewall, omit the token in
    #   your update request. Without the token, Network Firewall performs
    #   your updates regardless of whether the firewall has changed since
    #   you last retrieved it.
    #
    #   To make a conditional change to the firewall, provide the token in
    #   your update request. Network Firewall uses the token to ensure that
    #   the firewall hasn't changed since you last retrieved it. If it has
    #   changed, the operation fails with an `InvalidTokenException`. If
    #   this happens, retrieve the firewall again to get a current copy of
    #   it with a new token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_name
    #   The descriptive name of the firewall. You can't change the name of
    #   a firewall after you create it.
    #   @return [String]
    #
    # @!attribute [rw] subnet_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateSubnetChangeProtectionResponse AWS API Documentation
    #
    class UpdateSubnetChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tls_inspection_configuration_arn
    #   The Amazon Resource Name (ARN) of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_name
    #   The descriptive name of the TLS inspection configuration. You can't
    #   change the name of a TLS inspection configuration after you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration
    #   The object that defines a TLS inspection configuration. This, along
    #   with TLSInspectionConfigurationResponse, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #
    #   Network Firewall uses a TLS inspection configuration to decrypt
    #   traffic. Network Firewall re-encrypts the traffic before sending it
    #   to its destination.
    #
    #   To use a TLS inspection configuration, you add it to a Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect inbound traffic. You can reference a TLS inspection
    #   configuration from more than one firewall policy, and you can use a
    #   firewall policy in more than one firewall. For more information
    #   about using TLS inspection configurations, see [Decrypting SSL/TLS
    #   traffic with TLS inspection configurations][1] in the *Network
    #   Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html
    #   @return [Types::TLSInspectionConfiguration]
    #
    # @!attribute [rw] description
    #   A description of the TLS inspection configuration.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   A complex type that contains the Amazon Web Services KMS encryption
    #   configuration settings for your TLS inspection configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the TLS inspection configuration.
    #   The token marks the state of the TLS inspection configuration
    #   resource at the time of the request.
    #
    #   To make changes to the TLS inspection configuration, you provide the
    #   token in your request. Network Firewall uses the token to ensure
    #   that the TLS inspection configuration hasn't changed since you last
    #   retrieved it. If it has changed, the operation fails with an
    #   `InvalidTokenException`. If this happens, retrieve the TLS
    #   inspection configuration again to get a current copy of it with a
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateTLSInspectionConfigurationRequest AWS API Documentation
    #
    class UpdateTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name,
      :tls_inspection_configuration,
      :description,
      :encryption_configuration,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] update_token
    #   A token used for optimistic locking. Network Firewall returns a
    #   token to your requests that access the TLS inspection configuration.
    #   The token marks the state of the TLS inspection configuration
    #   resource at the time of the request.
    #
    #   To make changes to the TLS inspection configuration, you provide the
    #   token in your request. Network Firewall uses the token to ensure
    #   that the TLS inspection configuration hasn't changed since you last
    #   retrieved it. If it has changed, the operation fails with an
    #   `InvalidTokenException`. If this happens, retrieve the TLS
    #   inspection configuration again to get a current copy of it with a
    #   current token. Reapply your changes as needed, then try the
    #   operation again using the new token.
    #   @return [String]
    #
    # @!attribute [rw] tls_inspection_configuration_response
    #   The high-level properties of a TLS inspection configuration. This,
    #   along with the TLSInspectionConfiguration, define the TLS inspection
    #   configuration. You can retrieve all objects for a TLS inspection
    #   configuration by calling DescribeTLSInspectionConfiguration.
    #   @return [Types::TLSInspectionConfigurationResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateTLSInspectionConfigurationResponse AWS API Documentation
    #
    class UpdateTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration_response)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
