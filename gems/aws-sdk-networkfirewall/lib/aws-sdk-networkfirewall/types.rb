# frozen_string_literal: true

# This is generated code!

module Aws::NetworkFirewall
  # This module contains the types returned by client operations.
  module Types

    # <p>The status of the firewall endpoint defined by a <code>VpcEndpointAssociation</code>. </p>
    # @!attribute attachment
    #   <p>The definition and status of the firewall endpoint for a single subnet. In each configured subnet, Network Firewall instantiates a firewall
    #            endpoint to handle network traffic. </p>
    #            <p>This data type is used for any firewall endpoint type: </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>Firewall.SubnetMappings</code>, this <code>Attachment</code> is part of the <code>FirewallStatus</code> sync states information. You define firewall subnets using <code>CreateFirewall</code> and <code>AssociateSubnets</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>VpcEndpointAssociation</code>, this <code>Attachment</code> is part of the <code>VpcEndpointAssociationStatus</code> sync states information. You define these subnets using <code>CreateVpcEndpointAssociation</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Types::Attachment]
    class AZSyncState < Struct.new(
      :attachment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.</p>
    #   @return [String]
    class AcceptNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>The unique identifier of the transit gateway attachment that was accepted.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_status
    #   <p>The current status of the transit gateway attachment. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The attachment is being created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The attachment is being deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The attachment has been deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The attachment creation has failed and cannot be recovered</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The attachment is in an error state that might be recoverable</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The attachment is active and processing traffic</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code> - The attachment is waiting to be accepted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTING</code> - The attachment is in the process of being rejected</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The attachment has been rejected</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AcceptNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A custom action to use in stateless rule actions settings. This is used in <a>CustomAction</a>.</p>
    # @!attribute publish_metric_action
    #   <p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
    #            matching packet. This setting defines a CloudWatch dimension value to be published.</p>
    #            <p>You can pair this custom action with any of the standard stateless rule actions. For
    #            example, you could pair this in a rule action with the standard action that forwards the
    #            packet for stateful inspection. Then, when a packet matches the rule, Network Firewall
    #            publishes metrics for the packet and forwards it. </p>
    #   @return [Types::PublishMetricAction]
    class ActionDefinition < Struct.new(
      :publish_metric_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single IP address specification. This is used in the <a>MatchAttributes</a> source and destination specifications.</p>
    # @!attribute address_definition
    #   <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4 and IPv6. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #   @return [String]
    class Address < Struct.new(
      :address_definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A report that captures key activity from the last 30 days of network traffic monitored by your firewall.</p>
    #          <p>You can generate up to one report per traffic type, per 30 day period. For example, when you successfully create an HTTP traffic report, 
    #          you cannot create another HTTP traffic report until 30 days pass. Alternatively, if you generate a report that combines metrics on both HTTP 
    #          and HTTPS traffic, you cannot create another report for either traffic type until 30 days pass.</p>
    # @!attribute analysis_report_id
    #   <p>The unique ID of the query that ran when you requested an analysis report. </p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of traffic that will be used to generate a report. </p>
    #   @return [String]
    # @!attribute report_time
    #   <p>The date and time the analysis report was ran. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the analysis report you specify. Statuses include <code>RUNNING</code>, <code>COMPLETED</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    class AnalysisReport < Struct.new(
      :analysis_report_id,
      :analysis_type,
      :report_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The analysis result for Network Firewall's stateless rule group analyzer. Every time you call <a>CreateRuleGroup</a>, <a>UpdateRuleGroup</a>, or <a>DescribeRuleGroup</a> on a stateless rule group, Network Firewall analyzes the stateless rule groups in your account and identifies the rules that might adversely effect your firewall's functionality. For example, if Network Firewall detects a rule that's routing traffic asymmetrically, which impacts the service's ability to properly process traffic, the service includes the rule in a list of analysis results.</p>
    #          <p>The <code>AnalysisResult</code> data type is not related to traffic analysis reports you generate using <a>StartAnalysisReport</a>. For information on traffic analysis report results, see <a>AnalysisTypeReportResult</a>.</p>
    # @!attribute identified_rule_ids
    #   <p>The priority number of the stateless rules identified in the analysis.</p>
    #   @return [Array<String>]
    # @!attribute identified_type
    #   <p>The types of rule configurations that Network Firewall analyzes your rule groups for. Network Firewall analyzes stateless rule groups for the following types of rule configurations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>STATELESS_RULE_FORWARDING_ASYMMETRICALLY</code>
    #                  </p>
    #                  <p>Cause: One or more stateless rules with the action <code>pass</code> or <code>forward</code> are forwarding traffic asymmetrically. Specifically, the rule's set of source IP addresses  or their associated port numbers, don't match the set of destination IP addresses or their associated port numbers.</p>
    #                  <p>To mitigate: Make sure that there's an existing return path. For example, if the rule allows traffic from source 10.1.0.0/24 to destination 20.1.0.0/24, you should allow return traffic from source 20.1.0.0/24 to destination 10.1.0.0/24.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STATELESS_RULE_CONTAINS_TCP_FLAGS</code>
    #                  </p>
    #                  <p>Cause: At least one stateless rule with the action <code>pass</code> or<code>forward</code> contains TCP flags that are inconsistent in the forward and return directions.</p>
    #                  <p>To mitigate: Prevent asymmetric routing issues caused by TCP flags by following these actions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Remove unnecessary TCP flag inspections from the rules.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you need to inspect TCP flags, check that the rules correctly account for changes in TCP flags throughout the TCP connection cycle, for example <code>SYN</code> and <code>ACK</code> flags used in a 3-way TCP handshake.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute analysis_detail
    #   <p>Provides analysis details for the identified rule.</p>
    #   @return [String]
    class AnalysisResult < Struct.new(
      :identified_rule_ids,
      :identified_type,
      :analysis_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The results of a <code>COMPLETED</code> analysis report generated with <a>StartAnalysisReport</a>.</p>
    #          <p>For an example of traffic analysis report results, see the response syntax of <a>GetAnalysisReportResults</a>.</p>
    # @!attribute protocol
    #   <p>The type of traffic captured by the analysis report.</p>
    #   @return [String]
    # @!attribute first_accessed
    #   <p>The date and time any domain was first accessed (within the last 30 day period).</p>
    #   @return [Time]
    # @!attribute last_accessed
    #   <p>The date and time any domain was last accessed (within the last 30 day period).</p>
    #   @return [Time]
    # @!attribute domain
    #   <p>The most frequently accessed domains.</p>
    #   @return [String]
    # @!attribute hits
    #   <p>The number of attempts made to access a observed domain.</p>
    #   @return [Types::Hits]
    # @!attribute unique_sources
    #   <p>The number of unique source IP addresses that connected to a domain.</p>
    #   @return [Types::UniqueSources]
    class AnalysisTypeReportResult < Struct.new(
      :protocol,
      :first_accessed,
      :last_accessed,
      :domain,
      :hits,
      :unique_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>Required. The Availability Zones where you want to create firewall endpoints. You must specify at least one Availability Zone.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    class AssociateAvailabilityZonesRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>The Availability Zones where Network Firewall created firewall endpoints. Each mapping specifies an Availability Zone where the firewall processes traffic.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class AssociateAvailabilityZonesResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #   @return [String]
    class AssociateFirewallPolicyRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class AssociateFirewallPolicyResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :firewall_policy_arn,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that you want to associate with the firewall. </p>
    #   @return [Array<Types::SubnetMapping>]
    class AssociateSubnetsRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that are associated with the firewall. </p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class AssociateSubnetsResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The definition and status of the firewall endpoint for a single subnet. In each configured subnet, Network Firewall instantiates a firewall
    #          endpoint to handle network traffic. </p>
    #          <p>This data type is used for any firewall endpoint type: </p>
    #          <ul>
    #             <li>
    #                <p>For <code>Firewall.SubnetMappings</code>, this <code>Attachment</code> is part of the <code>FirewallStatus</code> sync states information. You define firewall subnets using <code>CreateFirewall</code> and <code>AssociateSubnets</code>. </p>
    #             </li>
    #             <li>
    #                <p>For <code>VpcEndpointAssociation</code>, this <code>Attachment</code> is part of the <code>VpcEndpointAssociationStatus</code> sync states information. You define these subnets using <code>CreateVpcEndpointAssociation</code>. </p>
    #             </li>
    #          </ul>
    # @!attribute subnet_id
    #   <p>The unique identifier of the subnet that you've specified to be used for a firewall endpoint. </p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The identifier of the firewall endpoint that Network Firewall has instantiated in the
    #            subnet. You use this to identify the firewall endpoint in the VPC route tables, when you
    #            redirect the VPC traffic through the endpoint. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the firewall endpoint instantiation in the subnet. </p>
    #            <p>When this value is <code>READY</code>, the endpoint is available to handle network traffic. Otherwise,
    #            this value reflects its state, for example <code>CREATING</code> or <code>DELETING</code>.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>If Network Firewall fails to create or delete the firewall endpoint in the subnet, it populates this with the reason for the error or failure and how to resolve it. 
    #            A <code>FAILED</code> status indicates a non-recoverable state, and a <code>ERROR</code> status indicates an issue that you can fix. 
    #            Depending on the error, it can take as many as 15 minutes to populate this field. For more information about the causes for failiure or errors and solutions available for this field, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html">Troubleshooting firewall endpoint failures</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [String]
    class Attachment < Struct.new(
      :subnet_id,
      :endpoint_id,
      :status,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the mapping between an Availability Zone and a firewall endpoint for a transit gateway-attached firewall. Each mapping represents where the firewall can process traffic. You use these mappings when calling <a>CreateFirewall</a>, <a>AssociateAvailabilityZones</a>, and <a>DisassociateAvailabilityZones</a>.</p>
    #          <p>To retrieve the current Availability Zone mappings for a firewall, use <a>DescribeFirewall</a>.</p>
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall endpoint is located. For example, <code>us-east-2a</code>. The Availability Zone must be in the same Region as the transit gateway.</p>
    #   @return [String]
    class AvailabilityZoneMapping < Struct.new(
      :availability_zone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about an Availability Zone where the firewall has an endpoint defined. </p>
    # @!attribute ip_address_type
    #   <p>The IP address type of the Firewall subnet in the Availability Zone. You can't change the IP address type after you create the subnet.</p>
    #   @return [String]
    class AvailabilityZoneMetadata < Struct.new(
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes the CIDR blocks used by the IP set references in a firewall. Network Firewall calculates the number of CIDRs by taking an aggregated count of all CIDRs used by the IP sets you are referencing.</p>
    # @!attribute available_cidr_count
    #   <p>The number of CIDR blocks available for use by the IP set references in a firewall.</p>
    #   @return [Integer]
    # @!attribute utilized_cidr_count
    #   <p>The number of CIDR blocks used by the IP set references in a firewall.</p>
    #   @return [Integer]
    # @!attribute ip_set_references
    #   <p>The list of the IP set references used by a firewall.</p>
    #   @return [Hash<String, Types::IPSetMetadata>]
    class CIDRSummary < Struct.new(
      :available_cidr_count,
      :utilized_cidr_count,
      :ip_set_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity usage summary of the resources used by the <a>ReferenceSets</a> in a firewall.</p>
    # @!attribute cid_rs
    #   <p>Describes the capacity usage of the CIDR blocks used by the IP set references in a firewall.</p>
    #   @return [Types::CIDRSummary]
    class CapacityUsageSummary < Struct.new(
      :cid_rs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the actions to take on the SSL/TLS connection if the certificate presented by the server in the connection has a revoked or unknown status.</p>
    # @!attribute revoked_status_action
    #   <p>Configures how Network Firewall processes traffic when it determines that the certificate presented by the server in the SSL/TLS connection has a revoked status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PASS</b> - Allow the connection to continue, and pass subsequent packets to the stateful engine for inspection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DROP</b> - Network Firewall closes the connection and drops subsequent packets for that connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECT</b> - Network Firewall sends a TCP reject packet back to your client. The service closes the connection and drops subsequent packets for that connection. <code>REJECT</code> is available only for TCP traffic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute unknown_status_action
    #   <p>Configures how Network Firewall processes traffic when it determines that the certificate presented by the server in the SSL/TLS connection has an unknown status, or a status that cannot be determined for any other reason, including when the service is unable to connect to the OCSP and CRL endpoints for the certificate.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PASS</b> - Allow the connection to continue, and pass subsequent packets to the stateful engine for inspection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DROP</b> - Network Firewall closes the connection and drops subsequent packets for that connection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECT</b> - Network Firewall sends a TCP reject packet back to your client. The service closes the connection and drops subsequent packets for that connection. <code>REJECT</code> is available only for TCP traffic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CheckCertificateRevocationStatusActions < Struct.new(
      :revoked_status_action,
      :unknown_status_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #   @return [String]
    # @!attribute firewall_policy
    #   <p>The rule groups and policy actions to use in the firewall policy.</p>
    #   @return [Types::FirewallPolicy]
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #   @return [Types::EncryptionConfiguration]
    class CreateFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :tags,
      :dry_run,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #   @return [Types::FirewallPolicyResponse]
    class CreateFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the <a>FirewallPolicy</a> that you want to
    #            use for the firewall.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC where Network Firewall should create the firewall. </p>
    #            <p>You can't change this setting after you create the firewall. </p>
    #   @return [String]
    # @!attribute subnet_mappings
    #   <p>The public subnets to use for your Network Firewall firewalls. Each subnet must belong to a
    #            different Availability Zone in the VPC. Network Firewall creates a firewall endpoint in each
    #            subnet. </p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall resources.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    #   @return [Array<String>]
    # @!attribute transit_gateway_id
    #   <p>Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through Resource Access Manager.</p>
    #            <important>
    #               <p>After creating the firewall, you cannot change the transit gateway association. To use a different transit gateway, you must create a new firewall.</p>
    #            </important>
    #            <p>For information about creating firewalls, see <a>CreateFirewall</a>. For specific guidance about transit gateway-attached firewalls, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tgw-firewall-considerations.html">Considerations for transit gateway-attached firewalls</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>Required. The Availability Zones where you want to create firewall endpoints for a transit gateway-attached firewall. You must specify at least one Availability Zone. Consider enabling the firewall in every Availability Zone where you have workloads to maintain Availability Zone independence.</p>
    #            <p>You can modify Availability Zones later using <a>AssociateAvailabilityZones</a> or <a>DisassociateAvailabilityZones</a>, but this may briefly disrupt traffic. The <code>AvailabilityZoneChangeProtection</code> setting controls whether you can make these modifications.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    # @!attribute availability_zone_change_protection
    #   <p>Optional. A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to <code>TRUE</code>, you cannot add or remove Availability Zones without first disabling this protection using <a>UpdateAvailabilityZoneChangeProtection</a>.</p>
    #            <p>Default value: <code>FALSE</code>
    #            </p>
    #   @return [Boolean]
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
      :availability_zone_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall
    #   <p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>
    #   @return [Types::Firewall]
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #            <p>The firewall status indicates a combined status. It indicates whether all subnets are up-to-date with the latest firewall configurations, which is based on the sync states config values, and also whether all subnets have their endpoints fully enabled, based on their sync states attachment values. </p>
    #   @return [Types::FirewallStatus]
    class CreateFirewallResponse < Struct.new(
      :firewall,
      :firewall_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #   @return [Types::RuleGroup]
    # @!attribute rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #            <note>
    #               <p>You can't change or exceed this capacity when you update the rule group, so leave
    #               room for your rule group to grow. </p>
    #            </note>
    #            <p>
    #               <b>Capacity for a stateless rule group</b>
    #            </p>
    #            <p>For a stateless rule group, the capacity required is the sum of the capacity
    #            requirements of the individual rules that you expect to have in the rule group. </p>
    #            <p>To calculate the capacity requirement of a single rule, multiply the capacity
    #            requirement values of each of the rule's match settings:</p>
    #            <ul>
    #               <li>
    #                  <p>A match setting with no criteria specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>A match setting with <code>Any</code> specified has a value of 1. </p>
    #               </li>
    #               <li>
    #                  <p>All other match settings have a value equal to the number of elements provided in
    #                  the setting. For example, a protocol setting ["UDP"] and a source setting
    #                  ["10.0.0.0/24"] each have a value of 1. A protocol setting ["UDP","TCP"] has a value
    #                  of 2. A source setting ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"] has a value of 3.
    #               </p>
    #               </li>
    #            </ul>
    #            <p>A rule with no criteria specified in any of its match settings has a capacity
    #            requirement of 1. A rule with protocol setting ["UDP","TCP"], source setting
    #            ["10.0.0.0/24","10.0.0.1/24","10.0.0.2/24"], and a single specification or no specification
    #            for each of the other match settings has a capacity requirement of 6. </p>
    #            <p>
    #               <b>Capacity for a stateful rule group</b>
    #            </p>
    #            <p>For a stateful rule group, the minimum capacity required is the number of individual rules that
    #            you expect to have in the rule group. </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #   @return [Types::SourceMetadata]
    # @!attribute analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis and then creates the rule group for you. To run the stateless rule group analyzer without creating the rule group, set <code>DryRun</code> to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute summary_configuration
    #   <p>An object that contains a <code>RuleOptions</code> array of strings. 
    #            You use <code>RuleOptions</code> to determine which of the following <a>RuleSummary</a> values are returned in response to <code>DescribeRuleGroupSummary</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Metadata</code> - returns</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Msg</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SID</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::SummaryConfiguration]
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
      :summary_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #   @return [Types::RuleGroupResponse]
    class CreateRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration
    #   <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #            <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #            <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    #   inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::TLSInspectionConfiguration]
    # @!attribute description
    #   <p>A description of the TLS inspection configuration. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::EncryptionConfiguration]
    class CreateTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_name,
      :tls_inspection_configuration,
      :description,
      :tags,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the TLS inspection configuration. The token marks the state of the TLS inspection configuration resource at the time of the request. </p>
    #            <p>To make changes to the TLS inspection configuration, you provide the token in your request. Network Firewall uses the token to ensure that the TLS inspection configuration hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the TLS inspection configuration again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_response
    #   <p>The high-level properties of a TLS inspection configuration. This, along with the <a>TLSInspectionConfiguration</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #   @return [Types::TLSInspectionConfigurationResponse]
    class CreateTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC where you want to create a firewall endpoint. </p>
    #   @return [String]
    # @!attribute subnet_mapping
    #   <p>The ID for a subnet that's used in an association with a firewall. This is used in
    #         <a>CreateFirewall</a>, <a>AssociateSubnets</a>, and <a>CreateVpcEndpointAssociation</a>. Network Firewall
    #            creates an instance of the associated firewall in each subnet that you specify, to filter
    #            traffic in the subnet's Availability Zone.</p>
    #   @return [Types::SubnetMapping]
    # @!attribute description
    #   <p>A description of the VPC endpoint association. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    class CreateVpcEndpointAssociationRequest < Struct.new(
      :firewall_arn,
      :vpc_id,
      :subnet_mapping,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_association
    #   <p>The configuration settings for the VPC endpoint association. These settings include the firewall and the VPC and subnet to use for the firewall endpoint. </p>
    #   @return [Types::VpcEndpointAssociation]
    # @!attribute vpc_endpoint_association_status
    #   <p>Detailed information about the current status of a <a>VpcEndpointAssociation</a>. You can retrieve this 
    #   by calling <a>DescribeVpcEndpointAssociation</a> and providing the VPC endpoint association ARN.</p>
    #   @return [Types::VpcEndpointAssociationStatus]
    class CreateVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An optional, non-standard action to use for stateless packet handling. You can define
    #          this in addition to the standard action that you must specify. </p>
    #          <p>You define and name the custom actions that you want to be able to use, and then you
    #          reference them by name in your actions settings. </p>
    #          <p>You can use custom actions in the following places: </p>
    #          <ul>
    #             <li>
    #                <p>In a rule group's <a>StatelessRulesAndCustomActions</a> specification.
    #                The custom actions are available for use by name inside the
    #                   <code>StatelessRulesAndCustomActions</code> where you define them. You can use
    #                them for your stateless rule actions to specify what to do with a packet that matches
    #                the rule's match attributes. </p>
    #             </li>
    #             <li>
    #                <p>In a <a>FirewallPolicy</a> specification, in
    #                   <code>StatelessCustomActions</code>. The custom actions are available for use
    #                inside the policy where you define them. You can use them for the policy's default
    #                stateless actions settings to specify what to do with packets that don't match any of
    #                the policy's stateless rules. </p>
    #             </li>
    #          </ul>
    # @!attribute action_name
    #   <p>The descriptive name of the custom action. You can't change the name of a custom action after you create it.</p>
    #   @return [String]
    # @!attribute action_definition
    #   <p>The custom action associated with the action name.</p>
    #   @return [Types::ActionDefinition]
    class CustomAction < Struct.new(
      :action_name,
      :action_definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DeleteFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_policy_response
    #   <p>The object containing the definition of the <a>FirewallPolicyResponse</a>
    #            that you asked to delete. </p>
    #   @return [Types::FirewallPolicyResponse]
    class DeleteFirewallPolicyResponse < Struct.new(
      :firewall_policy_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DeleteFirewallRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall
    #   <p>A firewall defines the behavior of a firewall, the main VPC where the firewall is used, the Availability Zones where the firewall can be used, and one subnet to use for a firewall endpoint within each of the Availability Zones. The Availability Zones are defined implicitly in the subnet specifications.</p>
    #            <p>In addition to the firewall endpoints that you define in this <code>Firewall</code> specification, you can create firewall endpoints in <code>VpcEndpointAssociation</code> resources for any VPC, in any Availability Zone where the firewall is already in use. </p>
    #            <p>The status of the firewall, for example whether it's ready to filter network traffic,
    #            is provided in the corresponding <a>FirewallStatus</a>. You can retrieve both
    #            the firewall and firewall status by calling <a>DescribeFirewall</a>.</p>
    #   @return [Types::Firewall]
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #            <p>The firewall status indicates a combined status. It indicates whether all subnets are up-to-date with the latest firewall configurations, which is based on the sync states config values, and also whether all subnets have their endpoints fully enabled, based on their sync states attachment values. </p>
    #   @return [Types::FirewallStatus]
    class DeleteFirewallResponse < Struct.new(
      :firewall,
      :firewall_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to delete.</p>
    #   @return [String]
    class DeleteNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>The ID of the transit gateway attachment that was deleted.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_status
    #   <p>The current status of the transit gateway attachment deletion process.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The attachment is being created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The attachment is being deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The attachment has been deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The attachment creation has failed and cannot be recovered</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The attachment is in an error state that might be recoverable</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The attachment is active and processing traffic</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code> - The attachment is waiting to be accepted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTING</code> - The attachment is in the process of being rejected</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The attachment has been rejected</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class DeleteNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to delete. </p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #   @return [Types::RuleGroupResponse]
    class DeleteRuleGroupResponse < Struct.new(
      :rule_group_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DeleteTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_inspection_configuration_response
    #   <p>The high-level properties of a TLS inspection configuration. This, along with the <a>TLSInspectionConfiguration</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #   @return [Types::TLSInspectionConfigurationResponse]
    class DeleteTLSInspectionConfigurationResponse < Struct.new(
      :tls_inspection_configuration_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    class DeleteVpcEndpointAssociationRequest < Struct.new(
      :vpc_endpoint_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_association
    #   <p>The configuration settings for the VPC endpoint association. These settings include the firewall and the VPC and subnet to use for the firewall endpoint. </p>
    #   @return [Types::VpcEndpointAssociation]
    # @!attribute vpc_endpoint_association_status
    #   <p>Detailed information about the current status of a <a>VpcEndpointAssociation</a>. You can retrieve this 
    #   by calling <a>DescribeVpcEndpointAssociation</a> and providing the VPC endpoint association ARN.</p>
    #   @return [Types::VpcEndpointAssociationStatus]
    class DeleteVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    class DescribeFirewallMetadataRequest < Struct.new(
      :firewall_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The readiness of the configured firewall to handle network traffic across all of the
    #            Availability Zones where you have it configured. This setting is <code>READY</code> only when
    #            the <code>ConfigurationSyncStateSummary</code> value is <code>IN_SYNC</code> and the
    #               <code>Attachment</code>
    #               <code>Status</code> values for all of the configured subnets are <code>READY</code>.
    #         </p>
    #   @return [String]
    # @!attribute supported_availability_zones
    #   <p>The Availability Zones that the firewall currently supports. This includes all Availability Zones for which 
    #          the firewall has a subnet defined. </p>
    #   @return [Hash<String, Types::AvailabilityZoneMetadata>]
    # @!attribute transit_gateway_attachment_id
    #   <p>The unique identifier of the transit gateway attachment associated with this firewall. This field is only present for transit gateway-attached firewalls.</p>
    #   @return [String]
    class DescribeFirewallMetadataResponse < Struct.new(
      :firewall_arn,
      :firewall_policy_arn,
      :description,
      :status,
      :supported_availability_zones,
      :transit_gateway_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DescribeFirewallPolicyRequest < Struct.new(
      :firewall_policy_name,
      :firewall_policy_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #   @return [Types::FirewallPolicyResponse]
    # @!attribute firewall_policy
    #   <p>The policy for the specified firewall policy. </p>
    #   @return [Types::FirewallPolicy]
    class DescribeFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response,
      :firewall_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DescribeFirewallRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall
    #   <p>The configuration settings for the firewall. These settings include the firewall policy and the subnets in your VPC to use for the firewall endpoints. </p>
    #   @return [Types::Firewall]
    # @!attribute firewall_status
    #   <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #            <p>The firewall status indicates a combined status. It indicates whether all subnets are up-to-date with the latest firewall configurations, which is based on the sync states config values, and also whether all subnets have their endpoints fully enabled, based on their sync states attachment values. </p>
    #   @return [Types::FirewallStatus]
    class DescribeFirewallResponse < Struct.new(
      :update_token,
      :firewall,
      :firewall_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    class DescribeFlowOperationRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute flow_operation_type
    #   <p>Defines the type of <code>FlowOperation</code>.</p>
    #   @return [String]
    # @!attribute flow_operation_status
    #   <p>Returns the status of the flow operation. This string is returned in the responses to start, list, and describe commands.</p>
    #            <p>If the status is <code>COMPLETED_WITH_ERRORS</code>, results may be returned with any number of <code>Flows</code> missing from the response. 
    #   If the status is <code>FAILED</code>, <code>Flows</code> returned will be empty.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>If the asynchronous operation fails, Network Firewall populates this with the reason for the error or failure. Options include <code>Flow operation error</code> and <code>Flow timeout</code>.</p>
    #   @return [String]
    # @!attribute flow_request_timestamp
    #   <p>A timestamp indicating when the Suricata engine identified flows impacted by an operation. </p>
    #   @return [Time]
    # @!attribute flow_operation
    #   <p>Returns key information about a flow operation, such as related statuses, unique identifiers, and all filters defined in the operation.</p>
    #   @return [Types::FlowOperation]
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
      :flow_operation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DescribeLoggingConfigurationRequest < Struct.new(
      :firewall_arn,
      :firewall_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute enable_monitoring_dashboard
    #   <p>A boolean that reflects whether or not the firewall monitoring dashboard is enabled on a firewall.</p>
    #            <p>
    #            Returns <code>TRUE</code> when the firewall monitoring dashboard is enabled on the firewall. 
    #            Returns <code>FALSE</code> when the firewall monitoring dashboard is not enabled on the firewall.
    #         </p>
    #   @return [Boolean]
    class DescribeLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :logging_configuration,
      :enable_monitoring_dashboard,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group or firewall policy whose resource policy you want to retrieve. </p>
    #   @return [String]
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The IAM policy for the resource. </p>
    #   @return [String]
    class DescribeResourcePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #   @return [String]
    class DescribeRuleGroupMetadataRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_arn
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute description
    #   <p>Returns the metadata objects for the specified rule group.
    #         </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #   @return [Integer]
    # @!attribute stateful_rule_options
    #   <p>Additional options governing how Network Firewall handles the rule group. You can only use these for stateful rule groups.</p>
    #   @return [Types::StatefulRuleOptions]
    # @!attribute last_modified_time
    #   <p>A timestamp indicating when the rule group was last modified.</p>
    #   @return [Time]
    class DescribeRuleGroupMetadataResponse < Struct.new(
      :rule_group_arn,
      :rule_group_name,
      :description,
      :type,
      :capacity,
      :stateful_rule_options,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis.</p>
    #   @return [Boolean]
    class DescribeRuleGroupRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      :analyze_rule_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute rule_group
    #   <p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #            <p>Network Firewall uses a rule group to inspect and control network traffic.
    #       You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    #       traffic flow. </p>
    #            <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from
    #       more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>
    #   @return [Types::RuleGroup]
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #   @return [Types::RuleGroupResponse]
    class DescribeRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group,
      :rule_group_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_arn
    #   <p>Required. The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of rule group you want a summary for. This is a required field.</p>
    #            <p>Valid value: <code>STATEFUL</code>
    #            </p>
    #            <p>Note that <code>STATELESS</code> exists but is not currently supported. If you provide <code>STATELESS</code>, an exception is returned.</p>
    #   @return [String]
    class DescribeRuleGroupSummaryRequest < Struct.new(
      :rule_group_name,
      :rule_group_arn,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #   @return [String]
    # @!attribute summary
    #   <p>A complex type that contains rule information based on the rule group's configured summary settings. The content varies depending on the fields that you specified to extract in your SummaryConfiguration. When you haven't configured any summary settings, this returns an empty array. The response might include:</p>
    #            <ul>
    #               <li>
    #                  <p>Rule identifiers</p>
    #               </li>
    #               <li>
    #                  <p>Rule descriptions</p>
    #               </li>
    #               <li>
    #                  <p>Any metadata fields that you specified in your SummaryConfiguration</p>
    #               </li>
    #            </ul>
    #   @return [Types::Summary]
    class DescribeRuleGroupSummaryResponse < Struct.new(
      :rule_group_name,
      :description,
      :summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    class DescribeTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the TLS inspection configuration. The token marks the state of the TLS inspection configuration resource at the time of the request. </p>
    #            <p>To make changes to the TLS inspection configuration, you provide the token in your request. Network Firewall uses the token to ensure that the TLS inspection configuration hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the TLS inspection configuration again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute tls_inspection_configuration
    #   <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #            <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #            <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    #   inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::TLSInspectionConfiguration]
    # @!attribute tls_inspection_configuration_response
    #   <p>The high-level properties of a TLS inspection configuration. This, along with the <a>TLSInspectionConfiguration</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #   @return [Types::TLSInspectionConfigurationResponse]
    class DescribeTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration,
      :tls_inspection_configuration_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    class DescribeVpcEndpointAssociationRequest < Struct.new(
      :vpc_endpoint_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_endpoint_association
    #   <p>The configuration settings for the VPC endpoint association. These settings include the firewall and the VPC and subnet to use for the firewall endpoint. </p>
    #   @return [Types::VpcEndpointAssociation]
    # @!attribute vpc_endpoint_association_status
    #   <p>Detailed information about the current status of a <a>VpcEndpointAssociation</a>. You can retrieve this 
    #   by calling <a>DescribeVpcEndpointAssociation</a> and providing the VPC endpoint association ARN.</p>
    #   @return [Types::VpcEndpointAssociationStatus]
    class DescribeVpcEndpointAssociationResponse < Struct.new(
      :vpc_endpoint_association,
      :vpc_endpoint_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value to use in an Amazon CloudWatch custom metric dimension. This is used in the
    #             <code>PublishMetrics</code>
    #             <a>CustomAction</a>. A CloudWatch custom metric dimension is a name/value pair that's
    #          part of the identity of a metric. </p>
    #          <p>Network Firewall sets the dimension name to <code>CustomAction</code> and you provide the
    #          dimension value. </p>
    #          <p>For more information about CloudWatch custom metric dimensions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#usingDimensions">Publishing Custom Metrics</a> in the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html">Amazon CloudWatch User
    #             Guide</a>.</p>
    # @!attribute value
    #   <p>The value to use in the custom metric dimension.</p>
    #   @return [String]
    class Dimension < Struct.new(
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>Required. The Availability Zones to remove from the firewall's configuration.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    class DisassociateAvailabilityZonesRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>The remaining Availability Zones where the firewall has endpoints after the disassociation.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class DisassociateAvailabilityZonesResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :availability_zone_mappings,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifiers for the subnets that you want to disassociate. </p>
    #   @return [Array<String>]
    class DisassociateSubnetsRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets that are associated with the firewall. </p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class DisassociateSubnetsResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :subnet_mappings,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @!attribute key_id
    #   <p>The ID of the Amazon Web Services Key Management Service (KMS) customer managed key. You can use any of the key identifiers that KMS supports, unless you're using a key that's managed by another account. If you're using a key managed by another account, then specify the key ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id">Key ID</a> in the <i>Amazon Web Services KMS Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of Amazon Web Services KMS key to use for encryption of your Network Firewall resources.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :key_id,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A firewall defines the behavior of a firewall, the main VPC where the firewall is used, the Availability Zones where the firewall can be used, and one subnet to use for a firewall endpoint within each of the Availability Zones. The Availability Zones are defined implicitly in the subnet specifications.</p>
    #          <p>In addition to the firewall endpoints that you define in this <code>Firewall</code> specification, you can create firewall endpoints in <code>VpcEndpointAssociation</code> resources for any VPC, in any Availability Zone where the firewall is already in use. </p>
    #          <p>The status of the firewall, for example whether it's ready to filter network traffic,
    #          is provided in the corresponding <a>FirewallStatus</a>. You can retrieve both
    #          the firewall and firewall status by calling <a>DescribeFirewall</a>.</p>
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>The relationship of firewall to firewall policy is many to one. Each firewall requires
    #            one firewall policy association, and you can use the same firewall policy for multiple
    #            firewalls. </p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC where the firewall is in use. </p>
    #   @return [String]
    # @!attribute subnet_mappings
    #   <p>The primary public subnets that Network Firewall is using for the firewall. Network Firewall creates a firewall endpoint in each subnet. Create a subnet mapping for each Availability Zone where you want to use the firewall.</p>
    #            <p>These subnets are all defined for a single, primary VPC, and each must belong to a different Availability Zone. Each of these subnets establishes the availability of the firewall in its Availability Zone. </p>
    #            <p>In addition to these subnets, you can define other endpoints for the firewall in <code>VpcEndpointAssociation</code> resources. You can define these additional endpoints for any VPC, and for any of the Availability Zones where the firewall resource already has a subnet mapping. VPC endpoint associations give you the ability to protect multiple VPCs using a single firewall, and to define multiple firewall endpoints for a VPC in a single Availability Zone. </p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_id
    #   <p>The unique identifier for the firewall. </p>
    #   @return [String]
    # @!attribute tags
    #   <p></p>
    #   @return [Array<Types::Tag>]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your firewall.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute number_of_associations
    #   <p>The number of <code>VpcEndpointAssociation</code> resources that use this firewall. </p>
    #   @return [Integer]
    # @!attribute enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    #   @return [Array<String>]
    # @!attribute transit_gateway_id
    #   <p>The unique identifier of the transit gateway associated with this firewall. This field is only present for transit gateway-attached firewalls.</p>
    #   @return [String]
    # @!attribute transit_gateway_owner_account_id
    #   <p>The Amazon Web Services account ID that owns the transit gateway. This may be different from the firewall owner's account ID when using a shared transit gateway.</p>
    #   @return [String]
    # @!attribute availability_zone_mappings
    #   <p>The Availability Zones where the firewall endpoints are created for a transit gateway-attached firewall. Each mapping specifies an Availability Zone where the firewall processes traffic.</p>
    #   @return [Array<Types::AvailabilityZoneMapping>]
    # @!attribute availability_zone_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to <code>TRUE</code>, you must first disable this protection before adding or removing Availability Zones.</p>
    #   @return [Boolean]
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
      :availability_zone_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delete_protection] = false unless options.key?(:delete_protection)
        options[:subnet_change_protection] = false unless options.key?(:subnet_change_protection)
        options[:firewall_policy_change_protection] = false unless options.key?(:firewall_policy_change_protection)
        options[:availability_zone_change_protection] = false unless options.key?(:availability_zone_change_protection)
        super
      end
    end

    # <p>High-level information about a firewall, returned by operations like create and
    #          describe. You can use the information provided in the metadata to retrieve and manage a
    #          firewall.</p>
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_id
    #   <p>The unique identifier of the transit gateway attachment associated with this firewall. This field is only present for transit gateway-attached firewalls.</p>
    #   @return [String]
    class FirewallMetadata < Struct.new(
      :firewall_name,
      :firewall_arn,
      :transit_gateway_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The firewall policy defines the behavior of a firewall using a collection of stateless
    #          and stateful rule groups and other settings. You can use one firewall policy for multiple
    #          firewalls. </p>
    #          <p>This, along with <a>FirewallPolicyResponse</a>, define the policy.
    #          You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>.</p>
    # @!attribute stateless_rule_group_references
    #   <p>References to the stateless rule groups that are used in the policy. These define the
    #            matching criteria in stateless rules. </p>
    #   @return [Array<Types::StatelessRuleGroupReference>]
    # @!attribute stateless_default_actions
    #   <p>The actions to take on a packet if it doesn't match any of the stateless rules in the
    #            policy. If you want non-matching packets to be forwarded for stateful inspection, specify
    #               <code>aws:forward_to_sfe</code>. </p>
    #            <p>You must specify one of the standard actions: <code>aws:pass</code>,
    #               <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
    #            custom actions that are compatible with your standard section choice.</p>
    #            <p>For example, you could specify <code>["aws:pass"]</code> or you could specify
    #               <code>["aws:pass", “customActionName”]</code>. For information about compatibility, see
    #            the custom action descriptions under <a>CustomAction</a>.</p>
    #   @return [Array<String>]
    # @!attribute stateless_fragment_default_actions
    #   <p>The actions to take on a fragmented UDP packet if it doesn't match any of the stateless
    #         rules in the policy. Network Firewall only manages UDP packet fragments and silently drops packet fragments for other protocols.
    #         If you want non-matching fragmented UDP packets to be forwarded for
    #            stateful inspection, specify <code>aws:forward_to_sfe</code>. </p>
    #            <p>You must specify one of the standard actions: <code>aws:pass</code>,
    #               <code>aws:drop</code>, or <code>aws:forward_to_sfe</code>. In addition, you can specify
    #            custom actions that are compatible with your standard section choice.</p>
    #            <p>For example, you could specify <code>["aws:pass"]</code> or you could specify
    #               <code>["aws:pass", “customActionName”]</code>. For information about compatibility, see
    #            the custom action descriptions under <a>CustomAction</a>.</p>
    #   @return [Array<String>]
    # @!attribute stateless_custom_actions
    #   <p>The custom action definitions that are available for use in the firewall policy's
    #               <code>StatelessDefaultActions</code> setting. You name each custom action that you
    #            define, and then you can use it by name in your default actions specifications.</p>
    #   @return [Array<Types::CustomAction>]
    # @!attribute stateful_rule_group_references
    #   <p>References to the stateful rule groups that are used in the policy. These define the
    #            inspection criteria in stateful rules. </p>
    #   @return [Array<Types::StatefulRuleGroupReference>]
    # @!attribute stateful_default_actions
    #   <p>The default actions to take on a packet that doesn't match any stateful rules. The stateful default action is optional,
    #            and is only valid when using the strict rule order.</p>
    #            <p>Valid values of the stateful default action:</p>
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
    #            <p>For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html">Strict evaluation order</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #   @return [Array<String>]
    # @!attribute stateful_engine_options
    #   <p>Additional options governing how Network Firewall handles stateful rules. The stateful
    #          rule groups that you use in your policy must have stateful rule options settings that are compatible with these settings.</p>
    #   @return [Types::StatefulEngineOptions]
    # @!attribute tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #   @return [String]
    # @!attribute policy_variables
    #   <p>Contains variables that you can use to override default Suricata settings in your firewall policy.</p>
    #   @return [Types::PolicyVariables]
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
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a firewall policy, returned by operations like create and
    #          describe. You can use the information provided in the metadata to retrieve and manage a
    #          firewall policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    # @!attribute name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #   @return [String]
    class FirewallPolicyMetadata < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <note>
    #               <p>If this response is for a create request that had <code>DryRun</code> set to
    #                  <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
    #               resource.</p>
    #            </note>
    #   @return [String]
    # @!attribute firewall_policy_id
    #   <p>The unique identifier for the firewall policy. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #   @return [String]
    # @!attribute firewall_policy_status
    #   <p>The current status of the firewall policy. You can retrieve this for a firewall policy
    #            by calling <a>DescribeFirewallPolicy</a> and providing the firewall policy's
    #            name or ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute consumed_stateless_rule_capacity
    #   <p>The number of capacity units currently consumed by the policy's stateless rules.</p>
    #   @return [Integer]
    # @!attribute consumed_stateful_rule_capacity
    #   <p>The number of capacity units currently consumed by the policy's stateful rules.</p>
    #   @return [Integer]
    # @!attribute number_of_associations
    #   <p>The number of firewalls that are associated with this firewall policy.</p>
    #   @return [Integer]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your firewall policy.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute last_modified_time
    #   <p>The last time that the firewall policy was changed.</p>
    #   @return [Time]
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
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the current status of a <a>Firewall</a>. You can retrieve this for a firewall by calling <a>DescribeFirewall</a> and providing the firewall name and ARN.</p>
    #          <p>The firewall status indicates a combined status. It indicates whether all subnets are up-to-date with the latest firewall configurations, which is based on the sync states config values, and also whether all subnets have their endpoints fully enabled, based on their sync states attachment values. </p>
    # @!attribute status
    #   <p>The readiness of the configured firewall to handle network traffic across all of the
    #            Availability Zones where you have it configured. This setting is <code>READY</code> only when
    #            the <code>ConfigurationSyncStateSummary</code> value is <code>IN_SYNC</code> and the
    #               <code>Attachment</code>
    #               <code>Status</code> values for all of the configured subnets are <code>READY</code>.
    #         </p>
    #   @return [String]
    # @!attribute configuration_sync_state_summary
    #   <p>The configuration sync state for the firewall. This summarizes the <code>Config</code> 
    #                  settings in the <code>SyncStates</code> for this firewall status object. </p>
    #            <p>When you create a firewall or update its configuration, for example by adding a rule
    #            group to its firewall policy, Network Firewall distributes the configuration changes to all
    #            Availability Zones that have subnets defined for the firewall. This summary indicates whether the configuration
    #            changes have been applied everywhere. </p>
    #            <p>This status must be <code>IN_SYNC</code> for the firewall to be ready for use, but it
    #            doesn't indicate that the firewall is ready. The <code>Status</code> setting indicates
    #            firewall readiness. It's based on this setting and the readiness of the firewall endpoints to take traffic. </p>
    #   @return [String]
    # @!attribute sync_states
    #   <p>Status for the subnets that you've configured in the firewall. This contains
    #         one array element per Availability Zone where you've configured a subnet in the firewall. </p>
    #            <p>These objects provide detailed information for the settings 
    #     <code>ConfigurationSyncStateSummary</code> and <code>Status</code>. </p>
    #   @return [Hash<String, Types::SyncState>]
    # @!attribute capacity_usage_summary
    #   <p>Describes the capacity usage of the resources contained in a firewall's reference sets. Network Firewall calculates the capacity usage by taking an aggregated count of all of the resources used by all of the reference sets in a firewall.</p>
    #   @return [Types::CapacityUsageSummary]
    # @!attribute transit_gateway_attachment_sync_state
    #   <p>The synchronization state of the transit gateway attachment. This indicates whether the firewall's transit gateway configuration is properly synchronized and operational. Use this to verify that your transit gateway configuration changes have been applied.</p>
    #   @return [Types::TransitGatewayAttachmentSyncState]
    class FirewallStatus < Struct.new(
      :status,
      :configuration_sync_state_summary,
      :sync_states,
      :capacity_usage_summary,
      :transit_gateway_attachment_sync_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Any number of arrays, where each array is a single flow identified in the scope of the operation. 
    # If multiple flows were in the scope of the operation, multiple <code>Flows</code> arrays are returned.</p>
    # @!attribute source_address
    #   <p>A single IP address specification. This is used in the <a>MatchAttributes</a> source and destination specifications.</p>
    #   @return [Types::Address]
    # @!attribute destination_address
    #   <p>A single IP address specification. This is used in the <a>MatchAttributes</a> source and destination specifications.</p>
    #   @return [Types::Address]
    # @!attribute source_port
    #   <p>The source port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocols to inspect for, specified using the assigned internet protocol number (IANA) 
    #    for each protocol. If not specified, this matches with any protocol.</p>
    #   @return [String]
    # @!attribute age
    #   <p>Returned as info about age of the flows identified by the flow operation.</p>
    #   @return [Integer]
    # @!attribute packet_count
    #   <p>Returns the total number of data packets received or transmitted in a flow.</p>
    #   @return [Integer]
    # @!attribute byte_count
    #   <p>Returns the number of bytes received or transmitted in a specific flow.</p>
    #   @return [Integer]
    class Flow < Struct.new(
      :source_address,
      :destination_address,
      :source_port,
      :destination_port,
      :protocol,
      :age,
      :packet_count,
      :byte_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:byte_count] = 0 unless options.key?(:byte_count)
        super
      end
    end

    # <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    # @!attribute source_address
    #   <p>A single IP address specification. This is used in the <a>MatchAttributes</a> source and destination specifications.</p>
    #   @return [Types::Address]
    # @!attribute destination_address
    #   <p>A single IP address specification. This is used in the <a>MatchAttributes</a> source and destination specifications.</p>
    #   @return [Types::Address]
    # @!attribute source_port
    #   <p>The source port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    # @!attribute protocols
    #   <p>The protocols to inspect for, specified using the assigned internet protocol number (IANA) 
    #    for each protocol. If not specified, this matches with any protocol.</p>
    #   @return [Array<String>]
    class FlowFilter < Struct.new(
      :source_address,
      :destination_address,
      :source_port,
      :destination_port,
      :protocols,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a flow operation, such as related statuses, unique identifiers, and all filters defined in the operation.</p>
    #          <p>Flow operations let you manage the flows tracked in the flow table, also known as the firewall table.</p>
    #          <p>A flow is network traffic that is monitored by a firewall, either by stateful or stateless rules. 
    # For traffic to be considered part of a flow, it must share Destination, DestinationPort, Direction, Protocol, Source, and SourcePort. </p>
    # @!attribute minimum_flow_age_in_seconds
    #   <p>The reqested <code>FlowOperation</code> ignores flows with an age (in seconds) lower than <code>MinimumFlowAgeInSeconds</code>. 
    #   You provide this for start commands.</p>
    #   @return [Integer]
    # @!attribute flow_filters
    #   <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [Array<Types::FlowFilter>]
    class FlowOperation < Struct.new(
      :minimum_flow_age_in_seconds,
      :flow_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An array of objects with metadata about the requested <code>FlowOperation</code>.</p>
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute flow_operation_type
    #   <p>Defines the type of <code>FlowOperation</code>.</p>
    #   @return [String]
    # @!attribute flow_request_timestamp
    #   <p>A timestamp indicating when the Suricata engine identified flows impacted by an operation. </p>
    #   @return [Time]
    # @!attribute flow_operation_status
    #   <p>Returns the status of the flow operation. This string is returned in the responses to start, list, and describe commands.</p>
    #            <p>If the status is <code>COMPLETED_WITH_ERRORS</code>, results may be returned with any number of <code>Flows</code> missing from the response. 
    #   If the status is <code>FAILED</code>, <code>Flows</code> returned will be empty.</p>
    #   @return [String]
    class FlowOperationMetadata < Struct.new(
      :flow_operation_id,
      :flow_operation_type,
      :flow_request_timestamp,
      :flow_operation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the amount of time that can pass without any traffic sent through the firewall before the firewall determines that the connection is idle and Network Firewall removes the flow entry from its flow table. 
    #           Existing connections and flows are not impacted when you update this value. Only new connections after you update this value are impacted.
    #      </p>
    # @!attribute tcp_idle_timeout_seconds
    #   <p>The number of seconds that can pass without any TCP traffic sent through the firewall before the firewall determines that the connection is idle.
    #           After the idle timeout passes, data packets are dropped, however, the next TCP SYN packet is considered a new flow and is processed by the firewall. 
    #           Clients or targets can use TCP keepalive packets to reset the idle timeout.
    #            </p>
    #            <p>You can define the <code>TcpIdleTimeoutSeconds</code> value to be between 60 and 6000 seconds. If no value is provided, it defaults to 350 seconds.
    #         </p>
    #   @return [Integer]
    class FlowTimeouts < Struct.new(
      :tcp_idle_timeout_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute analysis_report_id
    #   <p>The unique ID of the query that ran when you requested an analysis report. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class GetAnalysisReportResultsRequest < Struct.new(
      :firewall_name,
      :analysis_report_id,
      :firewall_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the analysis report you specify. Statuses include <code>RUNNING</code>, <code>COMPLETED</code>, or <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The date and time within the last 30 days from which to start retrieving analysis data, 
    #      in UTC format (for example, <code>YYYY-MM-DDTHH:MM:SSZ</code>. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time, up to the current date, from which to stop retrieving analysis data, 
    #      in UTC format (for example, <code>YYYY-MM-DDTHH:MM:SSZ</code>). </p>
    #   @return [Time]
    # @!attribute report_time
    #   <p>The date and time the analysis report was ran. </p>
    #   @return [Time]
    # @!attribute analysis_type
    #   <p>The type of traffic that will be used to generate a report. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute analysis_report_results
    #   <p>Retrieves the results of a traffic analysis report.</p>
    #   @return [Array<Types::AnalysisTypeReportResult>]
    class GetAnalysisReportResultsResponse < Struct.new(
      :status,
      :start_time,
      :end_time,
      :report_time,
      :analysis_type,
      :next_token,
      :analysis_report_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The basic rule criteria for Network Firewall to use to inspect packet headers in stateful
    #          traffic flow inspection. Traffic flows that match the criteria are a match for the
    #          corresponding <a>StatefulRule</a>. </p>
    # @!attribute protocol
    #   <p>The protocol to inspect for. To specify all, you can use <code>IP</code>, because all traffic on Amazon Web Services and on the internet is IP.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source IP address or address range to inspect for, in CIDR notation.
    #             To match with any address, specify <code>ANY</code>. </p>
    #            <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4 and IPv6. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #   @return [String]
    # @!attribute source_port
    #   <p>The source port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>The direction of traffic flow to inspect. If set to <code>ANY</code>, the inspection
    #            matches bidirectional traffic, both from the source to the destination and from the
    #            destination to the source. If set to <code>FORWARD</code>, the inspection only matches
    #            traffic going from the source to the destination. </p>
    #   @return [String]
    # @!attribute destination
    #   <p>The destination IP address or address range to inspect for, in CIDR notation.
    #             To match with any address, specify <code>ANY</code>. </p>
    #            <p>Specify an IP address or a block of IP addresses in Classless Inter-Domain Routing (CIDR) notation. Network Firewall supports all address ranges for IPv4 and IPv6. </p>
    #            <p>Examples: </p>
    #            <ul>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 192.0.2.44, specify <code>192.0.2.44/32</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 192.0.2.0 to 192.0.2.255, specify <code>192.0.2.0/24</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify <code>1111:0000:0000:0000:0000:0000:0000:0111/128</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To configure Network Firewall to inspect for IP addresses from 1111:0000:0000:0000:0000:0000:0000:0000 to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify <code>1111:0000:0000:0000:0000:0000:0000:0000/64</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
    #            Inter-Domain Routing</a>.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #   @return [String]
    class Header < Struct.new(
      :protocol,
      :source,
      :source_port,
      :direction,
      :destination,
      :destination_port,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Attempts made to a access domain.</p>
    # @!attribute count
    #   <p>The number of attempts made to access a domain.</p>
    #   @return [Integer]
    class Hits < Struct.new(
      :count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>A list of IP addresses and address ranges, in CIDR notation. This is part of a <a>RuleVariables</a>. </p>
    # @!attribute definition
    #   <p>The list of IP addresses and address ranges, in CIDR notation.
    #            
    #         </p>
    #   @return [Array<String>]
    class IPSet < Struct.new(
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>General information about the IP set.</p>
    # @!attribute resolved_cidr_count
    #   <p>Describes the total number of CIDR blocks currently in use by the IP set references in a firewall. To determine how many CIDR blocks are available for you to use in a firewall, you can call <code>AvailableCIDRCount</code>.</p>
    #   @return [Integer]
    class IPSetMetadata < Struct.new(
      :resolved_cidr_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configures one or more IP set references for a Suricata-compatible rule group. This is used in <a>CreateRuleGroup</a> or <a>UpdateRuleGroup</a>. An IP set reference is a rule variable that references resources that you create and manage in another Amazon Web Services service, such as an Amazon VPC prefix list. Network Firewall IP set references enable you to dynamically update the contents of your rules. When you create, update, or delete the resource you are referencing in your rule, Network Firewall automatically updates the rule's content with the changes. For more information about IP set references in Network Firewall, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references">Using IP set references</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #          <p>
    #         Network Firewall currently supports <a href="https://docs.aws.amazon.com/vpc/latest/userguide/managed-prefix-lists.html">Amazon VPC prefix lists</a> and <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/rule-groups-ip-set-references.html#rule-groups-referencing-resource-groups">resource groups</a> in IP set references.
    #       </p>
    # @!attribute reference_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you are referencing in your rule group.</p>
    #   @return [String]
    class IPSetReference < Struct.new(
      :reference_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services doesn't currently have enough available capacity to fulfill your request. Try your
    #          request later. </p>
    # @!attribute message
    #   @return [String]
    class InsufficientCapacityException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request is valid, but Network Firewall couldn't perform the operation because of a
    #          system problem. Retry your request. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerError < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because it's not valid. For example, you might have tried to delete
    #          a rule group or firewall policy that's in use.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because of a problem with your request. Examples include: </p>
    #          <ul>
    #             <li>
    #                <p>You specified an unsupported parameter name or value.</p>
    #             </li>
    #             <li>
    #                <p>You tried to update a property with a value that isn't among the available
    #                types.</p>
    #             </li>
    #             <li>
    #                <p>Your request references an ARN that is malformed, or corresponds to a resource
    #                that isn't valid in the context of the request.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The policy statement failed validation.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourcePolicyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The token you provided is stale or isn't valid for the operation. </p>
    # @!attribute message
    #   @return [String]
    class InvalidTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to perform the operation because doing so would violate a limit setting. </p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListAnalysisReportsRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_reports
    #   <p>The <code>id</code> and <code>ReportTime</code> associated with a requested analysis report. Does not provide the status of the analysis report. </p>
    #   @return [Array<Types::AnalysisReport>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListAnalysisReportsResponse < Struct.new(
      :analysis_reports,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListFirewallPoliciesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute firewall_policies
    #   <p>The metadata for the firewall policies. Depending on your setting for max results and
    #            the number of firewall policies that you have, this might not be the full list. </p>
    #   @return [Array<Types::FirewallPolicyMetadata>]
    class ListFirewallPoliciesResponse < Struct.new(
      :next_token,
      :firewall_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute vpc_ids
    #   <p>The unique identifiers of the VPCs that you want Network Firewall to retrieve the firewalls
    #            for. Leave this blank to retrieve all firewalls that you have defined.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListFirewallsRequest < Struct.new(
      :next_token,
      :vpc_ids,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute firewalls
    #   <p>The firewall metadata objects for the VPCs that you specified. Depending on your setting
    #            for max results and the number of firewalls you have, a single call might not be the full
    #            list. </p>
    #   @return [Array<Types::FirewallMetadata>]
    class ListFirewallsResponse < Struct.new(
      :next_token,
      :firewalls,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    class ListFlowOperationResultsRequest < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :next_token,
      :max_results,
      :availability_zone,
      :vpc_endpoint_id,
      :vpc_endpoint_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p></p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p></p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute flow_operation_status
    #   <p>Returns the status of the flow operation. This string is returned in the responses to start, list, and describe commands.</p>
    #            <p>If the status is <code>COMPLETED_WITH_ERRORS</code>, results may be returned with any number of <code>Flows</code> missing from the response. 
    #   If the status is <code>FAILED</code>, <code>Flows</code> returned will be empty.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>If the asynchronous operation fails, Network Firewall populates this with the reason for the error or failure. 
    #            Options include <code>Flow operation error</code> and <code>Flow timeout</code>.</p>
    #   @return [String]
    # @!attribute flow_request_timestamp
    #   <p>A timestamp indicating when the Suricata engine identified flows impacted by an operation. </p>
    #   @return [Time]
    # @!attribute flows
    #   <p>Any number of arrays, where each array is a single flow identified in the scope of the operation. 
    #   If multiple flows were in the scope of the operation, multiple <code>Flows</code> arrays are returned.</p>
    #   @return [Array<Types::Flow>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
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
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_type
    #   <p>An optional string that defines whether any or all operation types are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListFlowOperationsRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :flow_operation_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_operations
    #   <p>Flow operations let you manage the flows tracked in the flow table, also known as the firewall table.</p>
    #            <p>A flow is network traffic that is monitored by a firewall, either by stateful or stateless rules. 
    #   For traffic to be considered part of a flow, it must share Destination, DestinationPort, Direction, Protocol, Source, and SourcePort. </p>
    #   @return [Array<Types::FlowOperationMetadata>]
    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    class ListFlowOperationsResponse < Struct.new(
      :flow_operations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute scope
    #   <p>The scope of the request. The default setting of <code>ACCOUNT</code> or a setting of
    #            <code>NULL</code> returns all of the rule groups in your account. A setting of
    #            <code>MANAGED</code> returns all available managed rule groups.</p>
    #   @return [String]
    # @!attribute managed_type
    #   <p>Indicates the general category of the Amazon Web Services managed rule group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains stateless rules. If it is stateful, it contains stateful rules.</p>
    #   @return [String]
    class ListRuleGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :scope,
      :managed_type,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute rule_groups
    #   <p>The rule group metadata objects that you've defined. Depending on your setting for max
    #            results and the number of rule groups, this might not be the full list. </p>
    #   @return [Array<Types::RuleGroupMetadata>]
    class ListRuleGroupsResponse < Struct.new(
      :next_token,
      :rule_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    class ListTLSInspectionConfigurationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute tls_inspection_configurations
    #   <p>The TLS inspection configuration metadata objects that you've defined. Depending on your setting for max results and the number of TLS inspection configurations, this might not be the full list.</p>
    #   @return [Array<Types::TLSInspectionConfigurationMetadata>]
    class ListTLSInspectionConfigurationsResponse < Struct.new(
      :next_token,
      :tls_inspection_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :next_token,
      :max_results,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are associated with the resource. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that you want Network Firewall to return for this request. If more
    #             objects are available, in the response, Network Firewall provides a
    #            <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #   @return [Integer]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>If you don't specify this, Network Firewall retrieves all VPC endpoint associations that you have defined.</p>
    #   @return [String]
    class ListVpcEndpointAssociationsRequest < Struct.new(
      :next_token,
      :max_results,
      :firewall_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When you request a list of objects with a <code>MaxResults</code> setting, if the number of objects that are still available
    #            for retrieval exceeds the maximum you requested, Network Firewall returns a <code>NextToken</code>
    #            value in the response. To retrieve the next batch of objects, use the token returned from the prior request in your next request.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_associations
    #   <p>The VPC endpoint assocation metadata objects for the firewall that you specified. If you didn't
    #              specify a firewall, this is all VPC endpoint associations that you have defined. </p>
    #            <p>Depending on your setting
    #            for max results and the number of firewalls you have, a single call might not be the full
    #            list. </p>
    #   @return [Array<Types::VpcEndpointAssociationMetadata>]
    class ListVpcEndpointAssociationsResponse < Struct.new(
      :next_token,
      :vpc_endpoint_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines where Network Firewall sends logs for the firewall for one log type. This is used
    #          in <a>LoggingConfiguration</a>. You can send each type of log to an Amazon S3 bucket, a CloudWatch log group, or a Firehose delivery stream.</p>
    #          <p>Network Firewall generates logs for stateful rule groups. You can save alert, flow, and TLS log
    #           types. </p>
    # @!attribute log_type
    #   <p>The type of log to record. You can record the following types of logs from your Network Firewall stateful engine.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALERT</code> - Logs for traffic that matches your stateful rules and that have an action that sends an alert. A stateful rule sends alerts for the rule actions DROP, ALERT, and REJECT. For more information, see <a>StatefulRule</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FLOW</code> - Standard network traffic flow logs. The stateful rules engine records flow logs for all network traffic that it receives. Each flow log record captures the network flow for a specific standard stateless rule group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TLS</code> - Logs for events that are related to TLS inspection. For more information, see  
    #             <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-configurations.html">Inspecting SSL/TLS traffic with TLS inspection configurations</a> 
    #                 in the <i>Network Firewall Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute log_destination_type
    #   <p>The type of storage destination to send these logs to. You can send logs to an Amazon S3 bucket,
    #            a CloudWatch log group, or a Firehose delivery stream.</p>
    #   @return [String]
    # @!attribute log_destination
    #   <p>The named location for the logs, provided in a key:value mapping that is specific to the
    #            chosen destination type. </p>
    #            <ul>
    #               <li>
    #                  <p>For an Amazon S3 bucket, provide the name of the bucket, with key <code>bucketName</code>,
    #               and optionally provide a prefix, with key <code>prefix</code>. </p>
    #                  <p>The following example specifies an Amazon S3 bucket named <code>DOC-EXAMPLE-BUCKET</code> and the prefix <code>alerts</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "bucketName": "DOC-EXAMPLE-BUCKET", "prefix": "alerts"
    #                     }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a CloudWatch log group, provide the name of the CloudWatch log group, with key
    #                     <code>logGroup</code>. The following example specifies a log group named
    #                     <code>alert-log-group</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "logGroup": "alert-log-group" }</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>For a Firehose delivery stream, provide the name of the delivery stream, with key
    #                     <code>deliveryStream</code>. The following example specifies a delivery stream
    #                  named <code>alert-delivery-stream</code>: </p>
    #                  <p>
    #                     <code>"LogDestination": { "deliveryStream": "alert-delivery-stream"
    #                  }</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, String>]
    class LogDestinationConfig < Struct.new(
      :log_type,
      :log_destination_type,
      :log_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to send logs to a configured logging destination. </p>
    # @!attribute message
    #   @return [String]
    class LogDestinationPermissionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    # @!attribute log_destination_configs
    #   <p>Defines the logging destinations for the logs for a firewall. Network Firewall generates
    #            logs for stateful rule groups. </p>
    #   @return [Array<Types::LogDestinationConfig>]
    class LoggingConfiguration < Struct.new(
      :log_destination_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>
    # @!attribute sources
    #   <p>The source IP addresses and address ranges to inspect for, in CIDR notation. If not
    #            specified, this matches with any source address. </p>
    #   @return [Array<Types::Address>]
    # @!attribute destinations
    #   <p>The destination IP addresses and address ranges to inspect for, in CIDR notation. If not
    #            specified, this matches with any destination address. </p>
    #   @return [Array<Types::Address>]
    # @!attribute source_ports
    #   <p>The source port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #            <p> If not specified, this matches with any source port.</p>
    #            <p>This setting is only used for protocols 6 (TCP) and 17 (UDP).</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute destination_ports
    #   <p>The destination port to inspect for. You can specify an individual port, 
    #    for example <code>1994</code> and you can specify a port range, for example <code>1990:1994</code>. 
    #    To match with any port, specify <code>ANY</code>.</p>
    #            <p>This setting is only used for protocols 6 (TCP) and 17 (UDP). </p>
    #   @return [Array<Types::PortRange>]
    # @!attribute protocols
    #   <p>The protocols to inspect for, specified using the assigned internet protocol number (IANA) 
    #    for each protocol. If not specified, this matches with any protocol.</p>
    #   @return [Array<Integer>]
    # @!attribute tcp_flags
    #   <p>The TCP flags and masks to inspect for. If not specified, this matches with any
    #            settings. This setting is only used for protocol 6 (TCP).</p>
    #   @return [Array<Types::TCPFlagField>]
    class MatchAttributes < Struct.new(
      :sources,
      :destinations,
      :source_ports,
      :destination_ports,
      :protocols,
      :tcp_flags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides configuration status for a single policy or rule group that is used for a firewall endpoint. Network Firewall
    #          provides each endpoint with the rules that are configured in the firewall policy. Each time
    #          you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
    #           rules in the endpoint, so it can properly filter network traffic. This is part of a <a>SyncState</a> for a firewall.</p>
    # @!attribute sync_status
    #   <p>Indicates whether this object is in sync with the version indicated in the update token.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>The current version of the object that is either in sync or pending synchronization. </p>
    #   @return [String]
    class PerObjectStatus < Struct.new(
      :sync_status,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains variables that you can use to override default Suricata settings in your firewall policy.</p>
    # @!attribute rule_variables
    #   <p>The IPv4 or IPv6 addresses in CIDR notation to use for the Suricata <code>HOME_NET</code> variable. If your firewall uses an inspection VPC, you might want to override the <code>HOME_NET</code> variable with the CIDRs of your home networks. If you don't override <code>HOME_NET</code> with your own CIDRs, Network Firewall by default uses the CIDR of your inspection VPC.</p>
    #   @return [Hash<String, Types::IPSet>]
    class PolicyVariables < Struct.new(
      :rule_variables,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single port range specification. This is used for source and destination port ranges
    #          in the stateless rule <a>MatchAttributes</a>, <code>SourcePorts</code>, and
    #             <code>DestinationPorts</code> settings. </p>
    # @!attribute from_port
    #   <p>The lower limit of the port range. This must be less than or equal to the
    #               <code>ToPort</code> specification. </p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The upper limit of the port range. This must be greater than or equal to the
    #               <code>FromPort</code> specification. </p>
    #   @return [Integer]
    class PortRange < Struct.new(
      :from_port,
      :to_port,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:from_port] = 0 unless options.key?(:from_port)
        options[:to_port] = 0 unless options.key?(:to_port)
        super
      end
    end

    # <p>A set of port ranges for use in the rules in a rule group. </p>
    # @!attribute definition
    #   <p>The set of port ranges. 
    #         </p>
    #   @return [Array<String>]
    class PortSet < Struct.new(
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the
    #          matching packet. This setting defines a CloudWatch dimension value to be published.</p>
    # @!attribute dimensions
    #   <p></p>
    #   @return [Array<Types::Dimension>]
    class PublishMetricAction < Struct.new(
      :dimensions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the account that you want to share your Network Firewall resources with.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The IAM policy statement that lists the accounts that you want to share your Network Firewall resources with
    #              and the operations that you want the accounts to be able to perform. </p>
    #            <p>For a rule group resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:UpdateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListRuleGroups</p>
    #               </li>
    #            </ul>
    #            <p>For a firewall policy resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:AssociateFirewallPolicy</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListFirewallPolicies</p>
    #               </li>
    #            </ul>
    #            <p>For a firewall resource, you can specify the following operations in the Actions section of the statement:</p>
    #            <ul>
    #               <li>
    #                  <p>network-firewall:CreateVpcEndpointAssociation</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:DescribeFirewallMetadata</p>
    #               </li>
    #               <li>
    #                  <p>network-firewall:ListFirewalls</p>
    #               </li>
    #            </ul>
    #            <p>In the Resource section of the statement, you specify the ARNs for the Network Firewall resources that you want to share with the account that you specified in <code>Arn</code>.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class PutResourcePolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a set of IP set references.</p>
    # @!attribute ip_set_references
    #   <p>The list of IP set references.</p>
    #   @return [Hash<String, Types::IPSetReference>]
    class ReferenceSets < Struct.new(
      :ip_set_references,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>Required. The unique identifier of the transit gateway attachment to reject. This ID is returned in the response when creating a transit gateway-attached firewall.</p>
    #   @return [String]
    class RejectNetworkFirewallTransitGatewayAttachmentRequest < Struct.new(
      :transit_gateway_attachment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute transit_gateway_attachment_id
    #   <p>The unique identifier of the transit gateway attachment that was rejected.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_status
    #   <p>The current status of the transit gateway attachment. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The attachment is being created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The attachment is being deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The attachment has been deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The attachment creation has failed and cannot be recovered</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The attachment is in an error state that might be recoverable</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The attachment is active and processing traffic</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code> - The attachment is waiting to be accepted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTING</code> - The attachment is in the process of being rejected</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The attachment has been rejected</p>
    #               </li>
    #            </ul>
    #            <p>For information about troubleshooting endpoint failures, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html">Troubleshooting firewall endpoint failures</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [String]
    class RejectNetworkFirewallTransitGatewayAttachmentResponse < Struct.new(
      :transit_gateway_attachment_id,
      :transit_gateway_attachment_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to locate a resource using the parameters that you provided.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Unable to change the resource because your account doesn't own it. </p>
    # @!attribute message
    #   @return [String]
    class ResourceOwnerCheckException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The inspection criteria and action for a single stateless rule. Network Firewall inspects each packet for the specified matching
    #          criteria. When a packet matches the criteria, Network Firewall performs the rule's actions on
    #          the packet.</p>
    # @!attribute match_attributes
    #   <p>Criteria for Network Firewall to use to inspect an individual packet in stateless rule inspection. Each match attributes set can include one or more items such as IP address, CIDR range, port number, protocol, and TCP flags. </p>
    #   @return [Types::MatchAttributes]
    # @!attribute actions
    #   <p>The actions to take on a packet that matches one of the stateless rule definition's
    #            match attributes. You must specify a standard action and you can add custom actions. </p>
    #            <note>
    #               <p>Network Firewall only forwards a packet for stateful rule inspection if you specify
    #                  <code>aws:forward_to_sfe</code> for a rule that the packet matches, or if the packet
    #               doesn't match any stateless rule and you specify <code>aws:forward_to_sfe</code> for the
    #                  <code>StatelessDefaultActions</code> setting for the <a>FirewallPolicy</a>.</p>
    #            </note>
    #            <p>For every rule, you must specify exactly one of the following standard actions. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>aws:pass</b> - Discontinues all inspection of
    #                  the packet and permits it to go to its intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>aws:drop</b> - Discontinues all inspection of
    #                  the packet and blocks it from going to its intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>aws:forward_to_sfe</b> - Discontinues
    #                  stateless inspection of the packet and forwards it to the stateful rule engine for
    #                  inspection. </p>
    #               </li>
    #            </ul>
    #            <p>Additionally, you can specify a custom action.
    #            To
    #            do this, you define a custom action by name and type, then provide the name you've assigned
    #            to the action in this <code>Actions</code> setting. For information about the options, see
    #               <a>CustomAction</a>. </p>
    #            <p>To provide more than one action in this setting, separate the settings with a comma. For
    #            example, if you have a custom <code>PublishMetrics</code> action that you've named
    #               <code>MyMetricsAction</code>, then you could specify the standard action
    #               <code>aws:pass</code> and the custom action with <code>[“aws:pass”,
    #               “MyMetricsAction”]</code>. </p>
    #   @return [Array<String>]
    class RuleDefinition < Struct.new(
      :match_attributes,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that defines the rules in a rule group. This, along with <a>RuleGroupResponse</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #          <p>Network Firewall uses a rule group to inspect and control network traffic.
    #     You define stateless rule groups to inspect individual packets and you define stateful rule groups to inspect packets in the context of their
    #     traffic flow. </p>
    #          <p>To use a rule group, you include it by reference in an Network Firewall firewall policy, then you use the policy in a firewall. You can reference a rule group from
    #     more than one firewall policy, and you can use a firewall policy in more than one firewall. </p>
    # @!attribute rule_variables
    #   <p>Settings that are available for use in the rules in the rule group. You can only use
    #            these for stateful rule groups. </p>
    #   @return [Types::RuleVariables]
    # @!attribute reference_sets
    #   <p>The list of a rule group's reference sets.</p>
    #   @return [Types::ReferenceSets]
    # @!attribute rules_source
    #   <p>The stateful rules or stateless rules for the rule group. </p>
    #   @return [Types::RulesSource]
    # @!attribute stateful_rule_options
    #   <p>Additional options governing how Network Firewall handles stateful rules. The policies where you use your stateful
    #          rule group must have stateful rule options settings that are compatible with these settings. Some limitations apply; for more information, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-limitations-caveats.html">Strict evaluation order</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::StatefulRuleOptions]
    class RuleGroup < Struct.new(
      :rule_variables,
      :reference_sets,
      :rules_source,
      :stateful_rule_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a rule group, returned by <a>ListRuleGroups</a>.
    #          You can use the information provided in the metadata to retrieve and manage a
    #          rule group.</p>
    # @!attribute name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #   @return [String]
    class RuleGroupMetadata < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <note>
    #               <p>If this response is for a create request that had <code>DryRun</code> set to
    #                  <code>TRUE</code>, then this ARN is a placeholder that isn't attached to a valid
    #               resource.</p>
    #            </note>
    #   @return [String]
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #   @return [String]
    # @!attribute rule_group_id
    #   <p>The unique identifier for the rule group. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The maximum operating resources that this rule group can use. Rule group capacity is fixed at creation.
    #         When you update a rule group, you are limited to this capacity. When you reference a rule group
    #         from a firewall policy, Network Firewall reserves this capacity for the rule group. </p>
    #            <p>You can retrieve the capacity that would be required for a rule group before you create the rule group by calling
    #         <a>CreateRuleGroup</a> with <code>DryRun</code> set to <code>TRUE</code>. </p>
    #   @return [Integer]
    # @!attribute rule_group_status
    #   <p>Detailed information about the current status of a rule group. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute consumed_capacity
    #   <p>The number of capacity units currently consumed by the rule group rules. </p>
    #   @return [Integer]
    # @!attribute number_of_associations
    #   <p>The number of firewall policies that use this rule group.</p>
    #   @return [Integer]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your rule group.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to track the version updates made to the originating rule group.</p>
    #   @return [Types::SourceMetadata]
    # @!attribute sns_topic
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service SNS topic that's
    #   used to record changes to the managed rule group. You can subscribe to the SNS topic to receive
    #   notifications when the managed rule group is modified, such as for new versions and for version
    #   expiration. For more information, see the <a href="https://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon Simple Notification Service Developer Guide.</a>.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last time that the rule group was changed.</p>
    #   @return [Time]
    # @!attribute analysis_results
    #   <p>The list of analysis results for <code>AnalyzeRuleGroup</code>. If you set <code>AnalyzeRuleGroup</code> to <code>TRUE</code> in <a>CreateRuleGroup</a>, <a>UpdateRuleGroup</a>, or <a>DescribeRuleGroup</a>, Network Firewall analyzes the rule group and identifies the rules that might adversely effect your firewall's functionality. For example, if Network Firewall detects a rule that's routing traffic asymmetrically, which impacts the service's ability to properly process traffic, the service includes the rule in the list of analysis results.</p>
    #   @return [Array<Types::AnalysisResult>]
    # @!attribute summary_configuration
    #   <p>A complex type containing the currently selected rule option fields that will be displayed for rule summarization returned by <a>DescribeRuleGroupSummary</a>.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>RuleOptions</code> specified in <a>SummaryConfiguration</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Rule metadata organization preferences</p>
    #               </li>
    #            </ul>
    #   @return [Types::SummaryConfiguration]
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
      :summary_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional settings for a stateful rule. This is part of the <a>StatefulRule</a> configuration.</p>
    # @!attribute keyword
    #   <p>The keyword for the Suricata compatible rule option. You must include a <code>sid</code> (signature ID), and can optionally include other keywords. For information about Suricata compatible keywords, see <a href="https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html#rule-options">Rule options</a> in the Suricata documentation.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The settings of the Suricata compatible rule option. Rule options have zero or more setting values, and the number of possible and required settings depends on the <code>Keyword</code>. For more information about the settings for specific options, see <a href="https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html#rule-options">Rule options</a>.</p>
    #   @return [Array<String>]
    class RuleOption < Struct.new(
      :keyword,
      :settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type containing details about a Suricata rule. Contains:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>SID</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Msg</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Metadata</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Summaries are available for rule groups you manage and for active threat defense Amazon Web Services managed rule groups.</p>
    # @!attribute sid
    #   <p>The unique identifier (Signature ID) of the Suricata rule.</p>
    #   @return [String]
    # @!attribute msg
    #   <p>The contents taken from the rule's msg field.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The contents of the rule's metadata.</p>
    #   @return [String]
    class RuleSummary < Struct.new(
      :sid,
      :msg,
      :metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that are available for use in the rules in the <a>RuleGroup</a>
    #          where this is defined. See <a>CreateRuleGroup</a> or <a>UpdateRuleGroup</a> for usage.</p>
    # @!attribute ip_sets
    #   <p>A list of IP addresses and address ranges, in CIDR notation. </p>
    #   @return [Hash<String, Types::IPSet>]
    # @!attribute port_sets
    #   <p>A list of port ranges. </p>
    #   @return [Hash<String, Types::PortSet>]
    class RuleVariables < Struct.new(
      :ip_sets,
      :port_sets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The stateless or stateful rules definitions for use in a single rule group. Each rule
    #          group requires a single <code>RulesSource</code>. You can use an instance of this for
    #          either stateless rules or stateful rules. </p>
    # @!attribute rules_string
    #   <p>Stateful inspection criteria, provided in Suricata compatible rules. Suricata is an open-source threat detection framework that includes a standard
    #            rule-based language for network traffic inspection.</p>
    #            <p>These rules contain the inspection criteria and the action to take for traffic that
    #            matches the criteria, so this type of rule group doesn't have a separate action
    #            setting.</p>
    #            <note>
    #               <p>You can't use the <code>priority</code> keyword if the <code>RuleOrder</code> option in <a>StatefulRuleOptions</a> is set to  <code>STRICT_ORDER</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute rules_source_list
    #   <p>Stateful inspection criteria for a domain list rule group. </p>
    #   @return [Types::RulesSourceList]
    # @!attribute stateful_rules
    #   <p>An array of individual stateful rules inspection criteria to be used together in a stateful rule group.
    #          Use this option to specify simple Suricata rules with protocol, source and destination, ports, direction, and rule options.
    #          For information about the Suricata <code>Rules</code> format, see
    #                                           <a href="https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html">Rules Format</a>. </p>
    #   @return [Array<Types::StatefulRule>]
    # @!attribute stateless_rules_and_custom_actions
    #   <p>Stateless inspection criteria to be used in a stateless rule group. </p>
    #   @return [Types::StatelessRulesAndCustomActions]
    class RulesSource < Struct.new(
      :rules_string,
      :rules_source_list,
      :stateful_rules,
      :stateless_rules_and_custom_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Stateful inspection criteria for a domain list rule group. </p>
    #          <p>For HTTPS traffic, domain filtering is SNI-based. It uses the server name indicator extension of the TLS handshake.</p>
    #          <p>By default, Network Firewall domain list inspection only includes traffic coming from the VPC where you deploy the firewall. To inspect traffic from IP addresses outside of the deployment VPC, you set the <code>HOME_NET</code> rule variable to include the CIDR range of the deployment VPC plus the other CIDR ranges. For more information, see <a>RuleVariables</a> in this guide and 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/stateful-rule-groups-domain-names.html">Stateful domain list rule groups in Network Firewall</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @!attribute targets
    #   <p>The domains that you want to inspect for in your traffic flows. Valid domain specifications are the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Explicit names. For example, <code>abc.example.com</code> matches only the domain <code>abc.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Names that use a domain wildcard, which you indicate with an initial '<code>.</code>'. For example,<code>.example.com</code> matches <code>example.com</code> and matches all subdomains of <code>example.com</code>, such as <code>abc.example.com</code> and <code>www.example.com</code>. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute target_types
    #   <p>The protocols you want to inspect. Specify <code>TLS_SNI</code> for <code>HTTPS</code>. Specify <code>HTTP_HOST</code> for <code>HTTP</code>. You can specify either or both. </p>
    #   @return [Array<String>]
    # @!attribute generated_rules_type
    #   <p>Whether you want to allow or deny access to the domains in your target list.</p>
    #   @return [String]
    class RulesSourceList < Struct.new(
      :targets,
      :target_types,
      :generated_rules_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Any Certificate Manager (ACM) Secure Sockets Layer/Transport Layer Security (SSL/TLS) server certificate that's associated with a <a>ServerCertificateConfiguration</a>. Used in a <a>TLSInspectionConfiguration</a> for inspection of inbound traffic to your firewall. You must request or import a SSL/TLS certificate into ACM for each domain Network Firewall needs to decrypt and inspect. Network Firewall uses the SSL/TLS certificates to decrypt specified inbound SSL/TLS traffic going to your firewall. For information about working with certificates in Certificate Manager, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html">Request a public certificate </a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates</a> in the <i>Certificate Manager User Guide</i>.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Certificate Manager SSL/TLS server certificate that's used for inbound SSL/TLS inspection.</p>
    #   @return [String]
    class ServerCertificate < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the Certificate Manager certificates and scope that Network Firewall uses to decrypt and re-encrypt traffic using a <a>TLSInspectionConfiguration</a>. You can configure <code>ServerCertificates</code> for inbound SSL/TLS inspection, a <code>CertificateAuthorityArn</code> for outbound SSL/TLS inspection, or both. For information about working with certificates for TLS inspection, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html"> Using SSL/TLS server certficiates with TLS inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #          <note>
    #             <p>If a server certificate that's associated with your <a>TLSInspectionConfiguration</a> is revoked, deleted, or expired it can result in client-side TLS errors.</p>
    #          </note>
    # @!attribute server_certificates
    #   <p>The list of server certificates to use for inbound SSL/TLS inspection.</p>
    #   @return [Array<Types::ServerCertificate>]
    # @!attribute scopes
    #   <p>A list of scopes.</p>
    #   @return [Array<Types::ServerCertificateScope>]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection.</p>
    #            <p>The following limitations apply:</p>
    #            <ul>
    #               <li>
    #                  <p>You can use CA certificates that you imported into ACM, but you can't generate CA certificates with ACM.</p>
    #               </li>
    #               <li>
    #                  <p>You can't use certificates issued by Private Certificate Authority.</p>
    #               </li>
    #            </ul>
    #            <p>For more information about configuring certificates for outbound inspection, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html">Using SSL/TLS certificates with TLS inspection configurations</a> in the <i>Network Firewall Developer Guide</i>. </p>
    #            <p>For information about working with certificates in ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates</a> in the <i>Certificate Manager User Guide</i>.</p>
    #   @return [String]
    # @!attribute check_certificate_revocation_status
    #   <p>When enabled, Network Firewall checks if the server certificate presented by the server in the SSL/TLS connection has a revoked or unkown status. If the certificate has an unknown or revoked status, you must specify the actions that Network Firewall takes on outbound traffic. To check the certificate revocation status, you must also specify a <code>CertificateAuthorityArn</code> in <a>ServerCertificateConfiguration</a>.</p>
    #   @return [Types::CheckCertificateRevocationStatusActions]
    class ServerCertificateConfiguration < Struct.new(
      :server_certificates,
      :scopes,
      :certificate_authority_arn,
      :check_certificate_revocation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that define the Secure Sockets Layer/Transport Layer Security (SSL/TLS) traffic that Network Firewall should decrypt for inspection by the stateful rule engine.</p>
    # @!attribute sources
    #   <p>The source IP addresses and address ranges to decrypt for inspection, in CIDR notation. If not specified, this
    #   matches with any source address.</p>
    #   @return [Array<Types::Address>]
    # @!attribute destinations
    #   <p>The destination IP addresses and address ranges to decrypt for inspection, in CIDR notation. If not specified, this
    #   matches with any destination address.</p>
    #   @return [Array<Types::Address>]
    # @!attribute source_ports
    #   <p>The source ports to decrypt for inspection, in Transmission Control Protocol (TCP) format. If not specified, this matches with any source port.</p>
    #            <p>You can specify individual ports, for example <code>1994</code>, and you can specify port ranges, such as <code>1990:1994</code>.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute destination_ports
    #   <p>The destination ports to decrypt for inspection, in Transmission Control Protocol (TCP) format. If not specified, this matches with any destination port.</p>
    #            <p>You can specify individual ports, for example <code>1994</code>, and you can specify port ranges, such as <code>1990:1994</code>.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute protocols
    #   <p>The protocols to inspect for, specified using the assigned internet protocol number (IANA) 
    #    for each protocol. If not specified, this matches with any protocol.</p>
    #            <p>Network Firewall currently supports only TCP.</p>
    #   @return [Array<Integer>]
    class ServerCertificateScope < Struct.new(
      :sources,
      :destinations,
      :source_ports,
      :destination_ports,
      :protocols,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about the managed rule group that your own rule group is copied from. You can use the the metadata to track version updates made to the originating rule group. You can retrieve all objects for a rule group by calling <a href="https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html">DescribeRuleGroup</a>.</p>
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group that your own rule group is copied from.</p>
    #   @return [String]
    # @!attribute source_update_token
    #   <p>The update token of the Amazon Web Services managed rule group that your own rule group is copied from. To determine the update token for the managed rule group, call <a href="https://docs.aws.amazon.com/network-firewall/latest/APIReference/API_DescribeRuleGroup.html#networkfirewall-DescribeRuleGroup-response-UpdateToken">DescribeRuleGroup</a>.</p>
    #   @return [String]
    class SourceMetadata < Struct.new(
      :source_arn,
      :source_update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute analysis_type
    #   <p>The type of traffic that will be used to generate a report. </p>
    #   @return [String]
    class StartAnalysisReportRequest < Struct.new(
      :firewall_name,
      :firewall_arn,
      :analysis_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute analysis_report_id
    #   <p>The unique ID of the query that ran when you requested an analysis report. </p>
    #   @return [String]
    class StartAnalysisReportResponse < Struct.new(
      :analysis_report_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute minimum_flow_age_in_seconds
    #   <p>The reqested <code>FlowOperation</code> ignores flows with an age (in seconds) lower than <code>MinimumFlowAgeInSeconds</code>. 
    #   You provide this for start commands.</p>
    #            <note>
    #               <p>We recommend setting this value to at least 1 minute (60 seconds) to reduce chance of capturing flows that are not yet established.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute flow_filters
    #   <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [Array<Types::FlowFilter>]
    class StartFlowCaptureRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :minimum_flow_age_in_seconds,
      :flow_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute flow_operation_status
    #   <p>Returns the status of the flow operation. This string is returned in the responses to start, list, and describe commands.</p>
    #            <p>If the status is <code>COMPLETED_WITH_ERRORS</code>, results may be returned with any number of <code>Flows</code> missing from the response. 
    #   If the status is <code>FAILED</code>, <code>Flows</code> returned will be empty.</p>
    #   @return [String]
    class StartFlowCaptureResponse < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :flow_operation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The ID of the Availability Zone where the firewall is located. For example, <code>us-east-2a</code>.</p>
    #            <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>A unique identifier for the primary endpoint associated with a firewall.</p>
    #   @return [String]
    # @!attribute minimum_flow_age_in_seconds
    #   <p>The reqested <code>FlowOperation</code> ignores flows with an age (in seconds) lower than <code>MinimumFlowAgeInSeconds</code>. 
    #   You provide this for start commands.</p>
    #   @return [Integer]
    # @!attribute flow_filters
    #   <p>Defines the scope a flow operation. You can use up to 20 filters to configure a single flow operation.</p>
    #   @return [Array<Types::FlowFilter>]
    class StartFlowFlushRequest < Struct.new(
      :firewall_arn,
      :availability_zone,
      :vpc_endpoint_association_arn,
      :vpc_endpoint_id,
      :minimum_flow_age_in_seconds,
      :flow_filters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute flow_operation_id
    #   <p>A unique identifier for the flow operation. This ID is returned in the responses to start and list commands. You provide to describe commands.</p>
    #   @return [String]
    # @!attribute flow_operation_status
    #   <p>Returns the status of the flow operation. This string is returned in the responses to start, list, and describe commands.</p>
    #            <p>If the status is <code>COMPLETED_WITH_ERRORS</code>, results may be returned with any number of <code>Flows</code> missing from the response. 
    #   If the status is <code>FAILED</code>, <code>Flows</code> returned will be empty.</p>
    #   @return [String]
    class StartFlowFlushResponse < Struct.new(
      :firewall_arn,
      :flow_operation_id,
      :flow_operation_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the handling of the stateful rule groups in a firewall policy. </p>
    # @!attribute rule_order
    #   <p>Indicates how to manage the order of stateful rule evaluation for the policy. <code>STRICT_ORDER</code> is the
    #            recommended option, but <code>DEFAULT_ACTION_ORDER</code> is the default option. 
    #            With <code>STRICT_ORDER</code>, provide your rules in the order that you want them to be evaluated. 
    #            You can then choose one or more default actions for packets that don't match any rules. 
    #            Choose <code>STRICT_ORDER</code> to have the stateful rules engine determine the evaluation order of your rules. 
    #            The default action for this rule order is 
    #            <code>PASS</code>, followed by <code>DROP</code>, <code>REJECT</code>, and <code>ALERT</code> actions. 
    #            Stateful rules are provided to the rule engine as Suricata compatible strings, and Suricata evaluates them based on your settings. 
    #            For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html">Evaluation order for stateful rules</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #   @return [String]
    # @!attribute stream_exception_policy
    #   <p>Configures how Network Firewall processes traffic when a network connection breaks midstream. Network connections can break due to disruptions in external networks or within the firewall itself.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DROP</code> - Network Firewall fails closed and drops all subsequent traffic going to the firewall. This is the default behavior.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTINUE</code> - Network Firewall continues to apply rules to the subsequent traffic without context from traffic before the break. This impacts the behavior of rules that depend on this context. For example, if you have a stateful rule to <code>drop http</code> traffic, Network Firewall won't match the traffic for this rule because the service won't have the context from session initialization defining the application layer protocol as HTTP. However, this behavior is rule dependent—a TCP-layer rule using a <code>flow:stateless</code> rule would still match, as would the <code>aws:drop_strict</code> default action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECT</code> - Network Firewall fails closed and drops all subsequent traffic going to the firewall. Network Firewall also sends a TCP reject packet back to your client so that the client can immediately establish a new session. Network Firewall will have context about the new session and will apply rules to the subsequent traffic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute flow_timeouts
    #   <p>Configures the amount of time that can pass without any traffic sent through the firewall before the firewall determines that the connection is idle.
    #           </p>
    #   @return [Types::FlowTimeouts]
    class StatefulEngineOptions < Struct.new(
      :rule_order,
      :stream_exception_policy,
      :flow_timeouts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single Suricata rules specification, for use in a stateful rule group.
    #        Use this option to specify a simple Suricata rule with protocol, source and destination, ports, direction, and rule options.
    #        For information about the Suricata <code>Rules</code> format, see
    #                                         <a href="https://suricata.readthedocs.io/en/suricata-7.0.3/rules/intro.html">Rules Format</a>. </p>
    # @!attribute action
    #   <p>Defines what Network Firewall should do with the packets in a traffic flow when the flow
    #            matches the stateful rule criteria. For all actions, Network Firewall performs the specified
    #            action and discontinues stateful inspection of the traffic flow. </p>
    #            <p>The actions for a stateful rule are defined as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PASS</b> - Permits the packets to go to the
    #                  intended destination.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DROP</b> - Blocks the packets from going to
    #                  the intended destination and sends an alert log message, if alert logging is configured in the <a>Firewall</a>
    #                     <a>LoggingConfiguration</a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ALERT</b> - Sends an alert log message, if alert logging is configured in the <a>Firewall</a>
    #                     <a>LoggingConfiguration</a>. </p>
    #                  <p>You can use this action to test a rule that you intend to use to drop traffic. You
    #                  can enable the rule with <code>ALERT</code> action, verify in the logs that the rule
    #                  is filtering as you want, then change the action to <code>DROP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>REJECT</b> - Drops traffic that matches the conditions of the stateful rule, and sends a TCP reset packet back to sender of the packet. A TCP reset packet is a packet with no payload and an RST bit contained in the TCP header flags. REJECT is available only for TCP traffic. This option doesn't support FTP or IMAP protocols.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute header
    #   <p>The stateful inspection criteria for this rule, used to inspect traffic flows.
    #         </p>
    #   @return [Types::Header]
    # @!attribute rule_options
    #   <p>Additional options for the rule. These are the Suricata <code>RuleOptions</code> settings.</p>
    #   @return [Array<Types::RuleOption>]
    class StatefulRule < Struct.new(
      :action,
      :header,
      :rule_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The setting that allows the policy owner to change the behavior of the rule group within a policy. </p>
    # @!attribute action
    #   <p>The action that changes the rule group from <code>DROP</code> to <code>ALERT</code>. This only applies to
    #         managed rule groups.</p>
    #   @return [String]
    class StatefulRuleGroupOverride < Struct.new(
      :action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifier for a single stateful rule group, used in a firewall policy to refer to a
    #          rule group. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the stateful rule group.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>An integer setting that indicates the order in which to run the stateful rule groups in
    #         a single <a>FirewallPolicy</a>. This setting only applies to firewall policies
    #         that specify the <code>STRICT_ORDER</code> rule order in the stateful engine options settings.</p>
    #            <p>Network Firewall evalutes each stateful rule group
    #            against a packet starting with the group that has the lowest priority setting. You must ensure
    #            that the priority settings are unique within each policy.</p>
    #            <p>You can change the priority settings of your rule groups at any time. To make it easier to
    #            insert rule groups later, number them so there's a wide range in between, for example use 100,
    #            200, and so on. </p>
    #   @return [Integer]
    # @!attribute override
    #   <p>The action that allows the policy owner to override the behavior of the rule group within a policy.</p>
    #   @return [Types::StatefulRuleGroupOverride]
    # @!attribute deep_threat_inspection
    #   <p>Network Firewall plans to augment the active threat defense managed rule group with an additional deep threat inspection capability. When this capability is released, Amazon Web Services will analyze service logs of network traffic processed by these rule groups to identify threat indicators across customers. 
    #            Amazon Web Services will use these threat indicators to improve the active threat defense managed rule groups and protect the security of Amazon Web Services customers and services.</p>
    #            <note>
    #               <p>Customers can opt-out of deep threat inspection at any time through the Network Firewall console or API. When customers opt out, Network Firewall  will not use the network traffic processed by those customers' active threat defense rule groups for rule group improvement.</p>
    #            </note>
    #   @return [Boolean]
    class StatefulRuleGroupReference < Struct.new(
      :resource_arn,
      :priority,
      :override,
      :deep_threat_inspection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Additional options governing how Network Firewall handles the rule group. You can only use these for stateful rule groups.</p>
    # @!attribute rule_order
    #   <p>Indicates how to manage the order of the rule evaluation for the rule group. <code>DEFAULT_ACTION_ORDER</code> is
    #                the default behavior. Stateful rules are provided to the rule engine as Suricata compatible strings, and Suricata evaluates them
    #                based on certain settings. For more information, see
    #            <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html">Evaluation order for stateful rules</a> in the <i>Network Firewall Developer Guide</i>.
    #         </p>
    #   @return [String]
    class StatefulRuleOptions < Struct.new(
      :rule_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A single stateless rule. This is used in <a>StatelessRulesAndCustomActions</a>.</p>
    # @!attribute rule_definition
    #   <p>Defines the stateless 5-tuple packet inspection criteria and the action to take on a
    #            packet that matches the criteria. </p>
    #   @return [Types::RuleDefinition]
    # @!attribute priority
    #   <p>Indicates the order in which to run this rule relative to all of the
    #            rules that are defined for a stateless rule group. Network Firewall evaluates the rules in a
    #            rule group starting with the lowest priority setting. You must ensure that the priority
    #            settings are unique for the rule group. </p>
    #            <p>Each stateless rule group uses exactly one <code>StatelessRulesAndCustomActions</code>
    #            object, and each <code>StatelessRulesAndCustomActions</code> contains exactly one
    #               <code>StatelessRules</code> object. To ensure unique priority settings for your rule
    #            groups, set unique priorities for the stateless rules that you define inside any single
    #               <code>StatelessRules</code> object.</p>
    #            <p>You can change the priority settings of your rules at any time. To make it easier to
    #            insert rules later, number them so there's a wide range in between, for example use 100,
    #            200, and so on. </p>
    #   @return [Integer]
    class StatelessRule < Struct.new(
      :rule_definition,
      :priority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Identifier for a single stateless rule group, used in a firewall policy to refer to the
    #          rule group. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the stateless rule group.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>An integer setting that indicates the order in which to run the stateless rule groups in
    #            a single <a>FirewallPolicy</a>. Network Firewall applies each stateless rule group
    #            to a packet starting with the group that has the lowest priority setting. You must ensure
    #            that the priority settings are unique within each policy.</p>
    #   @return [Integer]
    class StatelessRuleGroupReference < Struct.new(
      :resource_arn,
      :priority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Stateless inspection criteria. Each stateless rule group uses exactly one of these data
    #          types to define its stateless rules. </p>
    # @!attribute stateless_rules
    #   <p>Defines the set of stateless rules for use in a stateless rule group. </p>
    #   @return [Array<Types::StatelessRule>]
    # @!attribute custom_actions
    #   <p>Defines an array of individual custom action definitions that are available for use by
    #            the stateless rules in this <code>StatelessRulesAndCustomActions</code> specification. You
    #            name each custom action that you define, and then you can use it by name in your <a>StatelessRule</a>
    #               <a>RuleDefinition</a>
    #               <code>Actions</code> specification.</p>
    #   @return [Array<Types::CustomAction>]
    class StatelessRulesAndCustomActions < Struct.new(
      :stateless_rules,
      :custom_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ID for a subnet that's used in an association with a firewall. This is used in
    #       <a>CreateFirewall</a>, <a>AssociateSubnets</a>, and <a>CreateVpcEndpointAssociation</a>. Network Firewall
    #          creates an instance of the associated firewall in each subnet that you specify, to filter
    #          traffic in the subnet's Availability Zone.</p>
    # @!attribute subnet_id
    #   <p>The unique identifier for the subnet. </p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The subnet's IP address type. You can't change the IP address type after you create the subnet.</p>
    #   @return [String]
    class SubnetMapping < Struct.new(
      :subnet_id,
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type containing summaries of security protections provided by a rule group.</p>
    #          <p>Network Firewall extracts this information from selected fields in the rule group's Suricata rules, based on your <a>SummaryConfiguration</a> settings.</p>
    # @!attribute rule_summaries
    #   <p>An array of <a>RuleSummary</a> objects containing individual rule details that had been configured by the rulegroup's SummaryConfiguration.</p>
    #   @return [Array<Types::RuleSummary>]
    class Summary < Struct.new(
      :rule_summaries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that specifies which Suricata rule metadata fields to use when displaying threat information. Contains:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>RuleOptions</code> - The Suricata rule options fields to extract and display</p>
    #             </li>
    #          </ul>
    #          <p>These settings affect how threat information appears in both the console and API responses. Summaries are available for rule groups you manage and for active threat defense Amazon Web Services managed rule groups.</p>
    # @!attribute rule_options
    #   <p>Specifies the selected rule options returned by <a>DescribeRuleGroupSummary</a>.</p>
    #   @return [Array<String>]
    class SummaryConfiguration < Struct.new(
      :rule_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the firewall endpoint and firewall policy configuration for a single VPC subnet. 
    #           This is part of the <a>FirewallStatus</a>. </p>
    #          <p>For each VPC subnet that you associate with a firewall, Network Firewall does the
    #          following: </p>
    #          <ul>
    #             <li>
    #                <p>Instantiates a firewall endpoint in the subnet, ready to take traffic.</p>
    #             </li>
    #             <li>
    #                <p>Configures the endpoint with the current firewall policy settings, to provide the
    #                filtering behavior for the endpoint.</p>
    #             </li>
    #          </ul>
    #          <p>When you update a firewall, for example to add a subnet association or change a rule
    #          group in the firewall policy, the affected sync states reflect out-of-sync or not ready
    #          status until the changes are complete. </p>
    # @!attribute attachment
    #   <p>The configuration and status for a single firewall subnet.
    #          For each configured subnet, Network Firewall creates the attachment by instantiating the firewall
    #            endpoint in the subnet so that it's ready to take traffic. </p>
    #   @return [Types::Attachment]
    # @!attribute config
    #   <p>The configuration status of the firewall endpoint in a single VPC subnet. Network Firewall
    #            provides each endpoint with the rules that are configured in the firewall policy. Each time
    #            you add a subnet or modify the associated firewall policy, Network Firewall synchronizes the
    #             rules in the endpoint, so it can properly filter network traffic. </p>
    #   @return [Hash<String, Types::PerObjectStatus>]
    class SyncState < Struct.new(
      :attachment,
      :config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>TCP flags and masks to inspect packets for, used in stateless rules <a>MatchAttributes</a> settings.</p>
    # @!attribute flags
    #   <p>Used in conjunction with the <code>Masks</code> setting to define the flags that must be set and flags that must not be set in order for the packet to match. This setting can only specify values that are also specified in the <code>Masks</code> setting.</p>
    #            <p>For the flags that are specified in the masks setting, the following must be true for the packet to match: </p>
    #            <ul>
    #               <li>
    #                  <p>The ones that are set in this flags setting must be set in the packet. </p>
    #               </li>
    #               <li>
    #                  <p>The ones that are not set in this flags setting must also not be set in the packet. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute masks
    #   <p>The set of flags to consider in the inspection. To inspect all flags in the valid values list, leave this with no setting.</p>
    #   @return [Array<String>]
    class TCPFlagField < Struct.new(
      :flags,
      :masks,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #          <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #          <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #     <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    # inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    # @!attribute server_certificate_configurations
    #   <p>Lists the server certificate configurations that are associated with the TLS configuration.</p>
    #   @return [Array<Types::ServerCertificateConfiguration>]
    class TLSInspectionConfiguration < Struct.new(
      :server_certificate_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a TLS inspection configuration, returned by <code>ListTLSInspectionConfigurations</code>. You can use the information provided in the metadata to retrieve and manage a TLS configuration.</p>
    # @!attribute name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #   @return [String]
    class TLSInspectionConfigurationMetadata < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The high-level properties of a TLS inspection configuration. This, along with the <code>TLSInspectionConfiguration</code>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <code>DescribeTLSInspectionConfiguration</code>.</p>
    # @!attribute tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_id
    #   <p>A unique identifier for the TLS inspection configuration. This ID is returned in the responses to create and list commands. You provide it to operations such as update and delete.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_status
    #   <p>Detailed information about the current status of a <a>TLSInspectionConfiguration</a>. You can retrieve this for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a> and providing the TLS inspection configuration name and ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the TLS inspection configuration. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute last_modified_time
    #   <p>The last time that the TLS inspection configuration was changed.</p>
    #   @return [Time]
    # @!attribute number_of_associations
    #   <p>The number of firewall policies that use this TLS inspection configuration.</p>
    #   @return [Integer]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your TLS inspection configuration.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute certificates
    #   <p>A list of the certificates associated with the TLS inspection configuration.</p>
    #   @return [Array<Types::TlsCertificateData>]
    # @!attribute certificate_authority
    #   <p>Contains metadata about an Certificate Manager certificate.</p>
    #   @return [Types::TlsCertificateData]
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
      :certificate_authority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key:value pair associated with an Amazon Web Services resource. The key:value pair can be anything you
    #          define. Typically, the tag key represents a category (such as "environment") and the tag
    #          value represents a specific value within that category (such as "test," "development," or
    #          "production"). You can add up to 50 tags to each Amazon Web Services resource. </p>
    # @!attribute key
    #   <p>The part of the key:value pair that defines a tag. You can use a tag key to describe a
    #            category of information, such as "customer." Tag keys are case-sensitive.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The part of the key:value pair that defines a tag. You can use a tag value to describe a
    #            specific value within a category, such as "companyA" or "companyB." Tag values are
    #            case-sensitive.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p></p>
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

    # <p>Unable to process the request due to throttling limitations.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about an Certificate Manager certificate.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute certificate_serial
    #   <p>The serial number of the certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>Contains details about the certificate status, including information about certificate errors.</p>
    #   @return [String]
    class TlsCertificateData < Struct.new(
      :certificate_arn,
      :certificate_serial,
      :status,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the synchronization state of a transit gateway attachment, including its current status and any error messages. Network Firewall uses this to track the state of your transit gateway configuration changes.</p>
    # @!attribute attachment_id
    #   <p>The unique identifier of the transit gateway attachment.</p>
    #   @return [String]
    # @!attribute transit_gateway_attachment_status
    #   <p>The current status of the transit gateway attachment.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The attachment is being created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The attachment is being deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The attachment has been deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The attachment creation has failed and cannot be recovered</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The attachment is in an error state that might be recoverable</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The attachment is active and processing traffic</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code> - The attachment is waiting to be accepted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTING</code> - The attachment is in the process of being rejected</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The attachment has been rejected</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message providing additional information about the current status, particularly useful when the transit gateway attachment is in a non-<code>READY</code> state.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The attachment is being created</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The attachment is being deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - The attachment has been deleted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The attachment creation has failed and cannot be recovered</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - The attachment is in an error state that might be recoverable</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>READY</code> - The attachment is active and processing traffic</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_ACCEPTANCE</code> - The attachment is waiting to be accepted</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTING</code> - The attachment is in the process of being rejected</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> - The attachment has been rejected</p>
    #               </li>
    #            </ul>
    #            <p>For information about troubleshooting endpoint failures, see <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/firewall-troubleshooting-endpoint-failures.html">Troubleshooting firewall endpoint failures</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [String]
    class TransitGatewayAttachmentSyncState < Struct.new(
      :attachment_id,
      :transit_gateway_attachment_status,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A unique source IP address that connected to a domain.</p>
    # @!attribute count
    #   <p>The number of unique source IP addresses that connected to a domain.</p>
    #   @return [Integer]
    class UniqueSources < Struct.new(
      :count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:count] = 0 unless options.key?(:count)
        super
      end
    end

    # <p>The operation you requested isn't supported by Network Firewall. </p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p></p>
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

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute availability_zone_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateAvailabilityZoneChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute availability_zone_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateAvailabilityZoneChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :availability_zone_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:availability_zone_change_protection] = false unless options.key?(:availability_zone_change_protection)
        super
      end
    end

    # @!attribute enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    #   @return [Array<String>]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class UpdateFirewallAnalysisSettingsRequest < Struct.new(
      :enabled_analysis_types,
      :firewall_arn,
      :firewall_name,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute enabled_analysis_types
    #   <p>An optional setting indicating the specific traffic analysis types to enable on the firewall. </p>
    #   @return [Array<String>]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class UpdateFirewallAnalysisSettingsResponse < Struct.new(
      :enabled_analysis_types,
      :firewall_arn,
      :firewall_name,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateFirewallDeleteProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :delete_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute delete_protection
    #   <p>A flag indicating whether it is possible to delete the firewall. A setting of <code>TRUE</code> indicates
    #            that the firewall is protected against deletion. Use this setting to protect against
    #            accidentally deleting a firewall that is in use. When you create a firewall, the operation initializes this flag to <code>TRUE</code>.</p>
    #   @return [Boolean]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class UpdateFirewallDeleteProtectionResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :delete_protection,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:delete_protection] = false unless options.key?(:delete_protection)
        super
      end
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the firewall. If you omit this setting, Network Firewall removes
    #            the description for the firewall.</p>
    #   @return [String]
    class UpdateFirewallDescriptionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the firewall.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class UpdateFirewallDescriptionResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :description,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::EncryptionConfiguration]
    class UpdateFirewallEncryptionConfigurationRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains optional Amazon Web Services Key Management Service (KMS) encryption settings for your Network Firewall resources. Your data is encrypted by default with an Amazon Web Services owned key that Amazon Web Services owns and manages for you. You can use either the Amazon Web Services owned key, or provide your own customer managed key. To learn more about KMS encryption of your Network Firewall resources, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-encryption-at-rest.html">Encryption at rest with Amazon Web Services Key Managment Service</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::EncryptionConfiguration]
    class UpdateFirewallEncryptionConfigurationResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :update_token,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateFirewallPolicyChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute firewall_policy_change_protection
    #   <p>A setting indicating whether the firewall is protected against a change to the firewall policy association.
    #            Use this setting to protect against
    #            accidentally modifying the firewall policy for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateFirewallPolicyChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :firewall_policy_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:firewall_policy_change_protection] = false unless options.key?(:firewall_policy_change_protection)
        super
      end
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall policy.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy_name
    #   <p>The descriptive name of the firewall policy. You can't change the name of a firewall policy after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_policy
    #   <p>The updated firewall policy to use for the firewall. You can't add or remove a <a>TLSInspectionConfiguration</a> after you create a firewall policy. However, you can replace an existing TLS inspection configuration with another <code>TLSInspectionConfiguration</code>.</p>
    #   @return [Types::FirewallPolicy]
    # @!attribute description
    #   <p>A description of the firewall policy.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your firewall policy resources.</p>
    #   @return [Types::EncryptionConfiguration]
    class UpdateFirewallPolicyRequest < Struct.new(
      :update_token,
      :firewall_policy_arn,
      :firewall_policy_name,
      :firewall_policy,
      :description,
      :dry_run,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the firewall policy. The token marks the state of the policy resource at the time of the request. </p>
    #            <p>To make changes to the policy, you provide the token in your request. Network Firewall uses the token to ensure that the policy hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall policy again to get a current copy of it with current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_policy_response
    #   <p>The high-level properties of a firewall policy. This, along with the <a>FirewallPolicy</a>, define the policy. You can retrieve all objects for a firewall policy by calling <a>DescribeFirewallPolicy</a>. </p>
    #   @return [Types::FirewallPolicyResponse]
    class UpdateFirewallPolicyResponse < Struct.new(
      :update_token,
      :firewall_policy_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a firewall. If you omit this setting,
    #            Network Firewall disables logging for the firewall.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute enable_monitoring_dashboard
    #   <p>A boolean that lets you enable or disable the detailed firewall monitoring dashboard on the firewall. </p>
    #            <p>The monitoring dashboard provides comprehensive visibility into your firewall's flow logs and alert logs. 
    #            After you enable detailed monitoring, you can access these dashboards directly from the <b>Monitoring</b> page of the Network Firewall console.</p>
    #            <p>
    #            Specify <code>TRUE</code> to enable the the detailed monitoring dashboard on the firewall. 
    #            Specify <code>FALSE</code> to disable the the detailed monitoring dashboard on the firewall. 
    #         </p>
    #   @return [Boolean]
    class UpdateLoggingConfigurationRequest < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      :enable_monitoring_dashboard,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Defines how Network Firewall performs logging for a <a>Firewall</a>. </p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute enable_monitoring_dashboard
    #   <p>A boolean that reflects whether or not the firewall monitoring dashboard is enabled on a firewall.</p>
    #            <p>
    #            Returns <code>TRUE</code> when the firewall monitoring dashboard is enabled on the firewall. 
    #            Returns <code>FALSE</code> when the firewall monitoring dashboard is not enabled on the firewall.
    #         </p>
    #   @return [Boolean]
    class UpdateLoggingConfigurationResponse < Struct.new(
      :firewall_arn,
      :firewall_name,
      :logging_configuration,
      :enable_monitoring_dashboard,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute rule_group_arn
    #   <p>The Amazon Resource Name (ARN) of the rule group.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group_name
    #   <p>The descriptive name of the rule group. You can't change the name of a rule group after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute rule_group
    #   <p>An object that defines the rule group rules. </p>
    #            <note>
    #               <p>You must provide either this rule group setting or a <code>Rules</code> setting, but not both. </p>
    #            </note>
    #   @return [Types::RuleGroup]
    # @!attribute rules
    #   <p>A string containing stateful rule group rules specifications in Suricata flat format, with one rule
    #   per line. Use this to import your existing Suricata compatible rule groups. </p>
    #            <note>
    #               <p>You must provide either this rules setting or a populated <code>RuleGroup</code> setting, but not both. </p>
    #            </note>
    #            <p>You can provide your rule group specification in Suricata flat format through this setting when you create or update your rule group. The call
    #   response returns a <a>RuleGroup</a> object that Network Firewall has populated from your string. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates whether the rule group is stateless or stateful. If the rule group is stateless, it contains
    #   stateless rules. If it is stateful, it contains stateful rules. </p>
    #            <note>
    #               <p>This setting is required for requests that do not include the <code>RuleGroupARN</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the rule group. </p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Indicates whether you want Network Firewall to just check the validity of the request, rather than run the request. </p>
    #            <p>If set to <code>TRUE</code>, Network Firewall checks whether the request can run successfully,
    #            but doesn't actually make the requested changes. The call returns the value that the request would return if you ran it with
    #            dry run set to <code>FALSE</code>, but doesn't make additions or changes to your resources. This option allows you to make sure that you have
    #            the required permissions to run the request and that your request parameters are valid. </p>
    #            <p>If set to <code>FALSE</code>, Network Firewall makes the requested changes to your resources. </p>
    #   @return [Boolean]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains settings for encryption of your rule group resources.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute source_metadata
    #   <p>A complex type that contains metadata about the rule group that your own rule group is copied from. You can use the metadata to keep track of updates made to the originating rule group.</p>
    #   @return [Types::SourceMetadata]
    # @!attribute analyze_rule_group
    #   <p>Indicates whether you want Network Firewall to analyze the stateless rules in the rule group for rule behavior such as asymmetric routing. If set to <code>TRUE</code>, Network Firewall runs the analysis and then updates the rule group for you. To run the stateless rule group analyzer without updating the rule group, set <code>DryRun</code> to <code>TRUE</code>. </p>
    #   @return [Boolean]
    # @!attribute summary_configuration
    #   <p>Updates the selected summary configuration for a rule group.</p>
    #            <p>Changes affect subsequent responses from <a>DescribeRuleGroupSummary</a>.</p>
    #   @return [Types::SummaryConfiguration]
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
      :summary_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the rule group. The token marks the state of the rule group resource at the time of the request. </p>
    #            <p>To make changes to the rule group, you provide the token in your request. Network Firewall uses the token to ensure that the rule group hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the rule group again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute rule_group_response
    #   <p>The high-level properties of a rule group. This, along with the <a>RuleGroup</a>, define the rule group. You can retrieve all objects for a rule group by calling <a>DescribeRuleGroup</a>. </p>
    #   @return [Types::RuleGroupResponse]
    class UpdateRuleGroupResponse < Struct.new(
      :update_token,
      :rule_group_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #            <p>You must specify the ARN or the name, and you can specify both. </p>
    #   @return [String]
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateSubnetChangeProtectionRequest < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>An optional token that you can use for optimistic locking. Network Firewall returns a token to your requests that access the firewall. The token marks the state of the firewall resource at the time of the request. </p>
    #            <p>To make an unconditional change to the firewall, omit the token in your update request. Without the token, Network Firewall performs your updates regardless of whether the firewall has changed since you last retrieved it.</p>
    #            <p>To make a conditional change to the firewall, provide the token in your update request. Network Firewall uses the token to ensure that the firewall hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the firewall again to get a current copy of it with a new token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute firewall_name
    #   <p>The descriptive name of the firewall. You can't change the name of a firewall after you create it.</p>
    #   @return [String]
    # @!attribute subnet_change_protection
    #   <p>A setting indicating whether the firewall is protected against changes to the subnet associations.
    #            Use this setting to protect against
    #            accidentally modifying the subnet associations for a firewall that is in use. When you create a firewall, the operation initializes this setting to <code>TRUE</code>.</p>
    #   @return [Boolean]
    class UpdateSubnetChangeProtectionResponse < Struct.new(
      :update_token,
      :firewall_arn,
      :firewall_name,
      :subnet_change_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:subnet_change_protection] = false unless options.key?(:subnet_change_protection)
        super
      end
    end

    # @!attribute tls_inspection_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the TLS inspection configuration.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_name
    #   <p>The descriptive name of the TLS inspection configuration. You can't change the name of a TLS inspection configuration after you create it.</p>
    #   @return [String]
    # @!attribute tls_inspection_configuration
    #   <p>The object that defines a TLS inspection configuration. This, along with <a>TLSInspectionConfigurationResponse</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #            <p>Network Firewall uses a TLS inspection configuration to decrypt traffic. Network Firewall re-encrypts the traffic before sending it to its destination.</p>
    #            <p>To use a TLS inspection configuration, you add it to a new Network Firewall firewall policy, then you apply the firewall policy to a firewall. Network Firewall acts as a proxy service to decrypt and inspect the traffic traveling through your firewalls. You can reference a TLS inspection configuration from more than one firewall policy, and you can use a firewall policy in more than one firewall. For more information about using TLS inspection configurations, see 
    #       <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection.html">Inspecting SSL/TLS traffic with TLS
    #   inspection configurations</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #   @return [Types::TLSInspectionConfiguration]
    # @!attribute description
    #   <p>A description of the TLS inspection configuration. </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>A complex type that contains the Amazon Web Services KMS encryption configuration settings for your TLS inspection configuration.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the TLS inspection configuration. The token marks the state of the TLS inspection configuration resource at the time of the request. </p>
    #            <p>To make changes to the TLS inspection configuration, you provide the token in your request. Network Firewall uses the token to ensure that the TLS inspection configuration hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the TLS inspection configuration again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    class UpdateTLSInspectionConfigurationRequest < Struct.new(
      :tls_inspection_configuration_arn,
      :tls_inspection_configuration_name,
      :tls_inspection_configuration,
      :description,
      :encryption_configuration,
      :update_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute update_token
    #   <p>A token used for optimistic locking. Network Firewall returns a token to your requests that access the TLS inspection configuration. The token marks the state of the TLS inspection configuration resource at the time of the request. </p>
    #            <p>To make changes to the TLS inspection configuration, you provide the token in your request. Network Firewall uses the token to ensure that the TLS inspection configuration hasn't changed since you last retrieved it. If it has changed, the operation fails with an <code>InvalidTokenException</code>. If this happens, retrieve the TLS inspection configuration again to get a current copy of it with a current token. Reapply your changes as needed, then try the operation again using the new token. </p>
    #   @return [String]
    # @!attribute tls_inspection_configuration_response
    #   <p>The high-level properties of a TLS inspection configuration. This, along with the <a>TLSInspectionConfiguration</a>, define the TLS inspection configuration. You can retrieve all objects for a TLS inspection configuration by calling <a>DescribeTLSInspectionConfiguration</a>. </p>
    #   @return [Types::TLSInspectionConfigurationResponse]
    class UpdateTLSInspectionConfigurationResponse < Struct.new(
      :update_token,
      :tls_inspection_configuration_response,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A VPC endpoint association defines a single subnet to use for a firewall endpoint for a <code>Firewall</code>. 
    #        You can define VPC endpoint associations only in the Availability Zones that already have 
    #            a subnet mapping defined in the <code>Firewall</code> resource. </p>
    #          <note>
    #             <p>You can retrieve the list of Availability Zones that are available for use by calling <code>DescribeFirewallMetadata</code>.</p>
    #          </note>
    #          <p>To manage firewall endpoints, first, in the <code>Firewall</code> specification, you specify a single VPC and one subnet 
    #            for each of the Availability Zones where you want to use the firewall. Then you can define additional endpoints as 
    #            VPC endpoint associations. </p>
    #          <p>You can use VPC endpoint associations to expand the protections of the firewall as follows: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Protect multiple VPCs with a single firewall</b> - You can use the firewall to protect other VPCs, either in your account or in accounts where the firewall is shared. You can only specify Availability Zones that already have a firewall endpoint defined in the <code>Firewall</code> subnet mappings.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Define multiple firewall endpoints for a VPC in an Availability Zone</b> - You can create additional firewall endpoints for the VPC that you have defined in the firewall, in any Availability Zone that already has an endpoint defined in the <code>Firewall</code> subnet mappings. You can create multiple VPC endpoint associations for any other VPC where you use the firewall.</p>
    #             </li>
    #          </ul>
    #          <p>You can use Resource Access Manager to share a <code>Firewall</code> that you own with other accounts, which gives them the ability to use the firewall 
    #       to create VPC endpoint associations. For information about sharing a firewall, see <code>PutResourcePolicy</code>
    #           in this guide and see 
    #     <a href="https://docs.aws.amazon.com/network-firewall/latest/developerguide/sharing.html">Sharing Network Firewall resources</a> in the <i>Network Firewall Developer Guide</i>.</p>
    #          <p>The status of the VPC endpoint association, which indicates whether it's ready to filter network traffic,
    #          is provided in the corresponding <a>VpcEndpointAssociationStatus</a>. You can retrieve both
    #          the association and its status by calling <a>DescribeVpcEndpointAssociation</a>.</p>
    # @!attribute vpc_endpoint_association_id
    #   <p>The unique identifier of the VPC endpoint association. </p>
    #   @return [String]
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    # @!attribute firewall_arn
    #   <p>The Amazon Resource Name (ARN) of the firewall.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier of the VPC for the endpoint association. </p>
    #   @return [String]
    # @!attribute subnet_mapping
    #   <p>The ID for a subnet that's used in an association with a firewall. This is used in
    #         <a>CreateFirewall</a>, <a>AssociateSubnets</a>, and <a>CreateVpcEndpointAssociation</a>. Network Firewall
    #            creates an instance of the associated firewall in each subnet that you specify, to filter
    #            traffic in the subnet's Availability Zone.</p>
    #   @return [Types::SubnetMapping]
    # @!attribute description
    #   <p>A description of the VPC endpoint association. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key:value pairs to associate with the resource.</p>
    #   @return [Array<Types::Tag>]
    class VpcEndpointAssociation < Struct.new(
      :vpc_endpoint_association_id,
      :vpc_endpoint_association_arn,
      :firewall_arn,
      :vpc_id,
      :subnet_mapping,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>High-level information about a VPC endpoint association, returned by <code>ListVpcEndpointAssociations</code>. You can use the information provided in the metadata to retrieve and manage a VPC endpoint association.</p>
    # @!attribute vpc_endpoint_association_arn
    #   <p>The Amazon Resource Name (ARN) of a VPC endpoint association.</p>
    #   @return [String]
    class VpcEndpointAssociationMetadata < Struct.new(
      :vpc_endpoint_association_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about the current status of a <a>VpcEndpointAssociation</a>. You can retrieve this 
    # by calling <a>DescribeVpcEndpointAssociation</a> and providing the VPC endpoint association ARN.</p>
    # @!attribute status
    #   <p>The readiness of the configured firewall endpoint to handle network traffic. </p>
    #   @return [String]
    # @!attribute association_sync_state
    #   <p>The list of the Availability Zone sync states for all subnets that are defined by the firewall. </p>
    #   @return [Hash<String, Types::AZSyncState>]
    class VpcEndpointAssociationStatus < Struct.new(
      :status,
      :association_sync_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
