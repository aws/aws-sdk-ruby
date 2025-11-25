# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkFirewall
  module Types

    # The status of the firewall endpoint defined by a
    # `VpcEndpointAssociation`.
    #
    # @!attribute [rw] attachment
    #   The definition and status of the firewall endpoint for a single
    #   subnet. In each configured subnet, Network Firewall instantiates a
    #   firewall endpoint to handle network traffic.
    #
    #   This data type is used for any firewall endpoint type:
    #
    #   * For `Firewall.SubnetMappings`, this `Attachment` is part of the
    #     `FirewallStatus` sync states information. You define firewall
    #     subnets using `CreateFirewall` and `AssociateSubnets`.
    #
    #   * For `VpcEndpointAssociation`, this `Attachment` is part of the
    #     `VpcEndpointAssociationStatus` sync states information. You define
    #     these subnets using `CreateVpcEndpointAssociation`.
    #   @return [Types::Attachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AZSyncState AWS API Documentation
    #
    class AZSyncState < Struct.new(
      :attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_attachment_id
    #   Required. The unique identifier of the transit gateway attachment to
    #   accept. This ID is returned in the response when creating a transit
    #   gateway-attached firewall.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AcceptNetworkFirewallTransitGatewayAttachmentRequest AWS API Documentation
    #
    class AcceptNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_attachment_id
    #   The unique identifier of the transit gateway attachment that was
    #   accepted.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_attachment_status
    #   The current status of the transit gateway attachment. Valid values
    #   are:
    #
    #   * `CREATING` - The attachment is being created
    #
    #   * `DELETING` - The attachment is being deleted
    #
    #   * `DELETED` - The attachment has been deleted
    #
    #   * `FAILED` - The attachment creation has failed and cannot be
    #     recovered
    #
    #   * `ERROR` - The attachment is in an error state that might be
    #     recoverable
    #
    #   * `READY` - The attachment is active and processing traffic
    #
    #   * `PENDING_ACCEPTANCE` - The attachment is waiting to be accepted
    #
    #   * `REJECTING` - The attachment is in the process of being rejected
    #
    #   * `REJECTED` - The attachment has been rejected
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AcceptNetworkFirewallTransitGatewayAttachmentResponse AWS API Documentation
    #
    class AcceptNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # A report that captures key activity from the last 30 days of network
    # traffic monitored by your firewall.
    #
    # You can generate up to one report per traffic type, per 30 day period.
    # For example, when you successfully create an HTTP traffic report, you
    # cannot create another HTTP traffic report until 30 days pass.
    # Alternatively, if you generate a report that combines metrics on both
    # HTTP and HTTPS traffic, you cannot create another report for either
    # traffic type until 30 days pass.
    #
    # @!attribute [rw] analysis_report_id
    #   The unique ID of the query that ran when you requested an analysis
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] analysis_type
    #   The type of traffic that will be used to generate a report.
    #   @return [String]
    #
    # @!attribute [rw] report_time
    #   The date and time the analysis report was ran.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the analysis report you specify. Statuses include
    #   `RUNNING`, `COMPLETED`, or `FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AnalysisReport AWS API Documentation
    #
    class AnalysisReport < Struct.new(
      :analysis_report_id,
      :analysis_type,
      :report_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The analysis result for Network Firewall's stateless rule group
    # analyzer. Every time you call CreateRuleGroup, UpdateRuleGroup, or
    # DescribeRuleGroup on a stateless rule group, Network Firewall analyzes
    # the stateless rule groups in your account and identifies the rules
    # that might adversely effect your firewall's functionality. For
    # example, if Network Firewall detects a rule that's routing traffic
    # asymmetrically, which impacts the service's ability to properly
    # process traffic, the service includes the rule in a list of analysis
    # results.
    #
    # The `AnalysisResult` data type is not related to traffic analysis
    # reports you generate using StartAnalysisReport. For information on
    # traffic analysis report results, see AnalysisTypeReportResult.
    #
    # @!attribute [rw] identified_rule_ids
    #   The priority number of the stateless rules identified in the
    #   analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identified_type
    #   The types of rule configurations that Network Firewall analyzes your
    #   rule groups for. Network Firewall analyzes stateless rule groups for
    #   the following types of rule configurations:
    #
    #   * `STATELESS_RULE_FORWARDING_ASYMMETRICALLY`
    #
    #     Cause: One or more stateless rules with the action `pass` or
    #     `forward` are forwarding traffic asymmetrically. Specifically, the
    #     rule's set of source IP addresses or their associated port
    #     numbers, don't match the set of destination IP addresses or their
    #     associated port numbers.
    #
    #     To mitigate: Make sure that there's an existing return path. For
    #     example, if the rule allows traffic from source 10.1.0.0/24 to
    #     destination 20.1.0.0/24, you should allow return traffic from
    #     source 20.1.0.0/24 to destination 10.1.0.0/24.
    #
    #   * `STATELESS_RULE_CONTAINS_TCP_FLAGS`
    #
    #     Cause: At least one stateless rule with the action `pass`
    #     or`forward` contains TCP flags that are inconsistent in the
    #     forward and return directions.
    #
    #     To mitigate: Prevent asymmetric routing issues caused by TCP flags
    #     by following these actions:
    #
    #     * Remove unnecessary TCP flag inspections from the rules.
    #
    #     * If you need to inspect TCP flags, check that the rules correctly
    #       account for changes in TCP flags throughout the TCP connection
    #       cycle, for example `SYN` and `ACK` flags used in a 3-way TCP
    #       handshake.
    #   @return [String]
    #
    # @!attribute [rw] analysis_detail
    #   Provides analysis details for the identified rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AnalysisResult AWS API Documentation
    #
    class AnalysisResult < Struct.new(
      :identified_rule_ids,
      :identified_type,
      :analysis_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results of a `COMPLETED` analysis report generated with
    # StartAnalysisReport.
    #
    # For an example of traffic analysis report results, see the response
    # syntax of GetAnalysisReportResults.
    #
    # @!attribute [rw] protocol
    #   The type of traffic captured by the analysis report.
    #   @return [String]
    #
    # @!attribute [rw] first_accessed
    #   The date and time any domain was first accessed (within the last 30
    #   day period).
    #   @return [Time]
    #
    # @!attribute [rw] last_accessed
    #   The date and time any domain was last accessed (within the last 30
    #   day period).
    #   @return [Time]
    #
    # @!attribute [rw] domain
    #   The most frequently accessed domains.
    #   @return [String]
    #
    # @!attribute [rw] hits
    #   The number of attempts made to access a observed domain.
    #   @return [Types::Hits]
    #
    # @!attribute [rw] unique_sources
    #   The number of unique source IP addresses that connected to a domain.
    #   @return [Types::UniqueSources]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AnalysisTypeReportResult AWS API Documentation
    #
    class AnalysisTypeReportResult < Struct.new(
      :protocol,
      :first_accessed,
      :last_accessed,
      :domain,
      :hits,
      :unique_sources)
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
    # @!attribute [rw] availability_zone_mappings
    #   Required. The Availability Zones where you want to create firewall
    #   endpoints. You must specify at least one Availability Zone.
    #   @return [Array<Types::AvailabilityZoneMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateAvailabilityZonesRequest AWS API Documentation
    #
    class AssociateAvailabilityZonesRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings)
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
    # @!attribute [rw] availability_zone_mappings
    #   The Availability Zones where Network Firewall created firewall
    #   endpoints. Each mapping specifies an Availability Zone where the
    #   firewall processes traffic.
    #   @return [Array<Types::AvailabilityZoneMapping>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AssociateAvailabilityZonesResponse AWS API Documentation
    #
    class AssociateAvailabilityZonesResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
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

    # The definition and status of the firewall endpoint for a single
    # subnet. In each configured subnet, Network Firewall instantiates a
    # firewall endpoint to handle network traffic.
    #
    # This data type is used for any firewall endpoint type:
    #
    # * For `Firewall.SubnetMappings`, this `Attachment` is part of the
    #   `FirewallStatus` sync states information. You define firewall
    #   subnets using `CreateFirewall` and `AssociateSubnets`.
    #
    # * For `VpcEndpointAssociation`, this `Attachment` is part of the
    #   `VpcEndpointAssociationStatus` sync states information. You define
    #   these subnets using `CreateVpcEndpointAssociation`.
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
    #   The current status of the firewall endpoint instantiation in the
    #   subnet.
    #
    #   When this value is `READY`, the endpoint is available to handle
    #   network traffic. Otherwise, this value reflects its state, for
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

    # Defines the mapping between an Availability Zone and a firewall
    # endpoint for a transit gateway-attached firewall. Each mapping
    # represents where the firewall can process traffic. You use these
    # mappings when calling CreateFirewall, AssociateAvailabilityZones, and
    # DisassociateAvailabilityZones.
    #
    # To retrieve the current Availability Zone mappings for a firewall, use
    # DescribeFirewall.
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall endpoint is
    #   located. For example, `us-east-2a`. The Availability Zone must be in
    #   the same Region as the transit gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AvailabilityZoneMapping AWS API Documentation
    #
    class AvailabilityZoneMapping < Struct.new(
      :availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about an Availability Zone where the firewall
    # has an endpoint defined.
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the Firewall subnet in the Availability Zone.
    #   You can't change the IP address type after you create the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/AvailabilityZoneMetadata AWS API Documentation
    #
    class AvailabilityZoneMetadata < Struct.new(
      :ip_address_type)
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

    # Defines the actions to take on the SSL/TLS connection if the
    # certificate presented by the server in the connection has a revoked or
    # unknown status.
    #
    # @!attribute [rw] revoked_status_action
    #   Configures how Network Firewall processes traffic when it determines
    #   that the certificate presented by the server in the SSL/TLS
    #   connection has a revoked status.
    #
    #   * **PASS** - Allow the connection to continue, and pass subsequent
    #     packets to the stateful engine for inspection.
    #
    #   * **DROP** - Network Firewall closes the connection and drops
    #     subsequent packets for that connection.
    #
    #   * **REJECT** - Network Firewall sends a TCP reject packet back to
    #     your client. The service closes the connection and drops
    #     subsequent packets for that connection. `REJECT` is available only
    #     for TCP traffic.
    #   @return [String]
    #
    # @!attribute [rw] unknown_status_action
    #   Configures how Network Firewall processes traffic when it determines
    #   that the certificate presented by the server in the SSL/TLS
    #   connection has an unknown status, or a status that cannot be
    #   determined for any other reason, including when the service is
    #   unable to connect to the OCSP and CRL endpoints for the certificate.
    #
    #   * **PASS** - Allow the connection to continue, and pass subsequent
    #     packets to the stateful engine for inspection.
    #
    #   * **DROP** - Network Firewall closes the connection and drops
    #     subsequent packets for that connection.
    #
    #   * **REJECT** - Network Firewall sends a TCP reject packet back to
    #     your client. The service closes the connection and drops
    #     subsequent packets for that connection. `REJECT` is available only
    #     for TCP traffic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CheckCertificateRevocationStatusActions AWS API Documentation
    #
    class CheckCertificateRevocationStatusActions < Struct.new(
      :revoked_status_action,
      :unknown_status_action)
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
    # @!attribute [rw] enabled_analysis_types
    #   An optional setting indicating the specific traffic analysis types
    #   to enable on the firewall.
    #   @return [Array<String>]
    #
    # @!attribute [rw] transit_gateway_id
    #   Required when creating a transit gateway-attached firewall. The
    #   unique identifier of the transit gateway to attach to this firewall.
    #   You can provide either a transit gateway from your account or one
    #   that has been shared with you through Resource Access Manager.
    #
    #   After creating the firewall, you cannot change the transit gateway
    #   association. To use a different transit gateway, you must create a
    #   new firewall.
    #
    #   For information about creating firewalls, see CreateFirewall. For
    #   specific guidance about transit gateway-attached firewalls, see
    #   [Considerations for transit gateway-attached firewalls][1] in the
    #   *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tgw-firewall-considerations.html
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_mappings
    #   Required. The Availability Zones where you want to create firewall
    #   endpoints for a transit gateway-attached firewall. You must specify
    #   at least one Availability Zone. Consider enabling the firewall in
    #   every Availability Zone where you have workloads to maintain
    #   Availability Zone isolation.
    #
    #   You can modify Availability Zones later using
    #   AssociateAvailabilityZones or DisassociateAvailabilityZones, but
    #   this may briefly disrupt traffic. The
    #   `AvailabilityZoneChangeProtection` setting controls whether you can
    #   make these modifications.
    #   @return [Array<Types::AvailabilityZoneMapping>]
    #
    # @!attribute [rw] availability_zone_change_protection
    #   Optional. A setting indicating whether the firewall is protected
    #   against changes to its Availability Zone configuration. When set to
    #   `TRUE`, you cannot add or remove Availability Zones without first
    #   disabling this protection using
    #   UpdateAvailabilityZoneChangeProtection.
    #
    #   Default value: `FALSE`
    #   @return [Boolean]
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
      :encryption_configuration,
      :enabled_analysis_types,
      :transit_gateway_id,
      :availability_zone_mappings,
      :availability_zone_change_protection)
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
    #
    #   The firewall status indicates a combined status. It indicates
    #   whether all subnets are up-to-date with the latest firewall
    #   configurations, which is based on the sync states config values, and
    #   also whether all subnets have their endpoints fully enabled, based
    #   on their sync states attachment values.
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
    # @!attribute [rw] analyze_rule_group
    #   Indicates whether you want Network Firewall to analyze the stateless
    #   rules in the rule group for rule behavior such as asymmetric
    #   routing. If set to `TRUE`, Network Firewall runs the analysis and
    #   then creates the rule group for you. To run the stateless rule group
    #   analyzer without creating the rule group, set `DryRun` to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] summary_configuration
    #   An object that contains a `RuleOptions` array of strings. You use
    #   `RuleOptions` to determine which of the following RuleSummary values
    #   are returned in response to `DescribeRuleGroupSummary`.
    #
    #   * `Metadata` - returns
    #
    #   * `Msg`
    #
    #   * `SID`
    #   @return [Types::SummaryConfiguration]
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
      :source_metadata,
      :analyze_rule_group,
      :summary_configuration)
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
    #   To use a TLS inspection configuration, you add it to a new Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect the traffic traveling through your firewalls. You can
    #   reference a TLS inspection configuration from more than one firewall
    #   policy, and you can use a firewall policy in more than one firewall.
    #   For more information about using TLS inspection configurations, see
    #   [Inspecting SSL/TLS traffic with TLS inspection configurations][1]
    #   in the *Network Firewall Developer Guide*.
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

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC where you want to create a firewall
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mapping
    #   The ID for a subnet that's used in an association with a firewall.
    #   This is used in CreateFirewall, AssociateSubnets, and
    #   CreateVpcEndpointAssociation. Network Firewall creates an instance
    #   of the associated firewall in each subnet that you specify, to
    #   filter traffic in the subnet's Availability Zone.
    #   @return [Types::SubnetMapping]
    #
    # @!attribute [rw] description
    #   A description of the VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateVpcEndpointAssociationRequest AWS API Documentation
    #
    class CreateVpcEndpointAssociationRequest < Struct.new(
      :firewall_arn,
      :vpc_id,
      :subnet_mapping,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_association
    #   The configuration settings for the VPC endpoint association. These
    #   settings include the firewall and the VPC and subnet to use for the
    #   firewall endpoint.
    #   @return [Types::VpcEndpointAssociation]
    #
    # @!attribute [rw] vpc_endpoint_association_status
    #   Detailed information about the current status of a
    #   VpcEndpointAssociation. You can retrieve this by calling
    #   DescribeVpcEndpointAssociation and providing the VPC endpoint
    #   association ARN.
    #   @return [Types::VpcEndpointAssociationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/CreateVpcEndpointAssociationResponse AWS API Documentation
    #
    class CreateVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status)
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
    #   A firewall defines the behavior of a firewall, the main VPC where
    #   the firewall is used, the Availability Zones where the firewall can
    #   be used, and one subnet to use for a firewall endpoint within each
    #   of the Availability Zones. The Availability Zones are defined
    #   implicitly in the subnet specifications.
    #
    #   In addition to the firewall endpoints that you define in this
    #   `Firewall` specification, you can create firewall endpoints in
    #   `VpcEndpointAssociation` resources for any VPC, in any Availability
    #   Zone where the firewall is already in use.
    #
    #   The status of the firewall, for example whether it's ready to
    #   filter network traffic, is provided in the corresponding
    #   FirewallStatus. You can retrieve both the firewall and firewall
    #   status by calling DescribeFirewall.
    #   @return [Types::Firewall]
    #
    # @!attribute [rw] firewall_status
    #   Detailed information about the current status of a Firewall. You can
    #   retrieve this for a firewall by calling DescribeFirewall and
    #   providing the firewall name and ARN.
    #
    #   The firewall status indicates a combined status. It indicates
    #   whether all subnets are up-to-date with the latest firewall
    #   configurations, which is based on the sync states config values, and
    #   also whether all subnets have their endpoints fully enabled, based
    #   on their sync states attachment values.
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

    # @!attribute [rw] transit_gateway_attachment_id
    #   Required. The unique identifier of the transit gateway attachment to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteNetworkFirewallTransitGatewayAttachmentRequest AWS API Documentation
    #
    class DeleteNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_attachment_id
    #   The ID of the transit gateway attachment that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_attachment_status
    #   The current status of the transit gateway attachment deletion
    #   process.
    #
    #   Valid values are:
    #
    #   * `CREATING` - The attachment is being created
    #
    #   * `DELETING` - The attachment is being deleted
    #
    #   * `DELETED` - The attachment has been deleted
    #
    #   * `FAILED` - The attachment creation has failed and cannot be
    #     recovered
    #
    #   * `ERROR` - The attachment is in an error state that might be
    #     recoverable
    #
    #   * `READY` - The attachment is active and processing traffic
    #
    #   * `PENDING_ACCEPTANCE` - The attachment is waiting to be accepted
    #
    #   * `REJECTING` - The attachment is in the process of being rejected
    #
    #   * `REJECTED` - The attachment has been rejected
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteNetworkFirewallTransitGatewayAttachmentResponse AWS API Documentation
    #
    class DeleteNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status)
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

    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteVpcEndpointAssociationRequest AWS API Documentation
    #
    class DeleteVpcEndpointAssociationRequest < Struct.new(
      :vpc_endpoint_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_association
    #   The configuration settings for the VPC endpoint association. These
    #   settings include the firewall and the VPC and subnet to use for the
    #   firewall endpoint.
    #   @return [Types::VpcEndpointAssociation]
    #
    # @!attribute [rw] vpc_endpoint_association_status
    #   Detailed information about the current status of a
    #   VpcEndpointAssociation. You can retrieve this by calling
    #   DescribeVpcEndpointAssociation and providing the VPC endpoint
    #   association ARN.
    #   @return [Types::VpcEndpointAssociationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DeleteVpcEndpointAssociationResponse AWS API Documentation
    #
    class DeleteVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallMetadataRequest AWS API Documentation
    #
    class DescribeFirewallMetadataRequest < Struct.new(
      :firewall_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] firewall_policy_arn
    #   The Amazon Resource Name (ARN) of the firewall policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The readiness of the configured firewall to handle network traffic
    #   across all of the Availability Zones where you have it configured.
    #   This setting is `READY` only when the
    #   `ConfigurationSyncStateSummary` value is `IN_SYNC` and the
    #   `Attachment` `Status` values for all of the configured subnets are
    #   `READY`.
    #   @return [String]
    #
    # @!attribute [rw] supported_availability_zones
    #   The Availability Zones that the firewall currently supports. This
    #   includes all Availability Zones for which the firewall has a subnet
    #   defined.
    #   @return [Hash<String,Types::AvailabilityZoneMetadata>]
    #
    # @!attribute [rw] transit_gateway_attachment_id
    #   The unique identifier of the transit gateway attachment associated
    #   with this firewall. This field is only present for transit
    #   gateway-attached firewalls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFirewallMetadataResponse AWS API Documentation
    #
    class DescribeFirewallMetadataResponse < Struct.new(
      :firewall_arn,
      :firewall_policy_arn,
      :description,
      :status,
      :supported_availability_zones,
      :transit_gateway_attachment_id)
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
    #
    #   The firewall status indicates a combined status. It indicates
    #   whether all subnets are up-to-date with the latest firewall
    #   configurations, which is based on the sync states config values, and
    #   also whether all subnets have their endpoints fully enabled, based
    #   on their sync states attachment values.
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
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFlowOperationRequest AWS API Documentation
    #
    class DescribeFlowOperationRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_type
    #   Defines the type of `FlowOperation`.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_status
    #   Returns the status of the flow operation. This string is returned in
    #   the responses to start, list, and describe commands.
    #
    #   If the status is `COMPLETED_WITH_ERRORS`, results may be returned
    #   with any number of `Flows` missing from the response. If the status
    #   is `FAILED`, `Flows` returned will be empty.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the asynchronous operation fails, Network Firewall populates this
    #   with the reason for the error or failure. Options include `Flow
    #   operation error` and `Flow timeout`.
    #   @return [String]
    #
    # @!attribute [rw] flow_request_timestamp
    #   A timestamp indicating when the Suricata engine identified flows
    #   impacted by an operation.
    #   @return [Time]
    #
    # @!attribute [rw] flow_operation
    #   Returns key information about a flow operation, such as related
    #   statuses, unique identifiers, and all filters defined in the
    #   operation.
    #   @return [Types::FlowOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeFlowOperationResponse AWS API Documentation
    #
    class DescribeFlowOperationResponse < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_id,
      :flow_operation_type,
      :flow_operation_status,
      :status_message,
      :flow_request_timestamp,
      :flow_operation)
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
    # @!attribute [rw] enable_monitoring_dashboard
    #   A boolean that reflects whether or not the firewall monitoring
    #   dashboard is enabled on a firewall.
    #
    #   Returns `TRUE` when the firewall monitoring dashboard is enabled on
    #   the firewall. Returns `FALSE` when the firewall monitoring dashboard
    #   is not enabled on the firewall.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeLoggingConfigurationResponse AWS API Documentation
    #
    class DescribeLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :logging_configuration,
      :enable_monitoring_dashboard)
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
    #   A timestamp indicating when the rule group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_name
    #   The name of the Amazon Web Services Marketplace vendor that provides
    #   this rule group.
    #   @return [String]
    #
    # @!attribute [rw] product_id
    #   The unique identifier for the product listing associated with this
    #   rule group.
    #   @return [String]
    #
    # @!attribute [rw] listing_name
    #   The display name of the product listing for this rule group.
    #   @return [String]
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
      :last_modified_time,
      :vendor_name,
      :product_id,
      :listing_name)
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
    # @!attribute [rw] analyze_rule_group
    #   Indicates whether you want Network Firewall to analyze the stateless
    #   rules in the rule group for rule behavior such as asymmetric
    #   routing. If set to `TRUE`, Network Firewall runs the analysis.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupRequest AWS API Documentation
    #
    class DescribeRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      :analyze_rule_group)
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

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] rule_group_arn
    #   Required. The Amazon Resource Name (ARN) of the rule group.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of rule group you want a summary for. This is a required
    #   field.
    #
    #   Valid value: `STATEFUL`
    #
    #   Note that `STATELESS` exists but is not currently supported. If you
    #   provide `STATELESS`, an exception is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupSummaryRequest AWS API Documentation
    #
    class DescribeRuleGroupSummaryRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_group_name
    #   The descriptive name of the rule group. You can't change the name
    #   of a rule group after you create it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A complex type that contains rule information based on the rule
    #   group's configured summary settings. The content varies depending
    #   on the fields that you specified to extract in your
    #   SummaryConfiguration. When you haven't configured any summary
    #   settings, this returns an empty array. The response might include:
    #
    #   * Rule identifiers
    #
    #   * Rule descriptions
    #
    #   * Any metadata fields that you specified in your
    #     SummaryConfiguration
    #   @return [Types::Summary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeRuleGroupSummaryResponse AWS API Documentation
    #
    class DescribeRuleGroupSummaryResponse < Struct.new(
      :rule_group_name,
      :description,
      :summary)
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
    #   To use a TLS inspection configuration, you add it to a new Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect the traffic traveling through your firewalls. You can
    #   reference a TLS inspection configuration from more than one firewall
    #   policy, and you can use a firewall policy in more than one firewall.
    #   For more information about using TLS inspection configurations, see
    #   [Inspecting SSL/TLS traffic with TLS inspection configurations][1]
    #   in the *Network Firewall Developer Guide*.
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

    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeVpcEndpointAssociationRequest AWS API Documentation
    #
    class DescribeVpcEndpointAssociationRequest < Struct.new(
      :vpc_endpoint_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_endpoint_association
    #   The configuration settings for the VPC endpoint association. These
    #   settings include the firewall and the VPC and subnet to use for the
    #   firewall endpoint.
    #   @return [Types::VpcEndpointAssociation]
    #
    # @!attribute [rw] vpc_endpoint_association_status
    #   Detailed information about the current status of a
    #   VpcEndpointAssociation. You can retrieve this by calling
    #   DescribeVpcEndpointAssociation and providing the VPC endpoint
    #   association ARN.
    #   @return [Types::VpcEndpointAssociationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DescribeVpcEndpointAssociationResponse AWS API Documentation
    #
    class DescribeVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status)
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
    # @!attribute [rw] availability_zone_mappings
    #   Required. The Availability Zones to remove from the firewall's
    #   configuration.
    #   @return [Array<Types::AvailabilityZoneMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DisassociateAvailabilityZonesRequest AWS API Documentation
    #
    class DisassociateAvailabilityZonesRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings)
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
    # @!attribute [rw] availability_zone_mappings
    #   The remaining Availability Zones where the firewall has endpoints
    #   after the disassociation.
    #   @return [Array<Types::AvailabilityZoneMapping>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/DisassociateAvailabilityZonesResponse AWS API Documentation
    #
    class DisassociateAvailabilityZonesResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
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

    # A firewall defines the behavior of a firewall, the main VPC where the
    # firewall is used, the Availability Zones where the firewall can be
    # used, and one subnet to use for a firewall endpoint within each of the
    # Availability Zones. The Availability Zones are defined implicitly in
    # the subnet specifications.
    #
    # In addition to the firewall endpoints that you define in this
    # `Firewall` specification, you can create firewall endpoints in
    # `VpcEndpointAssociation` resources for any VPC, in any Availability
    # Zone where the firewall is already in use.
    #
    # The status of the firewall, for example whether it's ready to filter
    # network traffic, is provided in the corresponding FirewallStatus. You
    # can retrieve both the firewall and firewall status by calling
    # DescribeFirewall.
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
    #   The primary public subnets that Network Firewall is using for the
    #   firewall. Network Firewall creates a firewall endpoint in each
    #   subnet. Create a subnet mapping for each Availability Zone where you
    #   want to use the firewall.
    #
    #   These subnets are all defined for a single, primary VPC, and each
    #   must belong to a different Availability Zone. Each of these subnets
    #   establishes the availability of the firewall in its Availability
    #   Zone.
    #
    #   In addition to these subnets, you can define other endpoints for the
    #   firewall in `VpcEndpointAssociation` resources. You can define these
    #   additional endpoints for any VPC, and for any of the Availability
    #   Zones where the firewall resource already has a subnet mapping. VPC
    #   endpoint associations give you the ability to protect multiple VPCs
    #   using a single firewall, and to define multiple firewall endpoints
    #   for a VPC in a single Availability Zone.
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
    # @!attribute [rw] number_of_associations
    #   The number of `VpcEndpointAssociation` resources that use this
    #   firewall.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_analysis_types
    #   An optional setting indicating the specific traffic analysis types
    #   to enable on the firewall.
    #   @return [Array<String>]
    #
    # @!attribute [rw] transit_gateway_id
    #   The unique identifier of the transit gateway associated with this
    #   firewall. This field is only present for transit gateway-attached
    #   firewalls.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_owner_account_id
    #   The Amazon Web Services account ID that owns the transit gateway.
    #   This may be different from the firewall owner's account ID when
    #   using a shared transit gateway.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_mappings
    #   The Availability Zones where the firewall endpoints are created for
    #   a transit gateway-attached firewall. Each mapping specifies an
    #   Availability Zone where the firewall processes traffic.
    #   @return [Array<Types::AvailabilityZoneMapping>]
    #
    # @!attribute [rw] availability_zone_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to its Availability Zone configuration. When set to `TRUE`,
    #   you must first disable this protection before adding or removing
    #   Availability Zones.
    #   @return [Boolean]
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
      :encryption_configuration,
      :number_of_associations,
      :enabled_analysis_types,
      :transit_gateway_id,
      :transit_gateway_owner_account_id,
      :availability_zone_mappings,
      :availability_zone_change_protection)
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
    # @!attribute [rw] transit_gateway_attachment_id
    #   The unique identifier of the transit gateway attachment associated
    #   with this firewall. This field is only present for transit
    #   gateway-attached firewalls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallMetadata AWS API Documentation
    #
    class FirewallMetadata < Struct.new(
      :firewall_name,
      :firewall_arn,
      :transit_gateway_attachment_id)
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
    # @!attribute [rw] enable_tls_session_holding
    #   When true, prevents TCP and TLS packets from reaching destination
    #   servers until TLS Inspection has evaluated Server Name Indication
    #   (SNI) rules. Requires an associated TLS Inspection configuration.
    #   @return [Boolean]
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
      :policy_variables,
      :enable_tls_session_holding)
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
    # The firewall status indicates a combined status. It indicates whether
    # all subnets are up-to-date with the latest firewall configurations,
    # which is based on the sync states config values, and also whether all
    # subnets have their endpoints fully enabled, based on their sync states
    # attachment values.
    #
    # @!attribute [rw] status
    #   The readiness of the configured firewall to handle network traffic
    #   across all of the Availability Zones where you have it configured.
    #   This setting is `READY` only when the
    #   `ConfigurationSyncStateSummary` value is `IN_SYNC` and the
    #   `Attachment` `Status` values for all of the configured subnets are
    #   `READY`.
    #   @return [String]
    #
    # @!attribute [rw] configuration_sync_state_summary
    #   The configuration sync state for the firewall. This summarizes the
    #   `Config` settings in the `SyncStates` for this firewall status
    #   object.
    #
    #   When you create a firewall or update its configuration, for example
    #   by adding a rule group to its firewall policy, Network Firewall
    #   distributes the configuration changes to all Availability Zones that
    #   have subnets defined for the firewall. This summary indicates
    #   whether the configuration changes have been applied everywhere.
    #
    #   This status must be `IN_SYNC` for the firewall to be ready for use,
    #   but it doesn't indicate that the firewall is ready. The `Status`
    #   setting indicates firewall readiness. It's based on this setting
    #   and the readiness of the firewall endpoints to take traffic.
    #   @return [String]
    #
    # @!attribute [rw] sync_states
    #   Status for the subnets that you've configured in the firewall. This
    #   contains one array element per Availability Zone where you've
    #   configured a subnet in the firewall.
    #
    #   These objects provide detailed information for the settings
    #   `ConfigurationSyncStateSummary` and `Status`.
    #   @return [Hash<String,Types::SyncState>]
    #
    # @!attribute [rw] capacity_usage_summary
    #   Describes the capacity usage of the resources contained in a
    #   firewall's reference sets. Network Firewall calculates the capacity
    #   usage by taking an aggregated count of all of the resources used by
    #   all of the reference sets in a firewall.
    #   @return [Types::CapacityUsageSummary]
    #
    # @!attribute [rw] transit_gateway_attachment_sync_state
    #   The synchronization state of the transit gateway attachment. This
    #   indicates whether the firewall's transit gateway configuration is
    #   properly synchronized and operational. Use this to verify that your
    #   transit gateway configuration changes have been applied.
    #   @return [Types::TransitGatewayAttachmentSyncState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FirewallStatus AWS API Documentation
    #
    class FirewallStatus < Struct.new(
      :status,
      :configuration_sync_state_summary,
      :sync_states,
      :capacity_usage_summary,
      :transit_gateway_attachment_sync_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Any number of arrays, where each array is a single flow identified in
    # the scope of the operation. If multiple flows were in the scope of the
    # operation, multiple `Flows` arrays are returned.
    #
    # @!attribute [rw] source_address
    #   A single IP address specification. This is used in the
    #   MatchAttributes source and destination specifications.
    #   @return [Types::Address]
    #
    # @!attribute [rw] destination_address
    #   A single IP address specification. This is used in the
    #   MatchAttributes source and destination specifications.
    #   @return [Types::Address]
    #
    # @!attribute [rw] source_port
    #   The source port to inspect for. You can specify an individual port,
    #   for example `1994` and you can specify a port range, for example
    #   `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port to inspect for. You can specify an individual
    #   port, for example `1994` and you can specify a port range, for
    #   example `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocols to inspect for, specified using the assigned internet
    #   protocol number (IANA) for each protocol. If not specified, this
    #   matches with any protocol.
    #   @return [String]
    #
    # @!attribute [rw] age
    #   Returned as info about age of the flows identified by the flow
    #   operation.
    #   @return [Integer]
    #
    # @!attribute [rw] packet_count
    #   Returns the total number of data packets received or transmitted in
    #   a flow.
    #   @return [Integer]
    #
    # @!attribute [rw] byte_count
    #   Returns the number of bytes received or transmitted in a specific
    #   flow.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Flow AWS API Documentation
    #
    class Flow < Struct.new(
      :source_address,
      :destination_address,
      :source_port,
      :destination_port,
      :protocol,
      :age,
      :packet_count,
      :byte_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the scope a flow operation. You can use up to 20 filters to
    # configure a single flow operation.
    #
    # @!attribute [rw] source_address
    #   A single IP address specification. This is used in the
    #   MatchAttributes source and destination specifications.
    #   @return [Types::Address]
    #
    # @!attribute [rw] destination_address
    #   A single IP address specification. This is used in the
    #   MatchAttributes source and destination specifications.
    #   @return [Types::Address]
    #
    # @!attribute [rw] source_port
    #   The source port to inspect for. You can specify an individual port,
    #   for example `1994` and you can specify a port range, for example
    #   `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port to inspect for. You can specify an individual
    #   port, for example `1994` and you can specify a port range, for
    #   example `1990:1994`. To match with any port, specify `ANY`.
    #   @return [String]
    #
    # @!attribute [rw] protocols
    #   The protocols to inspect for, specified using the assigned internet
    #   protocol number (IANA) for each protocol. If not specified, this
    #   matches with any protocol.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FlowFilter AWS API Documentation
    #
    class FlowFilter < Struct.new(
      :source_address,
      :destination_address,
      :source_port,
      :destination_port,
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a flow operation, such as related statuses,
    # unique identifiers, and all filters defined in the operation.
    #
    # Flow operations let you manage the flows tracked in the flow table,
    # also known as the firewall table.
    #
    # A flow is network traffic that is monitored by a firewall, either by
    # stateful or stateless rules. For traffic to be considered part of a
    # flow, it must share Destination, DestinationPort, Direction, Protocol,
    # Source, and SourcePort.
    #
    # @!attribute [rw] minimum_flow_age_in_seconds
    #   The reqested `FlowOperation` ignores flows with an age (in seconds)
    #   lower than `MinimumFlowAgeInSeconds`. You provide this for start
    #   commands.
    #   @return [Integer]
    #
    # @!attribute [rw] flow_filters
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [Array<Types::FlowFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FlowOperation AWS API Documentation
    #
    class FlowOperation < Struct.new(
      :minimum_flow_age_in_seconds,
      :flow_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # An array of objects with metadata about the requested `FlowOperation`.
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_type
    #   Defines the type of `FlowOperation`.
    #   @return [String]
    #
    # @!attribute [rw] flow_request_timestamp
    #   A timestamp indicating when the Suricata engine identified flows
    #   impacted by an operation.
    #   @return [Time]
    #
    # @!attribute [rw] flow_operation_status
    #   Returns the status of the flow operation. This string is returned in
    #   the responses to start, list, and describe commands.
    #
    #   If the status is `COMPLETED_WITH_ERRORS`, results may be returned
    #   with any number of `Flows` missing from the response. If the status
    #   is `FAILED`, `Flows` returned will be empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FlowOperationMetadata AWS API Documentation
    #
    class FlowOperationMetadata < Struct.new(
      :flow_operation_id,
      :flow_operation_type,
      :flow_request_timestamp,
      :flow_operation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the amount of time that can pass without any traffic sent
    # through the firewall before the firewall determines that the
    # connection is idle and Network Firewall removes the flow entry from
    # its flow table. Existing connections and flows are not impacted when
    # you update this value. Only new connections after you update this
    # value are impacted.
    #
    # @!attribute [rw] tcp_idle_timeout_seconds
    #   The number of seconds that can pass without any TCP traffic sent
    #   through the firewall before the firewall determines that the
    #   connection is idle. After the idle timeout passes, data packets are
    #   dropped, however, the next TCP SYN packet is considered a new flow
    #   and is processed by the firewall. Clients or targets can use TCP
    #   keepalive packets to reset the idle timeout.
    #
    #   You can define the `TcpIdleTimeoutSeconds` value to be between 60
    #   and 6000 seconds. If no value is provided, it defaults to 350
    #   seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/FlowTimeouts AWS API Documentation
    #
    class FlowTimeouts < Struct.new(
      :tcp_idle_timeout_seconds)
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
    # @!attribute [rw] analysis_report_id
    #   The unique ID of the query that ran when you requested an analysis
    #   report.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   You must specify the ARN or the name, and you can specify both.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/GetAnalysisReportResultsRequest AWS API Documentation
    #
    class GetAnalysisReportResultsRequest < Struct.new(
      :firewall_name,
      :analysis_report_id,
      :firewall_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the analysis report you specify. Statuses include
    #   `RUNNING`, `COMPLETED`, or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time within the last 30 days from which to start
    #   retrieving analysis data, in UTC format (for example,
    #   `YYYY-MM-DDTHH:MM:SSZ`.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time, up to the current date, from which to stop
    #   retrieving analysis data, in UTC format (for example,
    #   `YYYY-MM-DDTHH:MM:SSZ`).
    #   @return [Time]
    #
    # @!attribute [rw] report_time
    #   The date and time the analysis report was ran.
    #   @return [Time]
    #
    # @!attribute [rw] analysis_type
    #   The type of traffic that will be used to generate a report.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @!attribute [rw] analysis_report_results
    #   Retrieves the results of a traffic analysis report.
    #   @return [Array<Types::AnalysisTypeReportResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/GetAnalysisReportResultsResponse AWS API Documentation
    #
    class GetAnalysisReportResultsResponse < Struct.new(
      :status,
      :start_time,
      :end_time,
      :report_time,
      :analysis_type,
      :next_token,
      :analysis_report_results)
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

    # Attempts made to a access domain.
    #
    # @!attribute [rw] count
    #   The number of attempts made to access a domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Hits AWS API Documentation
    #
    class Hits < Struct.new(
      :count)
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

    # Your request is valid, but Network Firewall couldn't perform the
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListAnalysisReportsRequest AWS API Documentation
    #
    class ListAnalysisReportsRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_reports
    #   The `id` and `ReportTime` associated with a requested analysis
    #   report. Does not provide the status of the analysis report.
    #   @return [Array<Types::AnalysisReport>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListAnalysisReportsResponse AWS API Documentation
    #
    class ListAnalysisReportsResponse < Struct.new(
      :analysis_reports,
      :next_token)
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

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
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
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFlowOperationResultsRequest AWS API Documentation
    #
    class ListFlowOperationResultsRequest < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :next_token,
      :max_results,
      :availability_zone,
      :vpc_endpoint_id,
      :vpc_endpoint_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_status
    #   Returns the status of the flow operation. This string is returned in
    #   the responses to start, list, and describe commands.
    #
    #   If the status is `COMPLETED_WITH_ERRORS`, results may be returned
    #   with any number of `Flows` missing from the response. If the status
    #   is `FAILED`, `Flows` returned will be empty.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   If the asynchronous operation fails, Network Firewall populates this
    #   with the reason for the error or failure. Options include `Flow
    #   operation error` and `Flow timeout`.
    #   @return [String]
    #
    # @!attribute [rw] flow_request_timestamp
    #   A timestamp indicating when the Suricata engine identified flows
    #   impacted by an operation.
    #   @return [Time]
    #
    # @!attribute [rw] flows
    #   Any number of arrays, where each array is a single flow identified
    #   in the scope of the operation. If multiple flows were in the scope
    #   of the operation, multiple `Flows` arrays are returned.
    #   @return [Array<Types::Flow>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFlowOperationResultsResponse AWS API Documentation
    #
    class ListFlowOperationResultsResponse < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_id,
      :flow_operation_status,
      :status_message,
      :flow_request_timestamp,
      :flows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_type
    #   An optional string that defines whether any or all operation types
    #   are returned.
    #   @return [String]
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFlowOperationsRequest AWS API Documentation
    #
    class ListFlowOperationsRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flow_operations
    #   Flow operations let you manage the flows tracked in the flow table,
    #   also known as the firewall table.
    #
    #   A flow is network traffic that is monitored by a firewall, either by
    #   stateful or stateless rules. For traffic to be considered part of a
    #   flow, it must share Destination, DestinationPort, Direction,
    #   Protocol, Source, and SourcePort.
    #   @return [Array<Types::FlowOperationMetadata>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects with a `MaxResults` setting, if
    #   the number of objects that are still available for retrieval exceeds
    #   the maximum you requested, Network Firewall returns a `NextToken`
    #   value in the response. To retrieve the next batch of objects, use
    #   the token returned from the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListFlowOperationsResponse AWS API Documentation
    #
    class ListFlowOperationsResponse < Struct.new(
      :flow_operations,
      :next_token)
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
    # @!attribute [rw] subscription_status
    #   Filters the results to show only rule groups with the specified
    #   subscription status. Use this to find subscribed or unsubscribed
    #   rule groups.
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
      :subscription_status,
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
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #
    #   If you don't specify this, Network Firewall retrieves all VPC
    #   endpoint associations that you have defined.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListVpcEndpointAssociationsRequest AWS API Documentation
    #
    class ListVpcEndpointAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :firewall_arn)
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
    # @!attribute [rw] vpc_endpoint_associations
    #   The VPC endpoint assocation metadata objects for the firewall that
    #   you specified. If you didn't specify a firewall, this is all VPC
    #   endpoint associations that you have defined.
    #
    #   Depending on your setting for max results and the number of
    #   firewalls you have, a single call might not be the full list.
    #   @return [Array<Types::VpcEndpointAssociationMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ListVpcEndpointAssociationsResponse AWS API Documentation
    #
    class ListVpcEndpointAssociationsResponse < Struct.new(
      :next_token,
      :vpc_endpoint_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines where Network Firewall sends logs for the firewall for one log
    # type. This is used in LoggingConfiguration. You can send each type of
    # log to an Amazon S3 bucket, a CloudWatch log group, or a Firehose
    # delivery stream.
    #
    # Network Firewall generates logs for stateful rule groups. You can save
    # alert, flow, and TLS log types.
    #
    # @!attribute [rw] log_type
    #   The type of log to record. You can record the following types of
    #   logs from your Network Firewall stateful engine.
    #
    #   * `ALERT` - Logs for traffic that matches your stateful rules and
    #     that have an action that sends an alert. A stateful rule sends
    #     alerts for the rule actions DROP, ALERT, and REJECT. For more
    #     information, see StatefulRule.
    #
    #   * `FLOW` - Standard network traffic flow logs. The stateful rules
    #     engine records flow logs for all network traffic that it receives.
    #     Each flow log record captures the network flow for a specific
    #     standard stateless rule group.
    #
    #   * `TLS` - Logs for events that are related to TLS inspection. For
    #     more information, see [Inspecting SSL/TLS traffic with TLS
    #     inspection configurations][1] in the *Network Firewall Developer
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-configurations.html
    #   @return [String]
    #
    # @!attribute [rw] log_destination_type
    #   The type of storage destination to send these logs to. You can send
    #   logs to an Amazon S3 bucket, a CloudWatch log group, or a Firehose
    #   delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] log_destination
    #   The named location for the logs, provided in a key:value mapping
    #   that is specific to the chosen destination type.
    #
    #   * For an Amazon S3 bucket, provide the name of the bucket, with key
    #     `bucketName`, and optionally provide a prefix, with key `prefix`.
    #
    #     The following example specifies an Amazon S3 bucket named
    #     `DOC-EXAMPLE-BUCKET` and the prefix `alerts`:
    #
    #     `"LogDestination": { "bucketName": "DOC-EXAMPLE-BUCKET", "prefix":
    #     "alerts" }`
    #
    #   * For a CloudWatch log group, provide the name of the CloudWatch log
    #     group, with key `logGroup`. The following example specifies a log
    #     group named `alert-log-group`:
    #
    #     `"LogDestination": { "logGroup": "alert-log-group" }`
    #
    #   * For a Firehose delivery stream, provide the name of the delivery
    #     stream, with key `deliveryStream`. The following example specifies
    #     a delivery stream named `alert-delivery-stream`:
    #
    #     `"LogDestination": { "deliveryStream": "alert-delivery-stream" }`
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
    #   The source port to inspect for. You can specify an individual port,
    #   for example `1994` and you can specify a port range, for example
    #   `1990:1994`. To match with any port, specify `ANY`.
    #
    #   If not specified, this matches with any source port.
    #
    #   This setting is only used for protocols 6 (TCP) and 17 (UDP).
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] destination_ports
    #   The destination port to inspect for. You can specify an individual
    #   port, for example `1994` and you can specify a port range, for
    #   example `1990:1994`. To match with any port, specify `ANY`.
    #
    #   This setting is only used for protocols 6 (TCP) and 17 (UDP).
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocols
    #   The protocols to inspect for, specified using the assigned internet
    #   protocol number (IANA) for each protocol. If not specified, this
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
    #   your Network Firewall resources with.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The IAM policy statement that lists the accounts that you want to
    #   share your Network Firewall resources with and the operations that
    #   you want the accounts to be able to perform.
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
    #   For a firewall resource, you can specify the following operations in
    #   the Actions section of the statement:
    #
    #   * network-firewall:CreateVpcEndpointAssociation
    #
    #   * network-firewall:DescribeFirewallMetadata
    #
    #   * network-firewall:ListFirewalls
    #
    #   In the Resource section of the statement, you specify the ARNs for
    #   the Network Firewall resources that you want to share with the
    #   account that you specified in `Arn`.
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

    # @!attribute [rw] transit_gateway_attachment_id
    #   Required. The unique identifier of the transit gateway attachment to
    #   reject. This ID is returned in the response when creating a transit
    #   gateway-attached firewall.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RejectNetworkFirewallTransitGatewayAttachmentRequest AWS API Documentation
    #
    class RejectNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transit_gateway_attachment_id
    #   The unique identifier of the transit gateway attachment that was
    #   rejected.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_attachment_status
    #   The current status of the transit gateway attachment. Valid values
    #   are:
    #
    #   * `CREATING` - The attachment is being created
    #
    #   * `DELETING` - The attachment is being deleted
    #
    #   * `DELETED` - The attachment has been deleted
    #
    #   * `FAILED` - The attachment creation has failed and cannot be
    #     recovered
    #
    #   * `ERROR` - The attachment is in an error state that might be
    #     recoverable
    #
    #   * `READY` - The attachment is active and processing traffic
    #
    #   * `PENDING_ACCEPTANCE` - The attachment is waiting to be accepted
    #
    #   * `REJECTING` - The attachment is in the process of being rejected
    #
    #   * `REJECTED` - The attachment has been rejected
    #
    #   For information about troubleshooting endpoint failures, see
    #   [Troubleshooting firewall endpoint failures][1] in the *Network
    #   Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RejectNetworkFirewallTransitGatewayAttachmentResponse AWS API Documentation
    #
    class RejectNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status)
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
    #   settings. Some limitations apply; for more information, see [Strict
    #   evaluation order][1] in the *Network Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-limitations-caveats.html
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
    # @!attribute [rw] vendor_name
    #   The name of the Amazon Web Services Marketplace seller that provides
    #   this rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleGroupMetadata AWS API Documentation
    #
    class RuleGroupMetadata < Struct.new(
      :name,
      :arn,
      :vendor_name)
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
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
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
    # @!attribute [rw] analysis_results
    #   The list of analysis results for `AnalyzeRuleGroup`. If you set
    #   `AnalyzeRuleGroup` to `TRUE` in CreateRuleGroup, UpdateRuleGroup, or
    #   DescribeRuleGroup, Network Firewall analyzes the rule group and
    #   identifies the rules that might adversely effect your firewall's
    #   functionality. For example, if Network Firewall detects a rule
    #   that's routing traffic asymmetrically, which impacts the service's
    #   ability to properly process traffic, the service includes the rule
    #   in the list of analysis results.
    #   @return [Array<Types::AnalysisResult>]
    #
    # @!attribute [rw] summary_configuration
    #   A complex type containing the currently selected rule option fields
    #   that will be displayed for rule summarization returned by
    #   DescribeRuleGroupSummary.
    #
    #   * The `RuleOptions` specified in SummaryConfiguration
    #
    #   * Rule metadata organization preferences
    #   @return [Types::SummaryConfiguration]
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
      :last_modified_time,
      :analysis_results,
      :summary_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional settings for a stateful rule. This is part of the
    # StatefulRule configuration.
    #
    # @!attribute [rw] keyword
    #   The keyword for the Suricata compatible rule option. You must
    #   include a `sid` (signature ID), and can optionally include other
    #   keywords. For information about Suricata compatible keywords, see
    #   [Rule options][1] in the Suricata documentation.
    #
    #
    #
    #   [1]: https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html#rule-options
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The settings of the Suricata compatible rule option. Rule options
    #   have zero or more setting values, and the number of possible and
    #   required settings depends on the `Keyword`. For more information
    #   about the settings for specific options, see [Rule options][1].
    #
    #
    #
    #   [1]: https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html#rule-options
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

    # A complex type containing details about a Suricata rule. Contains:
    #
    # * `SID`
    #
    # * `Msg`
    #
    # * `Metadata`
    #
    # Summaries are available for rule groups you manage and for active
    # threat defense Amazon Web Services managed rule groups.
    #
    # @!attribute [rw] sid
    #   The unique identifier (Signature ID) of the Suricata rule.
    #   @return [String]
    #
    # @!attribute [rw] msg
    #   The contents taken from the rule's msg field.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The contents of the rule's metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :sid,
      :msg,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that are available for use in the rules in the RuleGroup
    # where this is defined. See CreateRuleGroup or UpdateRuleGroup for
    # usage.
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
    #   Stateful inspection criteria, provided in Suricata compatible rules.
    #   Suricata is an open-source threat detection framework that includes
    #   a standard rule-based language for network traffic inspection.
    #
    #   These rules contain the inspection criteria and the action to take
    #   for traffic that matches the criteria, so this type of rule group
    #   doesn't have a separate action setting.
    #
    #   <note markdown="1"> You can't use the `priority` keyword if the `RuleOrder` option in
    #   StatefulRuleOptions is set to `STRICT_ORDER`.
    #
    #    </note>
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
    #   [1]: https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html
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
    #   Whether you want to apply allow, reject, alert, or drop behavior to
    #   the domains in your target list.
    #
    #   <note markdown="1"> When logging is enabled and you choose Alert, traffic that matches
    #   the domain specifications generates an alert in the firewall's
    #   logs. Then, traffic either passes, is rejected, or drops based on
    #   other rules in the firewall policy.
    #
    #    </note>
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

    # Any Certificate Manager (ACM) Secure Sockets Layer/Transport Layer
    # Security (SSL/TLS) server certificate that's associated with a
    # ServerCertificateConfiguration. Used in a TLSInspectionConfiguration
    # for inspection of inbound traffic to your firewall. You must request
    # or import a SSL/TLS certificate into ACM for each domain Network
    # Firewall needs to decrypt and inspect. Network Firewall uses the
    # SSL/TLS certificates to decrypt specified inbound SSL/TLS traffic
    # going to your firewall. For information about working with
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
    #   server certificate that's used for inbound SSL/TLS inspection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ServerCertificate AWS API Documentation
    #
    class ServerCertificate < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the Certificate Manager certificates and scope that Network
    # Firewall uses to decrypt and re-encrypt traffic using a
    # TLSInspectionConfiguration. You can configure `ServerCertificates` for
    # inbound SSL/TLS inspection, a `CertificateAuthorityArn` for outbound
    # SSL/TLS inspection, or both. For information about working with
    # certificates for TLS inspection, see [ Using SSL/TLS server
    # certficiates with TLS inspection configurations][1] in the *Network
    # Firewall Developer Guide*.
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
    #   The list of server certificates to use for inbound SSL/TLS
    #   inspection.
    #   @return [Array<Types::ServerCertificate>]
    #
    # @!attribute [rw] scopes
    #   A list of scopes.
    #   @return [Array<Types::ServerCertificateScope>]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the imported certificate authority
    #   (CA) certificate within Certificate Manager (ACM) to use for
    #   outbound SSL/TLS inspection.
    #
    #   The following limitations apply:
    #
    #   * You can use CA certificates that you imported into ACM, but you
    #     can't generate CA certificates with ACM.
    #
    #   * You can't use certificates issued by Private Certificate
    #     Authority.
    #
    #   For more information about configuring certificates for outbound
    #   inspection, see [Using SSL/TLS certificates with TLS inspection
    #   configurations][1] in the *Network Firewall Developer Guide*.
    #
    #   For information about working with certificates in ACM, see
    #   [Importing certificates][2] in the *Certificate Manager User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html
    #   [2]: https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html
    #   @return [String]
    #
    # @!attribute [rw] check_certificate_revocation_status
    #   When enabled, Network Firewall checks if the server certificate
    #   presented by the server in the SSL/TLS connection has a revoked or
    #   unkown status. If the certificate has an unknown or revoked status,
    #   you must specify the actions that Network Firewall takes on outbound
    #   traffic. To check the certificate revocation status, you must also
    #   specify a `CertificateAuthorityArn` in
    #   ServerCertificateConfiguration.
    #   @return [Types::CheckCertificateRevocationStatusActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/ServerCertificateConfiguration AWS API Documentation
    #
    class ServerCertificateConfiguration < Struct.new(
      :server_certificates,
      :scopes,
      :certificate_authority_arn,
      :check_certificate_revocation_status)
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
    #   The protocols to inspect for, specified using the assigned internet
    #   protocol number (IANA) for each protocol. If not specified, this
    #   matches with any protocol.
    #
    #   Network Firewall currently supports only TCP.
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
    # @!attribute [rw] analysis_type
    #   The type of traffic that will be used to generate a report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartAnalysisReportRequest AWS API Documentation
    #
    class StartAnalysisReportRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      :analysis_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_report_id
    #   The unique ID of the query that ran when you requested an analysis
    #   report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartAnalysisReportResponse AWS API Documentation
    #
    class StartAnalysisReportResponse < Struct.new(
      :analysis_report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] minimum_flow_age_in_seconds
    #   The reqested `FlowOperation` ignores flows with an age (in seconds)
    #   lower than `MinimumFlowAgeInSeconds`. You provide this for start
    #   commands.
    #
    #   <note markdown="1"> We recommend setting this value to at least 1 minute (60 seconds) to
    #   reduce chance of capturing flows that are not yet established.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] flow_filters
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [Array<Types::FlowFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartFlowCaptureRequest AWS API Documentation
    #
    class StartFlowCaptureRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :minimum_flow_age_in_seconds,
      :flow_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_status
    #   Returns the status of the flow operation. This string is returned in
    #   the responses to start, list, and describe commands.
    #
    #   If the status is `COMPLETED_WITH_ERRORS`, results may be returned
    #   with any number of `Flows` missing from the response. If the status
    #   is `FAILED`, `Flows` returned will be empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartFlowCaptureResponse AWS API Documentation
    #
    class StartFlowCaptureResponse < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :flow_operation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The ID of the Availability Zone where the firewall is located. For
    #   example, `us-east-2a`.
    #
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   A unique identifier for the primary endpoint associated with a
    #   firewall.
    #   @return [String]
    #
    # @!attribute [rw] minimum_flow_age_in_seconds
    #   The reqested `FlowOperation` ignores flows with an age (in seconds)
    #   lower than `MinimumFlowAgeInSeconds`. You provide this for start
    #   commands.
    #   @return [Integer]
    #
    # @!attribute [rw] flow_filters
    #   Defines the scope a flow operation. You can use up to 20 filters to
    #   configure a single flow operation.
    #   @return [Array<Types::FlowFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartFlowFlushRequest AWS API Documentation
    #
    class StartFlowFlushRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :minimum_flow_age_in_seconds,
      :flow_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_id
    #   A unique identifier for the flow operation. This ID is returned in
    #   the responses to start and list commands. You provide to describe
    #   commands.
    #   @return [String]
    #
    # @!attribute [rw] flow_operation_status
    #   Returns the status of the flow operation. This string is returned in
    #   the responses to start, list, and describe commands.
    #
    #   If the status is `COMPLETED_WITH_ERRORS`, results may be returned
    #   with any number of `Flows` missing from the response. If the status
    #   is `FAILED`, `Flows` returned will be empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StartFlowFlushResponse AWS API Documentation
    #
    class StartFlowFlushResponse < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :flow_operation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for the handling of the stateful rule groups in
    # a firewall policy.
    #
    # @!attribute [rw] rule_order
    #   Indicates how to manage the order of stateful rule evaluation for
    #   the policy. `STRICT_ORDER` is the recommended option, but
    #   `DEFAULT_ACTION_ORDER` is the default option. With `STRICT_ORDER`,
    #   provide your rules in the order that you want them to be evaluated.
    #   You can then choose one or more default actions for packets that
    #   don't match any rules. Choose `STRICT_ORDER` to have the stateful
    #   rules engine determine the evaluation order of your rules. The
    #   default action for this rule order is `PASS`, followed by `DROP`,
    #   `REJECT`, and `ALERT` actions. Stateful rules are provided to the
    #   rule engine as Suricata compatible strings, and Suricata evaluates
    #   them based on your settings. For more information, see [Evaluation
    #   order for stateful rules][1] in the *Network Firewall Developer
    #   Guide*.
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
    # @!attribute [rw] flow_timeouts
    #   Configures the amount of time that can pass without any traffic sent
    #   through the firewall before the firewall determines that the
    #   connection is idle.
    #   @return [Types::FlowTimeouts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulEngineOptions AWS API Documentation
    #
    class StatefulEngineOptions < Struct.new(
      :rule_order,
      :stream_exception_policy,
      :flow_timeouts)
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
    # [1]: https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html
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
    #   * **ALERT** - Sends an alert log message, if alert logging is
    #     configured in the Firewall LoggingConfiguration.
    #
    #     You can use this action to test a rule that you intend to use to
    #     drop traffic. You can enable the rule with `ALERT` action, verify
    #     in the logs that the rule is filtering as you want, then change
    #     the action to `DROP`.
    #
    #   * **REJECT** - Drops traffic that matches the conditions of the
    #     stateful rule, and sends a TCP reset packet back to sender of the
    #     packet. A TCP reset packet is a packet with no payload and an RST
    #     bit contained in the TCP header flags. REJECT is available only
    #     for TCP traffic. This option doesn't support FTP or IMAP
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
    # @!attribute [rw] deep_threat_inspection
    #   Network Firewall plans to augment the active threat defense managed
    #   rule group with an additional deep threat inspection capability.
    #   When this capability is released, Amazon Web Services will analyze
    #   service logs of network traffic processed by these rule groups to
    #   identify threat indicators across customers. Amazon Web Services
    #   will use these threat indicators to improve the active threat
    #   defense managed rule groups and protect the security of Amazon Web
    #   Services customers and services.
    #
    #   <note markdown="1"> Customers can opt-out of deep threat inspection at any time through
    #   the Network Firewall console or API. When customers opt out, Network
    #   Firewall will not use the network traffic processed by those
    #   customers' active threat defense rule groups for rule group
    #   improvement.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/StatefulRuleGroupReference AWS API Documentation
    #
    class StatefulRuleGroupReference < Struct.new(
      :resource_arn,
      :priority,
      :override,
      :deep_threat_inspection)
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

    # The ID for a subnet that's used in an association with a firewall.
    # This is used in CreateFirewall, AssociateSubnets, and
    # CreateVpcEndpointAssociation. Network Firewall creates an instance of
    # the associated firewall in each subnet that you specify, to filter
    # traffic in the subnet's Availability Zone.
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

    # A complex type containing summaries of security protections provided
    # by a rule group.
    #
    # Network Firewall extracts this information from selected fields in the
    # rule group's Suricata rules, based on your SummaryConfiguration
    # settings.
    #
    # @!attribute [rw] rule_summaries
    #   An array of RuleSummary objects containing individual rule details
    #   that had been configured by the rulegroup's SummaryConfiguration.
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/Summary AWS API Documentation
    #
    class Summary < Struct.new(
      :rule_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that specifies which Suricata rule metadata fields to
    # use when displaying threat information. Contains:
    #
    # * `RuleOptions` - The Suricata rule options fields to extract and
    #   display
    #
    # ^
    #
    # These settings affect how threat information appears in both the
    # console and API responses. Summaries are available for rule groups you
    # manage and for active threat defense Amazon Web Services managed rule
    # groups.
    #
    # @!attribute [rw] rule_options
    #   Specifies the selected rule options returned by
    #   DescribeRuleGroupSummary.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/SummaryConfiguration AWS API Documentation
    #
    class SummaryConfiguration < Struct.new(
      :rule_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the firewall endpoint and firewall policy configuration
    # for a single VPC subnet. This is part of the FirewallStatus.
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
    #   The configuration and status for a single firewall subnet. For each
    #   configured subnet, Network Firewall creates the attachment by
    #   instantiating the firewall endpoint in the subnet so that it's
    #   ready to take traffic.
    #   @return [Types::Attachment]
    #
    # @!attribute [rw] config
    #   The configuration status of the firewall endpoint in a single VPC
    #   subnet. Network Firewall provides each endpoint with the rules that
    #   are configured in the firewall policy. Each time you add a subnet or
    #   modify the associated firewall policy, Network Firewall synchronizes
    #   the rules in the endpoint, so it can properly filter network
    #   traffic.
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
    # To use a TLS inspection configuration, you add it to a new Network
    # Firewall firewall policy, then you apply the firewall policy to a
    # firewall. Network Firewall acts as a proxy service to decrypt and
    # inspect the traffic traveling through your firewalls. You can
    # reference a TLS inspection configuration from more than one firewall
    # policy, and you can use a firewall policy in more than one firewall.
    # For more information about using TLS inspection configurations, see
    # [Inspecting SSL/TLS traffic with TLS inspection configurations][1] in
    # the *Network Firewall Developer Guide*.
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
    # @!attribute [rw] certificate_authority
    #   Contains metadata about an Certificate Manager certificate.
    #   @return [Types::TlsCertificateData]
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
      :certificates,
      :certificate_authority)
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

    # Contains information about the synchronization state of a transit
    # gateway attachment, including its current status and any error
    # messages. Network Firewall uses this to track the state of your
    # transit gateway configuration changes.
    #
    # @!attribute [rw] attachment_id
    #   The unique identifier of the transit gateway attachment.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_attachment_status
    #   The current status of the transit gateway attachment.
    #
    #   Valid values are:
    #
    #   * `CREATING` - The attachment is being created
    #
    #   * `DELETING` - The attachment is being deleted
    #
    #   * `DELETED` - The attachment has been deleted
    #
    #   * `FAILED` - The attachment creation has failed and cannot be
    #     recovered
    #
    #   * `ERROR` - The attachment is in an error state that might be
    #     recoverable
    #
    #   * `READY` - The attachment is active and processing traffic
    #
    #   * `PENDING_ACCEPTANCE` - The attachment is waiting to be accepted
    #
    #   * `REJECTING` - The attachment is in the process of being rejected
    #
    #   * `REJECTED` - The attachment has been rejected
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message providing additional information about the current status,
    #   particularly useful when the transit gateway attachment is in a
    #   non-`READY` state.
    #
    #   Valid values are:
    #
    #   * `CREATING` - The attachment is being created
    #
    #   * `DELETING` - The attachment is being deleted
    #
    #   * `DELETED` - The attachment has been deleted
    #
    #   * `FAILED` - The attachment creation has failed and cannot be
    #     recovered
    #
    #   * `ERROR` - The attachment is in an error state that might be
    #     recoverable
    #
    #   * `READY` - The attachment is active and processing traffic
    #
    #   * `PENDING_ACCEPTANCE` - The attachment is waiting to be accepted
    #
    #   * `REJECTING` - The attachment is in the process of being rejected
    #
    #   * `REJECTED` - The attachment has been rejected
    #
    #   For information about troubleshooting endpoint failures, see
    #   [Troubleshooting firewall endpoint failures][1] in the *Network
    #   Firewall Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/TransitGatewayAttachmentSyncState AWS API Documentation
    #
    class TransitGatewayAttachmentSyncState < Struct.new(
      :attachment_id,
      :transit_gateway_attachment_status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A unique source IP address that connected to a domain.
    #
    # @!attribute [rw] count
    #   The number of unique source IP addresses that connected to a domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UniqueSources AWS API Documentation
    #
    class UniqueSources < Struct.new(
      :count)
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
    # @!attribute [rw] availability_zone_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateAvailabilityZoneChangeProtectionRequest AWS API Documentation
    #
    class UpdateAvailabilityZoneChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_change_protection)
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
    # @!attribute [rw] availability_zone_change_protection
    #   A setting indicating whether the firewall is protected against
    #   changes to the subnet associations. Use this setting to protect
    #   against accidentally modifying the subnet associations for a
    #   firewall that is in use. When you create a firewall, the operation
    #   initializes this setting to `TRUE`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateAvailabilityZoneChangeProtectionResponse AWS API Documentation
    #
    class UpdateAvailabilityZoneChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_change_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_analysis_types
    #   An optional setting indicating the specific traffic analysis types
    #   to enable on the firewall.
    #   @return [Array<String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallAnalysisSettingsRequest AWS API Documentation
    #
    class UpdateFirewallAnalysisSettingsRequest < Struct.new(
      :enabled_analysis_types,
      :firewall_arn,
      :firewall_name,
      :update_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled_analysis_types
    #   An optional setting indicating the specific traffic analysis types
    #   to enable on the firewall.
    #   @return [Array<String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateFirewallAnalysisSettingsResponse AWS API Documentation
    #
    class UpdateFirewallAnalysisSettingsResponse < Struct.new(
      :enabled_analysis_types,
      :firewall_arn,
      :firewall_name,
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
    #   The updated firewall policy to use for the firewall. You can't add
    #   or remove a TLSInspectionConfiguration after you create a firewall
    #   policy. However, you can replace an existing TLS inspection
    #   configuration with another `TLSInspectionConfiguration`.
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
    # @!attribute [rw] enable_monitoring_dashboard
    #   A boolean that lets you enable or disable the detailed firewall
    #   monitoring dashboard on the firewall.
    #
    #   The monitoring dashboard provides comprehensive visibility into your
    #   firewall's flow logs and alert logs. After you enable detailed
    #   monitoring, you can access these dashboards directly from the
    #   **Monitoring** page of the Network Firewall console.
    #
    #   Specify `TRUE` to enable the the detailed monitoring dashboard on
    #   the firewall. Specify `FALSE` to disable the the detailed monitoring
    #   dashboard on the firewall.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateLoggingConfigurationRequest < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      :enable_monitoring_dashboard)
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
    # @!attribute [rw] enable_monitoring_dashboard
    #   A boolean that reflects whether or not the firewall monitoring
    #   dashboard is enabled on a firewall.
    #
    #   Returns `TRUE` when the firewall monitoring dashboard is enabled on
    #   the firewall. Returns `FALSE` when the firewall monitoring dashboard
    #   is not enabled on the firewall.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/UpdateLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      :enable_monitoring_dashboard)
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
    # @!attribute [rw] analyze_rule_group
    #   Indicates whether you want Network Firewall to analyze the stateless
    #   rules in the rule group for rule behavior such as asymmetric
    #   routing. If set to `TRUE`, Network Firewall runs the analysis and
    #   then updates the rule group for you. To run the stateless rule group
    #   analyzer without updating the rule group, set `DryRun` to `TRUE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] summary_configuration
    #   Updates the selected summary configuration for a rule group.
    #
    #   Changes affect subsequent responses from DescribeRuleGroupSummary.
    #   @return [Types::SummaryConfiguration]
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
      :source_metadata,
      :analyze_rule_group,
      :summary_configuration)
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
    #   To use a TLS inspection configuration, you add it to a new Network
    #   Firewall firewall policy, then you apply the firewall policy to a
    #   firewall. Network Firewall acts as a proxy service to decrypt and
    #   inspect the traffic traveling through your firewalls. You can
    #   reference a TLS inspection configuration from more than one firewall
    #   policy, and you can use a firewall policy in more than one firewall.
    #   For more information about using TLS inspection configurations, see
    #   [Inspecting SSL/TLS traffic with TLS inspection configurations][1]
    #   in the *Network Firewall Developer Guide*.
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

    # A VPC endpoint association defines a single subnet to use for a
    # firewall endpoint for a `Firewall`. You can define VPC endpoint
    # associations only in the Availability Zones that already have a subnet
    # mapping defined in the `Firewall` resource.
    #
    # <note markdown="1"> You can retrieve the list of Availability Zones that are available for
    # use by calling `DescribeFirewallMetadata`.
    #
    #  </note>
    #
    # To manage firewall endpoints, first, in the `Firewall` specification,
    # you specify a single VPC and one subnet for each of the Availability
    # Zones where you want to use the firewall. Then you can define
    # additional endpoints as VPC endpoint associations.
    #
    # You can use VPC endpoint associations to expand the protections of the
    # firewall as follows:
    #
    # * **Protect multiple VPCs with a single firewall** - You can use the
    #   firewall to protect other VPCs, either in your account or in
    #   accounts where the firewall is shared. You can only specify
    #   Availability Zones that already have a firewall endpoint defined in
    #   the `Firewall` subnet mappings.
    #
    # * **Define multiple firewall endpoints for a VPC in an Availability
    #   Zone** - You can create additional firewall endpoints for the VPC
    #   that you have defined in the firewall, in any Availability Zone that
    #   already has an endpoint defined in the `Firewall` subnet mappings.
    #   You can create multiple VPC endpoint associations for any other VPC
    #   where you use the firewall.
    #
    # You can use Resource Access Manager to share a `Firewall` that you own
    # with other accounts, which gives them the ability to use the firewall
    # to create VPC endpoint associations. For information about sharing a
    # firewall, see `PutResourcePolicy` in this guide and see [Sharing
    # Network Firewall resources][1] in the *Network Firewall Developer
    # Guide*.
    #
    # The status of the VPC endpoint association, which indicates whether
    # it's ready to filter network traffic, is provided in the
    # corresponding VpcEndpointAssociationStatus. You can retrieve both the
    # association and its status by calling DescribeVpcEndpointAssociation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/network-firewall/latest/developerguide/sharing.html
    #
    # @!attribute [rw] vpc_endpoint_association_id
    #   The unique identifier of the VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] firewall_arn
    #   The Amazon Resource Name (ARN) of the firewall.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC for the endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] subnet_mapping
    #   The ID for a subnet that's used in an association with a firewall.
    #   This is used in CreateFirewall, AssociateSubnets, and
    #   CreateVpcEndpointAssociation. Network Firewall creates an instance
    #   of the associated firewall in each subnet that you specify, to
    #   filter traffic in the subnet's Availability Zone.
    #   @return [Types::SubnetMapping]
    #
    # @!attribute [rw] description
    #   A description of the VPC endpoint association.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key:value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/VpcEndpointAssociation AWS API Documentation
    #
    class VpcEndpointAssociation < Struct.new(
      :vpc_endpoint_association_id,
      :vpc_endpoint_association_arn,
      :firewall_arn,
      :vpc_id,
      :subnet_mapping,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a VPC endpoint association, returned by
    # `ListVpcEndpointAssociations`. You can use the information provided in
    # the metadata to retrieve and manage a VPC endpoint association.
    #
    # @!attribute [rw] vpc_endpoint_association_arn
    #   The Amazon Resource Name (ARN) of a VPC endpoint association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/VpcEndpointAssociationMetadata AWS API Documentation
    #
    class VpcEndpointAssociationMetadata < Struct.new(
      :vpc_endpoint_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the current status of a
    # VpcEndpointAssociation. You can retrieve this by calling
    # DescribeVpcEndpointAssociation and providing the VPC endpoint
    # association ARN.
    #
    # @!attribute [rw] status
    #   The readiness of the configured firewall endpoint to handle network
    #   traffic.
    #   @return [String]
    #
    # @!attribute [rw] association_sync_state
    #   The list of the Availability Zone sync states for all subnets that
    #   are defined by the firewall.
    #   @return [Hash<String,Types::AZSyncState>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-firewall-2020-11-12/VpcEndpointAssociationStatus AWS API Documentation
    #
    class VpcEndpointAssociationStatus < Struct.new(
      :status,
      :association_sync_state)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

