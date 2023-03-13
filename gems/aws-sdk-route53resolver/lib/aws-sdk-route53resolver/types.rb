# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Resolver
  module Types

    # The current account doesn't have the IAM permissions required to
    # perform the specified Resolver operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC that you want to associate with the
    #   rule group.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that you associate with the specified VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #
    #   You must specify a unique priority for each rule group that you
    #   associate with a single VPC. To make it easier to insert rule groups
    #   later, leave space between the numbers, for example, use 101, 200,
    #   and so on. You can change the priority setting for a rule group
    #   association after you create it.
    #
    #   The allowed values for `Priority` are between 100 and 9900.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A name that lets you identify the association, to manage and use it.
    #   @return [String]
    #
    # @!attribute [rw] mutation_protection
    #   If enabled, this setting disallows modification or removal of the
    #   association, to help prevent against accidentally altering DNS
    #   firewall protections. When you create the association, the default
    #   setting is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the rule group association.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateFirewallRuleGroupRequest AWS API Documentation
    #
    class AssociateFirewallRuleGroupRequest < Struct.new(
      :creator_request_id,
      :firewall_rule_group_id,
      :vpc_id,
      :priority,
      :name,
      :mutation_protection,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association
    #   The association that you just created. The association has an ID
    #   that you can use to identify it in other requests, like update and
    #   delete.
    #   @return [Types::FirewallRuleGroupAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateFirewallRuleGroupResponse AWS API Documentation
    #
    class AssociateFirewallRuleGroupResponse < Struct.new(
      :firewall_rule_group_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to associate IP
    #   addresses with.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Either the IPv4 address that you want to add to a Resolver endpoint
    #   or a subnet ID. If you specify a subnet ID, Resolver chooses an IP
    #   address for you from the available IPs in the specified subnet.
    #   @return [Types::IpAddressUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverEndpointIpAddressRequest AWS API Documentation
    #
    class AssociateResolverEndpointIpAddressRequest < Struct.new(
      :resolver_endpoint_id,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   The response to an `AssociateResolverEndpointIpAddress` request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverEndpointIpAddressResponse AWS API Documentation
    #
    class AssociateResolverEndpointIpAddressResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to associate
    #   a VPC with.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of an Amazon VPC that you want this query logging
    #   configuration to log queries for.
    #
    #   <note markdown="1"> The VPCs and the query logging configuration must be in the same
    #   Region.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverQueryLogConfigRequest AWS API Documentation
    #
    class AssociateResolverQueryLogConfigRequest < Struct.new(
      :resolver_query_log_config_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_association
    #   A complex type that contains settings for a specified association
    #   between an Amazon VPC and a query logging configuration.
    #   @return [Types::ResolverQueryLogConfigAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverQueryLogConfigResponse AWS API Documentation
    #
    class AssociateResolverQueryLogConfigResponse < Struct.new(
      :resolver_query_log_config_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you want to associate with the VPC.
    #   To list the existing Resolver rules, use [ListResolverRules][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the association that you're creating between a Resolver
    #   rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that you want to associate the Resolver rule with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverRuleRequest AWS API Documentation
    #
    class AssociateResolverRuleRequest < Struct.new(
      :resolver_rule_id,
      :name,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_association
    #   Information about the `AssociateResolverRule` request, including the
    #   status of the request.
    #   @return [Types::ResolverRuleAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverRuleResponse AWS API Documentation
    #
    class AssociateResolverRuleResponse < Struct.new(
      :resolver_rule_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested state transition isn't valid. For example, you can't
    # delete a firewall domain list if it is in the process of being
    # deleted, or you can't import domains into a domain list that is in
    # the process of being deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows you to
    #   retry failed requests without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that lets you identify the domain list to manage and use it.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the domain list.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallDomainListRequest AWS API Documentation
    #
    class CreateFirewallDomainListRequest < Struct.new(
      :creator_request_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list
    #   The domain list that you just created.
    #   @return [Types::FirewallDomainList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallDomainListResponse AWS API Documentation
    #
    class CreateFirewallDomainListResponse < Struct.new(
      :firewall_domain_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name that lets you identify the rule group, to manage and use it.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the rule group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRuleGroupRequest AWS API Documentation
    #
    class CreateFirewallRuleGroupRequest < Struct.new(
      :creator_request_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group
    #   A collection of rules used to filter DNS network traffic.
    #   @return [Types::FirewallRuleGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRuleGroupResponse AWS API Documentation
    #
    class CreateFirewallRuleGroupResponse < Struct.new(
      :firewall_rule_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows you to
    #   retry failed requests without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group where you want to
    #   create the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list that you want to use in the rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #
    #   You must specify a unique priority for each rule in a rule group. To
    #   make it easier to insert rules later, leave space between the
    #   numbers, for example, use 100, 200, and so on. You can change the
    #   priority setting for the rules in a rule group at any time.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request and send metrics and logs to Cloud
    #     Watch.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #   @return [String]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request, used with
    #   the rule action setting `BLOCK`.
    #
    #   * `NODATA` - Respond indicating that the query was successful, but
    #     no response is available for it.
    #
    #   * `NXDOMAIN` - Respond indicating that the domain name that's in
    #     the query doesn't exist.
    #
    #   * `OVERRIDE` - Provide a custom override in the response. This
    #     option requires custom handling details in the rule's
    #     `BlockOverride*` settings.
    #
    #   This setting is required if the rule action setting is `BLOCK`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #
    #   This setting is required if the `BlockResponse` setting is
    #   `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A name that lets you identify the rule in the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRuleRequest AWS API Documentation
    #
    class CreateFirewallRuleRequest < Struct.new(
      :creator_request_id,
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule
    #   The firewall rule that you just created.
    #   @return [Types::FirewallRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateFirewallRuleResponse AWS API Documentation
    #
    class CreateFirewallRuleResponse < Struct.new(
      :firewall_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name that lets you easily find a configuration in the
    #   Resolver dashboard in the Route 53 console.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The ID of one or more security groups that you want to use to
    #   control access to this VPC. The security group that you specify must
    #   include one or more inbound rules (for inbound Resolver endpoints)
    #   or outbound rules (for outbound Resolver endpoints). Inbound and
    #   outbound rules must allow TCP and UDP access. For inbound access,
    #   open port 53. For outbound access, open the port that you're using
    #   for DNS queries on your network.
    #   @return [Array<String>]
    #
    # @!attribute [rw] direction
    #   Specify the applicable value:
    #
    #   * `INBOUND`: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network
    #
    #   * `OUTBOUND`: Resolver forwards DNS queries from the DNS service for
    #     a VPC to your network
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The subnets and IP addresses in your VPC that DNS queries originate
    #   from (for outbound endpoints) or that you forward DNS queries to
    #   (for inbound endpoints). The subnet ID uniquely identifies a VPC.
    #   @return [Array<Types::IpAddressRequest>]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resolver_endpoint_type
    #   For the endpoint type you can choose either IPv4, IPv6. or
    #   dual-stack. A dual-stack endpoint means that it will resolve via
    #   both IPv4 and IPv6. This endpoint type is applied to all IP
    #   addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverEndpointRequest AWS API Documentation
    #
    class CreateResolverEndpointRequest < Struct.new(
      :creator_request_id,
      :name,
      :security_group_ids,
      :direction,
      :ip_addresses,
      :tags,
      :resolver_endpoint_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   Information about the `CreateResolverEndpoint` request, including
    #   the status of the request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverEndpointResponse AWS API Documentation
    #
    class CreateResolverEndpointResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name that you want to give the query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource that you want Resolver to send query logs.
    #   You can send query logs to an S3 bucket, a CloudWatch Logs log
    #   group, or a Kinesis Data Firehose delivery stream. Examples of valid
    #   values include the following:
    #
    #   * **S3 bucket**:
    #
    #     `arn:aws:s3:::examplebucket`
    #
    #     You can optionally append a file prefix to the end of the ARN.
    #
    #     `arn:aws:s3:::examplebucket/development/`
    #
    #   * **CloudWatch Logs log group**:
    #
    #     `arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*`
    #
    #   * **Kinesis Data Firehose delivery stream**:
    #
    #     `arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name`
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the query logging configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverQueryLogConfigRequest AWS API Documentation
    #
    class CreateResolverQueryLogConfigRequest < Struct.new(
      :name,
      :destination_arn,
      :creator_request_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config
    #   Information about the `CreateResolverQueryLogConfig` request,
    #   including the status of the request.
    #   @return [Types::ResolverQueryLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverQueryLogConfigResponse AWS API Documentation
    #
    class CreateResolverQueryLogConfigResponse < Struct.new(
      :resolver_query_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of running the operation
    #   twice. `CreatorRequestId` can be any unique string, for example, a
    #   date/time stamp.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name that lets you easily find a rule in the Resolver
    #   dashboard in the Route 53 console.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   When you want to forward DNS queries for specified domain name to
    #   resolvers on your network, specify `FORWARD`.
    #
    #   When you have a forwarding rule to forward DNS queries for a domain
    #   to your network and you want Resolver to process queries for a
    #   subdomain of that domain, specify `SYSTEM`.
    #
    #   For example, to forward DNS queries for example.com to resolvers on
    #   your network, you create a rule and specify `FORWARD` for
    #   `RuleType`. To then have Resolver process queries for
    #   apex.example.com, you create a rule and specify `SYSTEM` for
    #   `RuleType`.
    #
    #   Currently, only Resolver can create rules that have a value of
    #   `RECURSIVE` for `RuleType`.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that you specify in `TargetIps`. If a query matches multiple
    #   Resolver rules (example.com and www.example.com), outbound DNS
    #   queries are routed using the Resolver rule that contains the most
    #   specific domain name (www.example.com).
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   The IPs that you want Resolver to forward DNS queries to. You can
    #   specify only IPv4 addresses. Separate IP addresses with a space.
    #
    #   `TargetIps` is available only when the value of `Rule type` is
    #   `FORWARD`.
    #   @return [Array<Types::TargetAddress>]
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the outbound Resolver endpoint that you want to use to
    #   route DNS queries to the IP addresses that you specify in
    #   `TargetIps`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of the tag keys and values that you want to associate with
    #   the endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverRuleRequest AWS API Documentation
    #
    class CreateResolverRuleRequest < Struct.new(
      :creator_request_id,
      :name,
      :rule_type,
      :domain_name,
      :target_ips,
      :resolver_endpoint_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule
    #   Information about the `CreateResolverRule` request, including the
    #   status of the request.
    #   @return [Types::ResolverRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverRuleResponse AWS API Documentation
    #
    class CreateResolverRuleResponse < Struct.new(
      :resolver_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallDomainListRequest AWS API Documentation
    #
    class DeleteFirewallDomainListRequest < Struct.new(
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list
    #   The domain list that you just deleted.
    #   @return [Types::FirewallDomainList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallDomainListResponse AWS API Documentation
    #
    class DeleteFirewallDomainListResponse < Struct.new(
      :firewall_domain_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRuleGroupRequest AWS API Documentation
    #
    class DeleteFirewallRuleGroupRequest < Struct.new(
      :firewall_rule_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group
    #   A collection of rules used to filter DNS network traffic.
    #   @return [Types::FirewallRuleGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRuleGroupResponse AWS API Documentation
    #
    class DeleteFirewallRuleGroupResponse < Struct.new(
      :firewall_rule_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   delete the rule from.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list that's used in the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRuleRequest AWS API Documentation
    #
    class DeleteFirewallRuleRequest < Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule
    #   The specification for the firewall rule that you just deleted.
    #   @return [Types::FirewallRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteFirewallRuleResponse AWS API Documentation
    #
    class DeleteFirewallRuleResponse < Struct.new(
      :firewall_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverEndpointRequest AWS API Documentation
    #
    class DeleteResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   Information about the `DeleteResolverEndpoint` request, including
    #   the status of the request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverEndpointResponse AWS API Documentation
    #
    class DeleteResolverEndpointResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverQueryLogConfigRequest AWS API Documentation
    #
    class DeleteResolverQueryLogConfigRequest < Struct.new(
      :resolver_query_log_config_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config
    #   Information about the query logging configuration that you deleted,
    #   including the status of the request.
    #   @return [Types::ResolverQueryLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverQueryLogConfigResponse AWS API Documentation
    #
    class DeleteResolverQueryLogConfigResponse < Struct.new(
      :resolver_query_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverRuleRequest AWS API Documentation
    #
    class DeleteResolverRuleRequest < Struct.new(
      :resolver_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule
    #   Information about the `DeleteResolverRule` request, including the
    #   status of the request.
    #   @return [Types::ResolverRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverRuleResponse AWS API Documentation
    #
    class DeleteResolverRuleResponse < Struct.new(
      :resolver_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateFirewallRuleGroupRequest AWS API Documentation
    #
    class DisassociateFirewallRuleGroupRequest < Struct.new(
      :firewall_rule_group_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association
    #   The firewall rule group association that you just removed.
    #   @return [Types::FirewallRuleGroupAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateFirewallRuleGroupResponse AWS API Documentation
    #
    class DisassociateFirewallRuleGroupResponse < Struct.new(
      :firewall_rule_group_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to disassociate an IP
    #   address from.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IPv4 address that you want to remove from a Resolver endpoint.
    #   @return [Types::IpAddressUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverEndpointIpAddressRequest AWS API Documentation
    #
    class DisassociateResolverEndpointIpAddressRequest < Struct.new(
      :resolver_endpoint_id,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   The response to an `DisassociateResolverEndpointIpAddress` request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverEndpointIpAddressResponse AWS API Documentation
    #
    class DisassociateResolverEndpointIpAddressResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_id
    #   The ID of the query logging configuration that you want to
    #   disassociate a specified VPC from.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon VPC that you want to disassociate from a
    #   specified query logging configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverQueryLogConfigRequest AWS API Documentation
    #
    class DisassociateResolverQueryLogConfigRequest < Struct.new(
      :resolver_query_log_config_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_association
    #   A complex type that contains settings for the association that you
    #   deleted between an Amazon VPC and a query logging configuration.
    #   @return [Types::ResolverQueryLogConfigAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverQueryLogConfigResponse AWS API Documentation
    #
    class DisassociateResolverQueryLogConfigResponse < Struct.new(
      :resolver_query_log_config_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The ID of the VPC that you want to disassociate the Resolver rule
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you want to disassociate from the
    #   specified VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverRuleRequest AWS API Documentation
    #
    class DisassociateResolverRuleRequest < Struct.new(
      :vpc_id,
      :resolver_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_association
    #   Information about the `DisassociateResolverRule` request, including
    #   the status of the request.
    #   @return [Types::ResolverRuleAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverRuleResponse AWS API Documentation
    #
    class DisassociateResolverRuleResponse < Struct.new(
      :resolver_rule_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # For Resolver list operations ([ListResolverEndpoints][1],
    # [ListResolverRules][2], [ListResolverRuleAssociations][3],
    # [ListResolverQueryLogConfigs][4],
    # [ListResolverQueryLogConfigAssociations][5]), and
    # [ListResolverDnssecConfigs][6]), an optional specification to return a
    # subset of objects.
    #
    # To filter objects, such as Resolver endpoints or Resolver rules, you
    # specify `Name` and `Values`. For example, to list only inbound
    # Resolver endpoints, specify `Direction` for `Name` and specify
    # `INBOUND` for `Values`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html
    # [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html
    # [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverDnssecConfigs.html
    #
    # @!attribute [rw] name
    #   The name of the parameter that you want to use to filter objects.
    #
    #   The valid values for `Name` depend on the action that you're
    #   including the filter in, [ListResolverEndpoints][1],
    #   [ListResolverRules][2], [ListResolverRuleAssociations][3],
    #   [ListResolverQueryLogConfigs][4], or
    #   [ListResolverQueryLogConfigAssociations][5].
    #
    #   <note markdown="1"> In early versions of Resolver, values for `Name` were listed as
    #   uppercase, with underscore (\_) delimiters. For example,
    #   `CreatorRequestId` was originally listed as `CREATOR_REQUEST_ID`.
    #   Uppercase values for `Name` are still supported.
    #
    #    </note>
    #
    #   **ListResolverEndpoints**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `CreatorRequestId`: The value that you specified when you created
    #     the Resolver endpoint.
    #
    #   * `Direction`: Whether you want to return inbound or outbound
    #     Resolver endpoints. If you specify `DIRECTION` for `Name`, specify
    #     `INBOUND` or `OUTBOUND` for `Values`.
    #
    #   * `HostVPCId`: The ID of the VPC that inbound DNS queries pass
    #     through on the way from your network to your VPCs in a region, or
    #     the VPC that outbound queries pass through on the way from your
    #     VPCs to your network. In a [CreateResolverEndpoint][6] request,
    #     `SubnetId` indirectly identifies the VPC. In a
    #     [GetResolverEndpoint][7] request, the VPC ID for a Resolver
    #     endpoint is returned in the `HostVPCId` element.
    #
    #   * `IpAddressCount`: The number of IP addresses that you have
    #     associated with the Resolver endpoint.
    #
    #   * `Name`: The name of the Resolver endpoint.
    #
    #   * `SecurityGroupIds`: The IDs of the VPC security groups that you
    #     specified when you created the Resolver endpoint.
    #
    #   * `Status`: The status of the Resolver endpoint. If you specify
    #     `Status` for `Name`, specify one of the following status codes for
    #     `Values`: `CREATING`, `OPERATIONAL`, `UPDATING`,
    #     `AUTO_RECOVERING`, `ACTION_NEEDED`, or `DELETING`. For more
    #     information, see `Status` in [ResolverEndpoint][8].
    #
    #   **ListResolverRules**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `CreatorRequestId`: The value that you specified when you created
    #     the Resolver rule.
    #
    #   * `DomainName`: The domain name for which Resolver is forwarding DNS
    #     queries to your network. In the value that you specify for
    #     `Values`, include a trailing dot (.) after the domain name. For
    #     example, if the domain name is example.com, specify the following
    #     value. Note the "." after `com`:
    #
    #     `example.com.`
    #
    #   * `Name`: The name of the Resolver rule.
    #
    #   * `ResolverEndpointId`: The ID of the Resolver endpoint that the
    #     Resolver rule is associated with.
    #
    #     <note markdown="1"> You can filter on the Resolver endpoint only for rules that have a
    #     value of `FORWARD` for `RuleType`.
    #
    #      </note>
    #
    #   * `Status`: The status of the Resolver rule. If you specify `Status`
    #     for `Name`, specify one of the following status codes for
    #     `Values`: `COMPLETE`, `DELETING`, `UPDATING`, or `FAILED`.
    #
    #   * `Type`: The type of the Resolver rule. If you specify `TYPE` for
    #     `Name`, specify `FORWARD` or `SYSTEM` for `Values`.
    #
    #   **ListResolverRuleAssociations**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `Name`: The name of the Resolver rule association.
    #
    #   * `ResolverRuleId`: The ID of the Resolver rule that is associated
    #     with one or more VPCs.
    #
    #   * `Status`: The status of the Resolver rule association. If you
    #     specify `Status` for `Name`, specify one of the following status
    #     codes for `Values`: `CREATING`, `COMPLETE`, `DELETING`, or
    #     `FAILED`.
    #
    #   * `VPCId`: The ID of the VPC that the Resolver rule is associated
    #     with.
    #
    #   **ListResolverQueryLogConfigs**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `Arn`: The ARN for the query logging configuration.
    #
    #   * `AssociationCount`: The number of VPCs that are associated with
    #     the query logging configuration.
    #
    #   * `CreationTime`: The date and time that the query logging
    #     configuration was created, in Unix time format and Coordinated
    #     Universal Time (UTC).
    #
    #   * `CreatorRequestId`: A unique string that identifies the request
    #     that created the query logging configuration.
    #
    #   * `Destination`: The Amazon Web Services service that you want to
    #     forward query logs to. Valid values include the following:
    #
    #     * `S3`
    #
    #     * `CloudWatchLogs`
    #
    #     * `KinesisFirehose`
    #
    #   * `DestinationArn`: The ARN of the location that Resolver is sending
    #     query logs to. This value can be the ARN for an S3 bucket, a
    #     CloudWatch Logs log group, or a Kinesis Data Firehose delivery
    #     stream.
    #
    #   * `Id`: The ID of the query logging configuration
    #
    #   * `Name`: The name of the query logging configuration
    #
    #   * `OwnerId`: The Amazon Web Services account ID for the account that
    #     created the query logging configuration.
    #
    #   * `ShareStatus`: An indication of whether the query logging
    #     configuration is shared with other Amazon Web Services accounts,
    #     or was shared with the current account by another Amazon Web
    #     Services account. Valid values include: `NOT_SHARED`,
    #     `SHARED_WITH_ME`, or `SHARED_BY_ME`.
    #
    #   * `Status`: The status of the query logging configuration. If you
    #     specify `Status` for `Name`, specify the applicable status code
    #     for `Values`: `CREATING`, `CREATED`, `DELETING`, or `FAILED`. For
    #     more information, see [Status][9].
    #
    #   **ListResolverQueryLogConfigAssociations**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `CreationTime`: The date and time that the VPC was associated with
    #     the query logging configuration, in Unix time format and
    #     Coordinated Universal Time (UTC).
    #
    #   * `Error`: If the value of `Status` is `FAILED`, specify the cause:
    #     `DESTINATION_NOT_FOUND` or `ACCESS_DENIED`.
    #
    #   * `Id`: The ID of the query logging association.
    #
    #   * `ResolverQueryLogConfigId`: The ID of the query logging
    #     configuration that a VPC is associated with.
    #
    #   * `ResourceId`: The ID of the Amazon VPC that is associated with the
    #     query logging configuration.
    #
    #   * `Status`: The status of the query logging association. If you
    #     specify `Status` for `Name`, specify the applicable status code
    #     for `Values`: `CREATING`, `CREATED`, `DELETING`, or `FAILED`. For
    #     more information, see [Status][10].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #   [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html
    #   [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html
    #   [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html
    #   [7]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   [8]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html
    #   [9]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status
    #   [10]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status
    #   @return [String]
    #
    # @!attribute [rw] values
    #   When you're using a `List` operation and you want the operation to
    #   return a subset of objects, such as Resolver endpoints or Resolver
    #   rules, the value of the parameter that you want to use to filter
    #   objects. For example, to list only inbound Resolver endpoints,
    #   specify `Direction` for `Name` and specify `INBOUND` for `Values`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the firewall behavior provided by DNS Firewall for a
    # single VPC from Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @!attribute [rw] id
    #   The ID of the firewall configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the VPC that this firewall configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID of the owner of the VPC that this
    #   firewall configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] firewall_fail_open
    #   Determines how DNS Firewall operates during failures, for example
    #   when all traffic that is sent to DNS Firewall fails to receive a
    #   reply.
    #
    #   * By default, fail open is disabled, which means the failure mode is
    #     closed. This approach favors security over availability. DNS
    #     Firewall returns a failure error when it is unable to properly
    #     evaluate a query.
    #
    #   * If you enable this option, the failure mode is open. This approach
    #     favors availability over security. DNS Firewall allows queries to
    #     proceed if it is unable to properly evaluate them.
    #
    #   This behavior is only enforced for VPCs that have at least one DNS
    #   Firewall rule group association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallConfig AWS API Documentation
    #
    class FirewallConfig < Struct.new(
      :id,
      :resource_id,
      :owner_id,
      :firewall_fail_open)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information about a list of firewall domains for use in a
    # FirewallRule. This is returned by GetFirewallDomainList.
    #
    # To retrieve the domains that are defined for this domain list, call
    # ListFirewallDomains.
    #
    # @!attribute [rw] id
    #   The ID of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the firewall domain list.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] domain_count
    #   The number of domain names that are specified in the domain list.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the list, if available.
    #   @return [String]
    #
    # @!attribute [rw] managed_owner_name
    #   The owner of the list, used only for lists that are not managed by
    #   you. For example, the managed domain list
    #   `AWSManagedDomainsMalwareDomainList` has the managed owner name
    #   `Route 53 Resolver DNS Firewall`.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the domain list was created, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the domain list was last modified, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallDomainList AWS API Documentation
    #
    class FirewallDomainList < Struct.new(
      :id,
      :arn,
      :name,
      :domain_count,
      :status,
      :status_message,
      :managed_owner_name,
      :creator_request_id,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Minimal high-level information for a firewall domain list. The action
    # ListFirewallDomainLists returns an array of these objects.
    #
    # To retrieve full information for a firewall domain list, call
    # GetFirewallDomainList and ListFirewallDomains.
    #
    # @!attribute [rw] id
    #   The ID of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the firewall domain list metadata.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] managed_owner_name
    #   The owner of the list, used only for lists that are not managed by
    #   you. For example, the managed domain list
    #   `AWSManagedDomainsMalwareDomainList` has the managed owner name
    #   `Route 53 Resolver DNS Firewall`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallDomainListMetadata AWS API Documentation
    #
    class FirewallDomainListMetadata < Struct.new(
      :id,
      :arn,
      :name,
      :creator_request_id,
      :managed_owner_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single firewall rule in a rule group.
    #
    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list that's used in the rule.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule in the rule group. This value must be
    #   unique within the rule group. DNS Firewall processes the rules in a
    #   rule group by order of priority, starting from the lowest setting.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request to go through but send an alert to
    #     the logs.
    #
    #   * `BLOCK` - Disallow the request. If this is specified, additional
    #     handling details are provided in the rule's `BlockResponse`
    #     setting.
    #   @return [String]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request. Used for
    #   the rule action setting `BLOCK`.
    #
    #   * `NODATA` - Respond indicating that the query was successful, but
    #     no response is available for it.
    #
    #   * `NXDOMAIN` - Respond indicating that the domain name that's in
    #     the query doesn't exist.
    #
    #   * `OVERRIDE` - Provide a custom override in the response. This
    #     option requires custom handling details in the rule's
    #     `BlockOverride*` settings.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of executing the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the rule was created, in Unix time format and
    #   Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the rule was last modified, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallRule AWS API Documentation
    #
    class FirewallRule < Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :name,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :creator_request_id,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # High-level information for a firewall rule group. A firewall rule
    # group is a collection of rules that DNS Firewall uses to filter DNS
    # network traffic for a VPC. To retrieve the rules for the rule group,
    # call ListFirewallRules.
    #
    # @!attribute [rw] id
    #   The ID of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] rule_count
    #   The number of rules in the rule group.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the rule group, if
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID for the account that created the
    #   rule group. When a rule group is shared with your account, this is
    #   the account that has shared the rule group with you.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Whether the rule group is shared with other Amazon Web Services
    #   accounts, or was shared with the current account by another Amazon
    #   Web Services account. Sharing is configured through Resource Access
    #   Manager (RAM).
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the rule group was created, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the rule group was last modified, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallRuleGroup AWS API Documentation
    #
    class FirewallRuleGroup < Struct.new(
      :id,
      :arn,
      :name,
      :rule_count,
      :status,
      :status_message,
      :owner_id,
      :creator_request_id,
      :share_status,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a firewall rule group and a VPC, which enables
    # DNS filtering for the VPC.
    #
    # @!attribute [rw] id
    #   The identifier for the association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the firewall rule group
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC that is associated with the rule
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the association.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that are associated with a single VPC. DNS
    #   Firewall filters VPC traffic starting from rule group with the
    #   lowest numeric priority setting.
    #   @return [Integer]
    #
    # @!attribute [rw] mutation_protection
    #   If enabled, this setting disallows modification or removal of the
    #   association, to help prevent against accidentally altering DNS
    #   firewall protections.
    #   @return [String]
    #
    # @!attribute [rw] managed_owner_name
    #   The owner of the association, used only for associations that are
    #   not managed by you. If you use Firewall Manager to manage your DNS
    #   Firewalls, then this reports Firewall Manager as the managed owner.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the association.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the response, if
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the association was created, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the association was last modified, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallRuleGroupAssociation AWS API Documentation
    #
    class FirewallRuleGroupAssociation < Struct.new(
      :id,
      :arn,
      :firewall_rule_group_id,
      :vpc_id,
      :name,
      :priority,
      :mutation_protection,
      :managed_owner_name,
      :status,
      :status_message,
      :creator_request_id,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Minimal high-level information for a firewall rule group. The action
    # ListFirewallRuleGroups returns an array of these objects.
    #
    # To retrieve full information for a firewall rule group, call
    # GetFirewallRuleGroup and ListFirewallRules.
    #
    # @!attribute [rw] id
    #   The ID of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule group.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID for the account that created the
    #   rule group. When a rule group is shared with your account, this is
    #   the account that has shared the rule group with you.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string defined by you to identify the request. This allows
    #   you to retry failed requests without the risk of running the
    #   operation twice. This can be any unique string, for example, a
    #   timestamp.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Whether the rule group is shared with other Amazon Web Services
    #   accounts, or was shared with the current account by another Amazon
    #   Web Services account. Sharing is configured through Resource Access
    #   Manager (RAM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/FirewallRuleGroupMetadata AWS API Documentation
    #
    class FirewallRuleGroupMetadata < Struct.new(
      :id,
      :arn,
      :name,
      :owner_id,
      :creator_request_id,
      :share_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID of the VPC from Amazon VPC that the configuration is for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallConfigRequest AWS API Documentation
    #
    class GetFirewallConfigRequest < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_config
    #   Configuration of the firewall behavior provided by DNS Firewall for
    #   a single VPC from AmazonVPC.
    #   @return [Types::FirewallConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallConfigResponse AWS API Documentation
    #
    class GetFirewallConfigResponse < Struct.new(
      :firewall_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallDomainListRequest AWS API Documentation
    #
    class GetFirewallDomainListRequest < Struct.new(
      :firewall_domain_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list
    #   The domain list that you requested.
    #   @return [Types::FirewallDomainList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallDomainListResponse AWS API Documentation
    #
    class GetFirewallDomainListResponse < Struct.new(
      :firewall_domain_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupAssociationRequest AWS API Documentation
    #
    class GetFirewallRuleGroupAssociationRequest < Struct.new(
      :firewall_rule_group_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association
    #   The association that you requested.
    #   @return [Types::FirewallRuleGroupAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupAssociationResponse AWS API Documentation
    #
    class GetFirewallRuleGroupAssociationResponse < Struct.new(
      :firewall_rule_group_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupPolicyRequest AWS API Documentation
    #
    class GetFirewallRuleGroupPolicyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_policy
    #   The Identity and Access Management (Amazon Web Services IAM) policy
    #   for sharing the specified rule group. You can use the policy to
    #   share the rule group using Resource Access Manager (RAM).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupPolicyResponse AWS API Documentation
    #
    class GetFirewallRuleGroupPolicyResponse < Struct.new(
      :firewall_rule_group_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupRequest AWS API Documentation
    #
    class GetFirewallRuleGroupRequest < Struct.new(
      :firewall_rule_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group
    #   A collection of rules used to filter DNS network traffic.
    #   @return [Types::FirewallRuleGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetFirewallRuleGroupResponse AWS API Documentation
    #
    class GetFirewallRuleGroupResponse < Struct.new(
      :firewall_rule_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   Resource ID of the Amazon VPC that you want to get information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverConfigRequest AWS API Documentation
    #
    class GetResolverConfigRequest < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_config
    #   Information about the behavior configuration of Route 53 Resolver
    #   behavior for the VPC you specified in the `GetResolverConfig`
    #   request.
    #   @return [Types::ResolverConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverConfigResponse AWS API Documentation
    #
    class GetResolverConfigResponse < Struct.new(
      :resolver_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID of the virtual private cloud (VPC) for the DNSSEC validation
    #   status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverDnssecConfigRequest AWS API Documentation
    #
    class GetResolverDnssecConfigRequest < Struct.new(
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_dnssec_config
    #   The information about a configuration for DNSSEC validation.
    #   @return [Types::ResolverDnssecConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverDnssecConfigResponse AWS API Documentation
    #
    class GetResolverDnssecConfigResponse < Struct.new(
      :resolver_dnssec_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to get information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpointRequest AWS API Documentation
    #
    class GetResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   Information about the Resolver endpoint that you specified in a
    #   `GetResolverEndpoint` request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpointResponse AWS API Documentation
    #
    class GetResolverEndpointResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_association_id
    #   The ID of the Resolver query logging configuration association that
    #   you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigAssociationRequest AWS API Documentation
    #
    class GetResolverQueryLogConfigAssociationRequest < Struct.new(
      :resolver_query_log_config_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_association
    #   Information about the Resolver query logging configuration
    #   association that you specified in a `GetQueryLogConfigAssociation`
    #   request.
    #   @return [Types::ResolverQueryLogConfigAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigAssociationResponse AWS API Documentation
    #
    class GetResolverQueryLogConfigAssociationResponse < Struct.new(
      :resolver_query_log_config_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the query logging configuration that you want to get the
    #   query logging policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigPolicyRequest AWS API Documentation
    #
    class GetResolverQueryLogConfigPolicyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_policy
    #   Information about the query logging policy for the query logging
    #   configuration that you specified in a
    #   `GetResolverQueryLogConfigPolicy` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigPolicyResponse AWS API Documentation
    #
    class GetResolverQueryLogConfigPolicyResponse < Struct.new(
      :resolver_query_log_config_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config_id
    #   The ID of the Resolver query logging configuration that you want to
    #   get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigRequest AWS API Documentation
    #
    class GetResolverQueryLogConfigRequest < Struct.new(
      :resolver_query_log_config_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_query_log_config
    #   Information about the Resolver query logging configuration that you
    #   specified in a `GetQueryLogConfig` request.
    #   @return [Types::ResolverQueryLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverQueryLogConfigResponse AWS API Documentation
    #
    class GetResolverQueryLogConfigResponse < Struct.new(
      :resolver_query_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_association_id
    #   The ID of the Resolver rule association that you want to get
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleAssociationRequest AWS API Documentation
    #
    class GetResolverRuleAssociationRequest < Struct.new(
      :resolver_rule_association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_association
    #   Information about the Resolver rule association that you specified
    #   in a `GetResolverRuleAssociation` request.
    #   @return [Types::ResolverRuleAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleAssociationResponse AWS API Documentation
    #
    class GetResolverRuleAssociationResponse < Struct.new(
      :resolver_rule_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ID of the Resolver rule that you want to get the Resolver rule
    #   policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRulePolicyRequest AWS API Documentation
    #
    class GetResolverRulePolicyRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_policy
    #   The Resolver rule policy for the rule that you specified in a
    #   `GetResolverRulePolicy` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRulePolicyResponse AWS API Documentation
    #
    class GetResolverRulePolicyResponse < Struct.new(
      :resolver_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleRequest AWS API Documentation
    #
    class GetResolverRuleRequest < Struct.new(
      :resolver_rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule
    #   Information about the Resolver rule that you specified in a
    #   `GetResolverRule` request.
    #   @return [Types::ResolverRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleResponse AWS API Documentation
    #
    class GetResolverRuleResponse < Struct.new(
      :resolver_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list that you want to modify with the import
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   What you want DNS Firewall to do with the domains that are listed in
    #   the file. This must be set to `REPLACE`, which updates the domain
    #   list to exactly match the list in the file.
    #   @return [String]
    #
    # @!attribute [rw] domain_file_url
    #   The fully qualified URL or URI of the file stored in Amazon Simple
    #   Storage Service (Amazon S3) that contains the list of domains to
    #   import.
    #
    #   The file must be in an S3 bucket that's in the same Region as your
    #   DNS Firewall. The file must be a text file and must contain a single
    #   domain per line.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ImportFirewallDomainsRequest AWS API Documentation
    #
    class ImportFirewallDomainsRequest < Struct.new(
      :firewall_domain_list_id,
      :operation,
      :domain_file_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The Id of the firewall domain list that DNS Firewall just updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the import request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the list, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ImportFirewallDomainsResponse AWS API Documentation
    #
    class ImportFirewallDomainsResponse < Struct.new(
      :id,
      :name,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # We encountered an unknown error. Try again in a few minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value that you specified for `NextToken` in a `List` request
    # isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters in this request are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   For an `InvalidParameterException` error, the name of the parameter
    #   that's invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Resolver rule policy is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidPolicyDocument AWS API Documentation
    #
    class InvalidPolicyDocument < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified tag is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidTagException AWS API Documentation
    #
    class InvalidTagException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # In a [CreateResolverEndpoint][1] request, the IP address that DNS
    # queries originate from (for outbound endpoints) or that you forward
    # DNS queries to (for inbound endpoints). `IpAddressRequest` also
    # includes the ID of the subnet that contains the IP address.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet that contains the IP address.
    #   @return [String]
    #
    # @!attribute [rw] ip
    #   The IPv4 address that you want to use for DNS queries.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6
    #   The IPv6 address that you want to use for DNS queries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/IpAddressRequest AWS API Documentation
    #
    class IpAddressRequest < Struct.new(
      :subnet_id,
      :ip,
      :ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the response to a [GetResolverEndpoint][1] request, information
    # about the IP addresses that the Resolver endpoint uses for DNS
    # queries.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #
    # @!attribute [rw] ip_id
    #   The ID of one IP address.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of one subnet.
    #   @return [String]
    #
    # @!attribute [rw] ip
    #   One IPv4 address that the Resolver endpoint uses for DNS queries.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6
    #   One IPv6 address that the Resolver endpoint uses for DNS queries.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A status code that gives the current status of the request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message that provides additional information about the status of
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the IP address was created, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the IP address was last modified, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/IpAddressResponse AWS API Documentation
    #
    class IpAddressResponse < Struct.new(
      :ip_id,
      :subnet_id,
      :ip,
      :ipv_6,
      :status,
      :status_message,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # In an [UpdateResolverEndpoint][1] request, information about an IP
    # address to update.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html
    #
    # @!attribute [rw] ip_id
    #   *Only when removing an IP address from a Resolver endpoint*: The ID
    #   of the IP address that you want to remove. To get this ID, use
    #   [GetResolverEndpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet that includes the IP address that you want to
    #   update. To get this ID, use [GetResolverEndpoint][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] ip
    #   The new IPv4 address.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6
    #   The new IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/IpAddressUpdate AWS API Documentation
    #
    class IpAddressUpdate < Struct.new(
      :ip_id,
      :subnet_id,
      :ip,
      :ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request caused one or more limits to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   For a `LimitExceededException` error, the type of resource that
    #   exceeded the current limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallConfigsRequest AWS API Documentation
    #
    class ListFirewallConfigsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_configs
    #   The configurations for the firewall behavior provided by DNS
    #   Firewall for VPCs from Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<Types::FirewallConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallConfigsResponse AWS API Documentation
    #
    class ListFirewallConfigsResponse < Struct.new(
      :next_token,
      :firewall_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomainListsRequest AWS API Documentation
    #
    class ListFirewallDomainListsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_lists
    #   A list of the domain lists that you have defined.
    #
    #   This might be a partial list of the domain lists that you've
    #   defined. For information, see `MaxResults`.
    #   @return [Array<Types::FirewallDomainListMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomainListsResponse AWS API Documentation
    #
    class ListFirewallDomainListsResponse < Struct.new(
      :next_token,
      :firewall_domain_lists)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list whose domains you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomainsRequest AWS API Documentation
    #
    class ListFirewallDomainsRequest < Struct.new(
      :firewall_domain_list_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   A list of the domains in the firewall domain list.
    #
    #   This might be a partial list of the domains that you've defined in
    #   the domain list. For information, see `MaxResults`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallDomainsResponse AWS API Documentation
    #
    class ListFirewallDomainsResponse < Struct.new(
      :next_token,
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   retrieve the associations for. Leave this blank to retrieve
    #   associations for any rule group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the VPC that you want to retrieve the
    #   associations for. Leave this blank to retrieve associations for any
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that are associated with a single VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The association `Status` setting that you want DNS Firewall to
    #   filter on for the list. If you don't specify this, then DNS
    #   Firewall returns all associations, regardless of status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroupAssociationsRequest AWS API Documentation
    #
    class ListFirewallRuleGroupAssociationsRequest < Struct.new(
      :firewall_rule_group_id,
      :vpc_id,
      :priority,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_group_associations
    #   A list of your firewall rule group associations.
    #
    #   This might be a partial list of the associations that you have
    #   defined. For information, see `MaxResults`.
    #   @return [Array<Types::FirewallRuleGroupAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroupAssociationsResponse AWS API Documentation
    #
    class ListFirewallRuleGroupAssociationsResponse < Struct.new(
      :next_token,
      :firewall_rule_group_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroupsRequest AWS API Documentation
    #
    class ListFirewallRuleGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_groups
    #   A list of your firewall rule groups.
    #
    #   This might be a partial list of the rule groups that you have
    #   defined. For information, see `MaxResults`.
    #   @return [Array<Types::FirewallRuleGroupMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRuleGroupsResponse AWS API Documentation
    #
    class ListFirewallRuleGroupsResponse < Struct.new(
      :next_token,
      :firewall_rule_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group that you want to
    #   retrieve the rules for.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Optional additional filter for the rules to retrieve.
    #
    #   The setting that determines the processing order of the rules in a
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   Optional additional filter for the rules to retrieve.
    #
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request to go through but send an alert to
    #     the logs.
    #
    #   * `BLOCK` - Disallow the request. If this is specified, additional
    #     handling details are provided in the rule's `BlockResponse`
    #     setting.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want Resolver to return for
    #   this request. If more objects are available, in the response,
    #   Resolver provides a `NextToken` value that you can use in a
    #   subsequent call to get the next batch of objects.
    #
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 objects.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first call to this list request, omit this value.
    #
    #   When you request a list of objects, Resolver returns at most the
    #   number of objects specified in `MaxResults`. If more objects are
    #   available for retrieval, Resolver returns a `NextToken` value in the
    #   response. To retrieve the next batch of objects, use the token that
    #   was returned for the prior request in your next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRulesRequest AWS API Documentation
    #
    class ListFirewallRulesRequest < Struct.new(
      :firewall_rule_group_id,
      :priority,
      :action,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If objects are still available for retrieval, Resolver returns this
    #   token in the response. To retrieve the next batch of objects,
    #   provide this token in your next request.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rules
    #   A list of the rules that you have defined.
    #
    #   This might be a partial list of the firewall rules that you've
    #   defined. For information, see `MaxResults`.
    #   @return [Array<Types::FirewallRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListFirewallRulesResponse AWS API Documentation
    #
    class ListFirewallRulesResponse < Struct.new(
      :next_token,
      :firewall_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of Resolver configurations that you want to
    #   return in the response to a `ListResolverConfigs` request. If you
    #   don't specify a value for `MaxResults`, up to 100 Resolver
    #   configurations are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) If the current Amazon Web Services account has more than
    #   `MaxResults` Resolver configurations, use `NextToken` to get the
    #   second and subsequent pages of results.
    #
    #   For the first `ListResolverConfigs` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverConfigsRequest AWS API Documentation
    #
    class ListResolverConfigsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If a response includes the last of the Resolver configurations that
    #   are associated with the current Amazon Web Services account,
    #   `NextToken` doesn't appear in the response.
    #
    #   If a response doesn't include the last of the configurations, you
    #   can get more configurations by submitting another
    #   `ListResolverConfigs` request. Get the value of `NextToken` that
    #   Amazon Route 53 returned in the previous response and include it in
    #   `NextToken` in the next request.
    #   @return [String]
    #
    # @!attribute [rw] resolver_configs
    #   An array that contains one `ResolverConfigs` element for each
    #   Resolver configuration that is associated with the current Amazon
    #   Web Services account.
    #   @return [Array<Types::ResolverConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverConfigsResponse AWS API Documentation
    #
    class ListResolverConfigsResponse < Struct.new(
      :next_token,
      :resolver_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   *Optional*: An integer that specifies the maximum number of DNSSEC
    #   configuration results that you want Amazon Route 53 to return. If
    #   you don't specify a value for `MaxResults`, Route 53 returns up to
    #   100 configuration per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) If the current Amazon Web Services account has more than
    #   `MaxResults` DNSSEC configurations, use `NextToken` to get the
    #   second and subsequent pages of results.
    #
    #   For the first `ListResolverDnssecConfigs` request, omit this value.
    #
    #   For the second and subsequent requests, get the value of `NextToken`
    #   from the previous response and specify that value for `NextToken` in
    #   the request.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of objects.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverDnssecConfigsRequest AWS API Documentation
    #
    class ListResolverDnssecConfigsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If a response includes the last of the DNSSEC configurations that
    #   are associated with the current Amazon Web Services account,
    #   `NextToken` doesn't appear in the response.
    #
    #   If a response doesn't include the last of the configurations, you
    #   can get more configurations by submitting another
    #   [ListResolverDnssecConfigs][1] request. Get the value of `NextToken`
    #   that Amazon Route 53 returned in the previous response and include
    #   it in `NextToken` in the next request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListResolverDnssecConfigs.html
    #   @return [String]
    #
    # @!attribute [rw] resolver_dnssec_configs
    #   An array that contains one [ResolverDnssecConfig][1] element for
    #   each configuration for DNSSEC validation that is associated with the
    #   current Amazon Web Services account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResolverDnssecConfig.html
    #   @return [Array<Types::ResolverDnssecConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverDnssecConfigsResponse AWS API Documentation
    #
    class ListResolverDnssecConfigsResponse < Struct.new(
      :next_token,
      :resolver_dnssec_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to get IP addresses
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of IP addresses that you want to return in the
    #   response to a `ListResolverEndpointIpAddresses` request. If you
    #   don't specify a value for `MaxResults`, Resolver returns up to 100
    #   IP addresses.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverEndpointIpAddresses` request, omit this
    #   value.
    #
    #   If the specified Resolver endpoint has more than `MaxResults` IP
    #   addresses, you can submit another `ListResolverEndpointIpAddresses`
    #   request to get the next group of IP addresses. In the next request,
    #   specify the value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointIpAddressesRequest AWS API Documentation
    #
    class ListResolverEndpointIpAddressesRequest < Struct.new(
      :resolver_endpoint_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the specified endpoint has more than `MaxResults` IP addresses,
    #   you can submit another `ListResolverEndpointIpAddresses` request to
    #   get the next group of IP addresses. In the next request, specify the
    #   value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The value that you specified for `MaxResults` in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_addresses
    #   Information about the IP addresses in your VPC that DNS queries
    #   originate from (for outbound endpoints) or that you forward DNS
    #   queries to (for inbound endpoints).
    #   @return [Array<Types::IpAddressResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointIpAddressesResponse AWS API Documentation
    #
    class ListResolverEndpointIpAddressesResponse < Struct.new(
      :next_token,
      :max_results,
      :ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of Resolver endpoints that you want to return in
    #   the response to a `ListResolverEndpoints` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100
    #   Resolver endpoints.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverEndpoints` request, omit this value.
    #
    #   If you have more than `MaxResults` Resolver endpoints, you can
    #   submit another `ListResolverEndpoints` request to get the next group
    #   of Resolver endpoints. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of Resolver endpoints,
    #   such as all inbound Resolver endpoints.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverEndpoints` request
    #   and specify the `NextToken` parameter, you must use the same values
    #   for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointsRequest AWS API Documentation
    #
    class ListResolverEndpointsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` IP addresses match the specified criteria,
    #   you can submit another `ListResolverEndpoint` request to get the
    #   next group of results. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The value that you specified for `MaxResults` in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] resolver_endpoints
    #   The Resolver endpoints that were created by using the current Amazon
    #   Web Services account, and that match the specified filters, if any.
    #   @return [Array<Types::ResolverEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointsResponse AWS API Documentation
    #
    class ListResolverEndpointsResponse < Struct.new(
      :next_token,
      :max_results,
      :resolver_endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of query logging associations that you want to
    #   return in the response to a `ListResolverQueryLogConfigAssociations`
    #   request. If you don't specify a value for `MaxResults`, Resolver
    #   returns up to 100 query logging associations.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverQueryLogConfigAssociations` request, omit
    #   this value.
    #
    #   If there are more than `MaxResults` query logging associations that
    #   match the values that you specify for `Filters`, you can submit
    #   another `ListResolverQueryLogConfigAssociations` request to get the
    #   next group of associations. In the next request, specify the value
    #   of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of query logging
    #   associations.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same values for `Filters`,
    #   if any, as in the previous request.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_by
    #   The element that you want Resolver to sort query logging
    #   associations by.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same value for `SortBy`, if
    #   any, as in the previous request.
    #
    #    </note>
    #
    #   Valid values include the following elements:
    #
    #   * `CreationTime`: The ID of the query logging association.
    #
    #   * `Error`: If the value of `Status` is `FAILED`, the value of
    #     `Error` indicates the cause:
    #
    #     * `DESTINATION_NOT_FOUND`: The specified destination (for example,
    #       an Amazon S3 bucket) was deleted.
    #
    #     * `ACCESS_DENIED`: Permissions don't allow sending logs to the
    #       destination.
    #
    #     If `Status` is a value other than `FAILED`, `ERROR` is null.
    #
    #   * `Id`: The ID of the query logging association
    #
    #   * `ResolverQueryLogConfigId`: The ID of the query logging
    #     configuration
    #
    #   * `ResourceId`: The ID of the VPC that is associated with the query
    #     logging configuration
    #
    #   * `Status`: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`: Resolver is creating an association between an
    #       Amazon VPC and a query logging configuration.
    #
    #     * `CREATED`: The association between an Amazon VPC and a query
    #       logging configuration was successfully created. Resolver is
    #       logging queries that originate in the specified VPC.
    #
    #     * `DELETING`: Resolver is deleting this query logging association.
    #
    #     * `FAILED`: Resolver either couldn't create or couldn't delete
    #       the query logging association. Here are two common causes:
    #
    #       * The specified destination (for example, an Amazon S3 bucket)
    #         was deleted.
    #
    #       * Permissions don't allow sending logs to the destination.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   If you specified a value for `SortBy`, the order that you want query
    #   logging associations to be listed in, `ASCENDING` or `DESCENDING`.
    #
    #   <note markdown="1"> If you submit a second or subsequent
    #   `ListResolverQueryLogConfigAssociations` request and specify the
    #   `NextToken` parameter, you must use the same value for `SortOrder`,
    #   if any, as in the previous request.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigAssociationsRequest AWS API Documentation
    #
    class ListResolverQueryLogConfigAssociationsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than `MaxResults` query logging associations, you
    #   can submit another `ListResolverQueryLogConfigAssociations` request
    #   to get the next group of associations. In the next request, specify
    #   the value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of query logging associations that were created by
    #   the current account in the specified Region. This count can differ
    #   from the number of associations that are returned in a
    #   `ListResolverQueryLogConfigAssociations` response, depending on the
    #   values that you specify in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] total_filtered_count
    #   The total number of query logging associations that were created by
    #   the current account in the specified Region and that match the
    #   filters that were specified in the
    #   `ListResolverQueryLogConfigAssociations` request. For the total
    #   number of associations that were created by the current account in
    #   the specified Region, see `TotalCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] resolver_query_log_config_associations
    #   A list that contains one `ResolverQueryLogConfigAssociations`
    #   element for each query logging association that matches the values
    #   that you specified for `Filter`.
    #   @return [Array<Types::ResolverQueryLogConfigAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigAssociationsResponse AWS API Documentation
    #
    class ListResolverQueryLogConfigAssociationsResponse < Struct.new(
      :next_token,
      :total_count,
      :total_filtered_count,
      :resolver_query_log_config_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of query logging configurations that you want to
    #   return in the response to a `ListResolverQueryLogConfigs` request.
    #   If you don't specify a value for `MaxResults`, Resolver returns up
    #   to 100 query logging configurations.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverQueryLogConfigs` request, omit this
    #   value.
    #
    #   If there are more than `MaxResults` query logging configurations
    #   that match the values that you specify for `Filters`, you can submit
    #   another `ListResolverQueryLogConfigs` request to get the next group
    #   of configurations. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of query logging
    #   configurations.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   values for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] sort_by
    #   The element that you want Resolver to sort query logging
    #   configurations by.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   value for `SortBy`, if any, as in the previous request.
    #
    #    </note>
    #
    #   Valid values include the following elements:
    #
    #   * `Arn`: The ARN of the query logging configuration
    #
    #   * `AssociationCount`: The number of VPCs that are associated with
    #     the specified configuration
    #
    #   * `CreationTime`: The date and time that Resolver returned when the
    #     configuration was created
    #
    #   * `CreatorRequestId`: The value that was specified for
    #     `CreatorRequestId` when the configuration was created
    #
    #   * `DestinationArn`: The location that logs are sent to
    #
    #   * `Id`: The ID of the configuration
    #
    #   * `Name`: The name of the configuration
    #
    #   * `OwnerId`: The Amazon Web Services account number of the account
    #     that created the configuration
    #
    #   * `ShareStatus`: Whether the configuration is shared with other
    #     Amazon Web Services accounts or shared with the current account by
    #     another Amazon Web Services account. Sharing is configured through
    #     Resource Access Manager (RAM).
    #
    #   * `Status`: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`: Resolver is creating the query logging
    #       configuration.
    #
    #     * `CREATED`: The query logging configuration was successfully
    #       created. Resolver is logging queries that originate in the
    #       specified VPC.
    #
    #     * `DELETING`: Resolver is deleting this query logging
    #       configuration.
    #
    #     * `FAILED`: Resolver either couldn't create or couldn't delete
    #       the query logging configuration. Here are two common causes:
    #
    #       * The specified destination (for example, an Amazon S3 bucket)
    #         was deleted.
    #
    #       * Permissions don't allow sending logs to the destination.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   If you specified a value for `SortBy`, the order that you want query
    #   logging configurations to be listed in, `ASCENDING` or `DESCENDING`.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverQueryLogConfigs`
    #   request and specify the `NextToken` parameter, you must use the same
    #   value for `SortOrder`, if any, as in the previous request.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigsRequest AWS API Documentation
    #
    class ListResolverQueryLogConfigsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than `MaxResults` query logging configurations,
    #   you can submit another `ListResolverQueryLogConfigs` request to get
    #   the next group of configurations. In the next request, specify the
    #   value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] total_count
    #   The total number of query logging configurations that were created
    #   by the current account in the specified Region. This count can
    #   differ from the number of query logging configurations that are
    #   returned in a `ListResolverQueryLogConfigs` response, depending on
    #   the values that you specify in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] total_filtered_count
    #   The total number of query logging configurations that were created
    #   by the current account in the specified Region and that match the
    #   filters that were specified in the `ListResolverQueryLogConfigs`
    #   request. For the total number of query logging configurations that
    #   were created by the current account in the specified Region, see
    #   `TotalCount`.
    #   @return [Integer]
    #
    # @!attribute [rw] resolver_query_log_configs
    #   A list that contains one `ResolverQueryLogConfig` element for each
    #   query logging configuration that matches the values that you
    #   specified for `Filter`.
    #   @return [Array<Types::ResolverQueryLogConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverQueryLogConfigsResponse AWS API Documentation
    #
    class ListResolverQueryLogConfigsResponse < Struct.new(
      :next_token,
      :total_count,
      :total_filtered_count,
      :resolver_query_log_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of rule associations that you want to return in
    #   the response to a `ListResolverRuleAssociations` request. If you
    #   don't specify a value for `MaxResults`, Resolver returns up to 100
    #   rule associations.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverRuleAssociation` request, omit this
    #   value.
    #
    #   If you have more than `MaxResults` rule associations, you can submit
    #   another `ListResolverRuleAssociation` request to get the next group
    #   of rule associations. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of Resolver rules, such
    #   as Resolver rules that are associated with the same VPC ID.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverRuleAssociations`
    #   request and specify the `NextToken` parameter, you must use the same
    #   values for `Filters`, if any, as in the previous request.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRuleAssociationsRequest AWS API Documentation
    #
    class ListResolverRuleAssociationsRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` rule associations match the specified
    #   criteria, you can submit another `ListResolverRuleAssociation`
    #   request to get the next group of results. In the next request,
    #   specify the value of `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The value that you specified for `MaxResults` in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] resolver_rule_associations
    #   The associations that were created between Resolver rules and VPCs
    #   using the current Amazon Web Services account, and that match the
    #   specified filters, if any.
    #   @return [Array<Types::ResolverRuleAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRuleAssociationsResponse AWS API Documentation
    #
    class ListResolverRuleAssociationsResponse < Struct.new(
      :next_token,
      :max_results,
      :resolver_rule_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of Resolver rules that you want to return in the
    #   response to a `ListResolverRules` request. If you don't specify a
    #   value for `MaxResults`, Resolver returns up to 100 Resolver rules.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverRules` request, omit this value.
    #
    #   If you have more than `MaxResults` Resolver rules, you can submit
    #   another `ListResolverRules` request to get the next group of
    #   Resolver rules. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of Resolver rules, such
    #   as all Resolver rules that are associated with the same Resolver
    #   endpoint.
    #
    #   <note markdown="1"> If you submit a second or subsequent `ListResolverRules` request and
    #   specify the `NextToken` parameter, you must use the same values for
    #   `Filters`, if any, as in the previous request.
    #
    #    </note>
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRulesRequest AWS API Documentation
    #
    class ListResolverRulesRequest < Struct.new(
      :max_results,
      :next_token,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` Resolver rules match the specified
    #   criteria, you can submit another `ListResolverRules` request to get
    #   the next group of results. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The value that you specified for `MaxResults` in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] resolver_rules
    #   The Resolver rules that were created using the current Amazon Web
    #   Services account and that match the specified filters, if any.
    #   @return [Array<Types::ResolverRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRulesResponse AWS API Documentation
    #
    class ListResolverRulesResponse < Struct.new(
      :next_token,
      :max_results,
      :resolver_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   list tags for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tags that you want to return in the response
    #   to a `ListTagsForResource` request. If you don't specify a value
    #   for `MaxResults`, Resolver returns up to 100 tags.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListTagsForResource` request, omit this value.
    #
    #   If you have more than `MaxResults` tags, you can submit another
    #   `ListTagsForResource` request to get the next group of tags for the
    #   resource. In the next request, specify the value of `NextToken` from
    #   the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags that are associated with the resource that you specified in
    #   the `ListTagsForResource` request.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If more than `MaxResults` tags match the specified criteria, you can
    #   submit another `ListTagsForResource` request to get the next group
    #   of results. In the next request, specify the value of `NextToken`
    #   from the previous response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the rule group that you want to
    #   share.
    #   @return [String]
    #
    # @!attribute [rw] firewall_rule_group_policy
    #   The Identity and Access Management (Amazon Web Services IAM) policy
    #   to attach to the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutFirewallRuleGroupPolicyRequest AWS API Documentation
    #
    class PutFirewallRuleGroupPolicyRequest < Struct.new(
      :arn,
      :firewall_rule_group_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] return_value
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutFirewallRuleGroupPolicyResponse AWS API Documentation
    #
    class PutFirewallRuleGroupPolicyResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #   @return [String]
    #
    # @!attribute [rw] resolver_query_log_config_policy
    #   An Identity and Access Management policy statement that lists the
    #   query logging configurations that you want to share with another
    #   Amazon Web Services account and the operations that you want the
    #   account to be able to perform. You can specify the following
    #   operations in the `Actions` section of the statement:
    #
    #   * `route53resolver:AssociateResolverQueryLogConfig`
    #
    #   * `route53resolver:DisassociateResolverQueryLogConfig`
    #
    #   * `route53resolver:ListResolverQueryLogConfigAssociations`
    #
    #   * `route53resolver:ListResolverQueryLogConfigs`
    #
    #   In the `Resource` section of the statement, you specify the ARNs for
    #   the query logging configurations that you want to share with the
    #   account that you specified in `Arn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverQueryLogConfigPolicyRequest AWS API Documentation
    #
    class PutResolverQueryLogConfigPolicyRequest < Struct.new(
      :arn,
      :resolver_query_log_config_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to a `PutResolverQueryLogConfigPolicy` request.
    #
    # @!attribute [rw] return_value
    #   Whether the `PutResolverQueryLogConfigPolicy` request was
    #   successful.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverQueryLogConfigPolicyResponse AWS API Documentation
    #
    class PutResolverQueryLogConfigPolicyResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule that you want to share
    #   with another account.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_policy
    #   An Identity and Access Management policy statement that lists the
    #   rules that you want to share with another Amazon Web Services
    #   account and the operations that you want the account to be able to
    #   perform. You can specify the following operations in the `Action`
    #   section of the statement:
    #
    #   * `route53resolver:GetResolverRule`
    #
    #   * `route53resolver:AssociateResolverRule`
    #
    #   * `route53resolver:DisassociateResolverRule`
    #
    #   * `route53resolver:ListResolverRules`
    #
    #   * `route53resolver:ListResolverRuleAssociations`
    #
    #   In the `Resource` section of the statement, specify the ARN for the
    #   rule that you want to share with another account. Specify the same
    #   ARN that you specified in `Arn`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverRulePolicyRequest AWS API Documentation
    #
    class PutResolverRulePolicyRequest < Struct.new(
      :arn,
      :resolver_rule_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to a `PutResolverRulePolicy` request.
    #
    # @!attribute [rw] return_value
    #   Whether the `PutResolverRulePolicy` request was successful.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverRulePolicyResponse AWS API Documentation
    #
    class PutResolverRulePolicyResponse < Struct.new(
      :return_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about a Resolver
    # configuration for a VPC.
    #
    # @!attribute [rw] id
    #   ID for the Resolver configuration.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon Virtual Private Cloud VPC that you're
    #   configuring Resolver for.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner account ID of the Amazon Virtual Private Cloud VPC.
    #   @return [String]
    #
    # @!attribute [rw] autodefined_reverse
    #   The status of whether or not the Resolver will create autodefined
    #   rules for reverse DNS lookups. This is enabled by default. The
    #   status can be one of following:
    #
    #   * **ENABLING:** Autodefined rules for reverse DNS lookups are being
    #     enabled but are not complete.
    #
    #   * **ENABLED:** Autodefined rules for reverse DNS lookups are
    #     enabled.
    #
    #   * **DISABLING:** Autodefined rules for reverse DNS lookups are being
    #     disabled but are not complete.
    #
    #   * **DISABLED:** Autodefined rules for reverse DNS lookups are
    #     disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverConfig AWS API Documentation
    #
    class ResolverConfig < Struct.new(
      :id,
      :resource_id,
      :owner_id,
      :autodefined_reverse)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about a configuration for
    # DNSSEC validation.
    #
    # @!attribute [rw] id
    #   The ID for a configuration for DNSSEC validation.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The owner account ID of the virtual private cloud (VPC) for a
    #   configuration for DNSSEC validation.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the virtual private cloud (VPC) that you're configuring
    #   the DNSSEC validation status for.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status for a DNSSEC configuration. The status can be
    #   one of the following:
    #
    #   * **ENABLING:** DNSSEC validation is being enabled but is not
    #     complete.
    #
    #   * **ENABLED:** DNSSEC validation is enabled.
    #
    #   * **DISABLING:** DNSSEC validation is being disabled but is not
    #     complete.
    #
    #   * **DISABLED** DNSSEC validation is disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverDnssecConfig AWS API Documentation
    #
    class ResolverDnssecConfig < Struct.new(
      :id,
      :owner_id,
      :resource_id,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the response to a [CreateResolverEndpoint][1],
    # [DeleteResolverEndpoint][2], [GetResolverEndpoint][3], Updates the
    # name, or ResolverEndpointType for an endpoint, or
    # [UpdateResolverEndpoint][4] request, a complex type that contains
    # settings for an existing inbound or outbound Resolver endpoint.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverEndpoint.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html
    #
    # @!attribute [rw] id
    #   The ID of the Resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request that created the
    #   Resolver endpoint. The `CreatorRequestId` allows failed requests to
    #   be retried without the risk of running the operation twice.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the Resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you assigned to the Resolver endpoint when you
    #   submitted a [CreateResolverEndpoint][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The ID of one or more security groups that control access to this
    #   VPC. The security group must include one or more inbound rules (for
    #   inbound endpoints) or outbound rules (for outbound endpoints).
    #   Inbound and outbound rules must allow TCP and UDP access. For
    #   inbound access, open port 53. For outbound access, open the port
    #   that you're using for DNS queries on your network.
    #   @return [Array<String>]
    #
    # @!attribute [rw] direction
    #   Indicates whether the Resolver endpoint allows inbound or outbound
    #   DNS queries:
    #
    #   * `INBOUND`: allows DNS queries to your VPC from your network
    #
    #   * `OUTBOUND`: allows DNS queries from your VPC to your network
    #   @return [String]
    #
    # @!attribute [rw] ip_address_count
    #   The number of IP addresses that the Resolver endpoint can use for
    #   DNS queries.
    #   @return [Integer]
    #
    # @!attribute [rw] host_vpc_id
    #   The ID of the VPC that you want to create the Resolver endpoint in.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the Resolver endpoint.
    #   Valid values include the following:
    #
    #   * `CREATING`: Resolver is creating and configuring one or more
    #     Amazon VPC network interfaces for this endpoint.
    #
    #   * `OPERATIONAL`: The Amazon VPC network interfaces for this endpoint
    #     are correctly configured and able to pass inbound or outbound DNS
    #     queries between your network and Resolver.
    #
    #   * `UPDATING`: Resolver is associating or disassociating one or more
    #     network interfaces with this endpoint.
    #
    #   * `AUTO_RECOVERING`: Resolver is trying to recover one or more of
    #     the network interfaces that are associated with this endpoint.
    #     During the recovery process, the endpoint functions with limited
    #     capacity because of the limit on the number of DNS queries per IP
    #     address (per network interface). For the current limit, see
    #     [Limits on Route 53 Resolver][1].
    #
    #   * `ACTION_NEEDED`: This endpoint is unhealthy, and Resolver can't
    #     automatically recover it. To resolve the problem, we recommend
    #     that you check each IP address that you associated with the
    #     endpoint. For each IP address that isn't available, add another
    #     IP address and then delete the IP address that isn't available.
    #     (An endpoint must always include at least two IP addresses.) A
    #     status of `ACTION_NEEDED` can have a variety of causes. Here are
    #     two common causes:
    #
    #     * One or more of the network interfaces that are associated with
    #       the endpoint were deleted using Amazon VPC.
    #
    #     * The network interface couldn't be created for some reason
    #       that's outside the control of Resolver.
    #
    #   * `DELETING`: Resolver is deleting this endpoint and the associated
    #     network interfaces.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-resolver
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of the Resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the endpoint was created, in Unix time format
    #   and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the endpoint was last modified, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] resolver_endpoint_type
    #   The Resolver endpoint IP address type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverEndpoint AWS API Documentation
    #
    class ResolverEndpoint < Struct.new(
      :id,
      :creator_request_id,
      :arn,
      :name,
      :security_group_ids,
      :direction,
      :ip_address_count,
      :host_vpc_id,
      :status,
      :status_message,
      :creation_time,
      :modification_time,
      :resolver_endpoint_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the response to a [CreateResolverQueryLogConfig][1],
    # [DeleteResolverQueryLogConfig][2], [GetResolverQueryLogConfig][3], or
    # [ListResolverQueryLogConfigs][4] request, a complex type that contains
    # settings for one query logging configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverQueryLogConfig.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverQueryLogConfig.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfig.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html
    #
    # @!attribute [rw] id
    #   The ID for the query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The Amazon Web Services account ID for the account that created the
    #   query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the specified query logging configuration. Valid
    #   values include the following:
    #
    #   * `CREATING`: Resolver is creating the query logging configuration.
    #
    #   * `CREATED`: The query logging configuration was successfully
    #     created. Resolver is logging queries that originate in the
    #     specified VPC.
    #
    #   * `DELETING`: Resolver is deleting this query logging configuration.
    #
    #   * `FAILED`: Resolver can't deliver logs to the location that is
    #     specified in the query logging configuration. Here are two common
    #     causes:
    #
    #     * The specified destination (for example, an Amazon S3 bucket) was
    #       deleted.
    #
    #     * Permissions don't allow sending logs to the destination.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   An indication of whether the query logging configuration is shared
    #   with other Amazon Web Services accounts, or was shared with the
    #   current account by another Amazon Web Services account. Sharing is
    #   configured through Resource Access Manager (RAM).
    #   @return [String]
    #
    # @!attribute [rw] association_count
    #   The number of VPCs that are associated with the query logging
    #   configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The ARN for the query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource that you want Resolver to send query logs:
    #   an Amazon S3 bucket, a CloudWatch Logs log group, or a Kinesis Data
    #   Firehose delivery stream.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request that created the query
    #   logging configuration. The `CreatorRequestId` allows failed requests
    #   to be retried without the risk of running the operation twice.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the query logging configuration was created,
    #   in Unix time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverQueryLogConfig AWS API Documentation
    #
    class ResolverQueryLogConfig < Struct.new(
      :id,
      :owner_id,
      :status,
      :share_status,
      :association_count,
      :arn,
      :name,
      :destination_arn,
      :creator_request_id,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the response to an [AssociateResolverQueryLogConfig][1],
    # [DisassociateResolverQueryLogConfig][2],
    # [GetResolverQueryLogConfigAssociation][3], or
    # [ListResolverQueryLogConfigAssociations][4], request, a complex type
    # that contains settings for a specified association between an Amazon
    # VPC and a query logging configuration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfigAssociation.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html
    #
    # @!attribute [rw] id
    #   The ID of the query logging association.
    #   @return [String]
    #
    # @!attribute [rw] resolver_query_log_config_id
    #   The ID of the query logging configuration that a VPC is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the Amazon VPC that is associated with the query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the specified query logging association. Valid values
    #   include the following:
    #
    #   * `CREATING`: Resolver is creating an association between an Amazon
    #     VPC and a query logging configuration.
    #
    #   * `CREATED`: The association between an Amazon VPC and a query
    #     logging configuration was successfully created. Resolver is
    #     logging queries that originate in the specified VPC.
    #
    #   * `DELETING`: Resolver is deleting this query logging association.
    #
    #   * `FAILED`: Resolver either couldn't create or couldn't delete the
    #     query logging association.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the value of `Status` is `FAILED`, the value of `Error` indicates
    #   the cause:
    #
    #   * `DESTINATION_NOT_FOUND`: The specified destination (for example,
    #     an Amazon S3 bucket) was deleted.
    #
    #   * `ACCESS_DENIED`: Permissions don't allow sending logs to the
    #     destination.
    #
    #   If the value of `Status` is a value other than `FAILED`, `Error` is
    #   null.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Contains additional information about the error. If the value or
    #   `Error` is null, the value of `ErrorMessage` also is null.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the VPC was associated with the query logging
    #   configuration, in Unix time format and Coordinated Universal Time
    #   (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverQueryLogConfigAssociation AWS API Documentation
    #
    class ResolverQueryLogConfigAssociation < Struct.new(
      :id,
      :resolver_query_log_config_id,
      :resource_id,
      :status,
      :error,
      :error_message,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # For queries that originate in your VPC, detailed information about a
    # Resolver rule, which specifies how to route DNS queries out of the
    # VPC. The `ResolverRule` parameter appears in the response to a
    # [CreateResolverRule][1], [DeleteResolverRule][2],
    # [GetResolverRule][3], [ListResolverRules][4], or
    # [UpdateResolverRule][5] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverRule.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    # [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html
    #
    # @!attribute [rw] id
    #   The ID that Resolver assigned to the Resolver rule when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that you specified when you created the Resolver
    #   rule. `CreatorRequestId` identifies the request and allows failed
    #   requests to be retried without the risk of running the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the Resolver rule specified by
    #   `Id`.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that are specified in `TargetIps`. If a query matches multiple
    #   Resolver rules (example.com and www.example.com), the query is
    #   routed using the Resolver rule that contains the most specific
    #   domain name (www.example.com).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the Resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of a Resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   When you want to forward DNS queries for specified domain name to
    #   resolvers on your network, specify `FORWARD`.
    #
    #   When you have a forwarding rule to forward DNS queries for a domain
    #   to your network and you want Resolver to process queries for a
    #   subdomain of that domain, specify `SYSTEM`.
    #
    #   For example, to forward DNS queries for example.com to resolvers on
    #   your network, you create a rule and specify `FORWARD` for
    #   `RuleType`. To then have Resolver process queries for
    #   apex.example.com, you create a rule and specify `SYSTEM` for
    #   `RuleType`.
    #
    #   Currently, only Resolver can create rules that have a value of
    #   `RECURSIVE` for `RuleType`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the Resolver rule, which you specified when you created
    #   the Resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   An array that contains the IP addresses and ports that an outbound
    #   endpoint forwards DNS queries to. Typically, these are the IP
    #   addresses of DNS resolvers on your network. Specify IPv4 addresses.
    #   IPv6 is not supported.
    #   @return [Array<Types::TargetAddress>]
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the endpoint that the rule is associated with.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   When a rule is shared with another Amazon Web Services account, the
    #   account ID of the account that the rule is shared with.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Whether the rule is shared and, if so, whether the current account
    #   is sharing the rule with another account, or another account is
    #   sharing the rule with the current account.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the Resolver rule was created, in Unix time
    #   format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] modification_time
    #   The date and time that the Resolver rule was last updated, in Unix
    #   time format and Coordinated Universal Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverRule AWS API Documentation
    #
    class ResolverRule < Struct.new(
      :id,
      :creator_request_id,
      :arn,
      :domain_name,
      :status,
      :status_message,
      :rule_type,
      :name,
      :target_ips,
      :resolver_endpoint_id,
      :owner_id,
      :share_status,
      :creation_time,
      :modification_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # In the response to an [AssociateResolverRule][1],
    # [DisassociateResolverRule][2], or [ListResolverRuleAssociations][3]
    # request, provides information about an association between a Resolver
    # rule and a VPC. The association determines which DNS queries that
    # originate in the VPC are forwarded to your network.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #
    # @!attribute [rw] id
    #   The ID of the association between a Resolver rule and a VPC.
    #   Resolver assigns this value when you submit an
    #   [AssociateResolverRule][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you associated with the VPC that is
    #   specified by `VPCId`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an association between a Resolver rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that you associated the Resolver rule with.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the association between
    #   a Resolver rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of the association between a
    #   Resolver rule and a VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverRuleAssociation AWS API Documentation
    #
    class ResolverRuleAssociation < Struct.new(
      :id,
      :resolver_rule_id,
      :name,
      :vpc_id,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # In an [UpdateResolverRule][1] request, information about the changes
    # that you want to make.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html
    #
    # @!attribute [rw] name
    #   The new name for the Resolver rule. The name that you specify
    #   appears in the Resolver dashboard in the Route 53 console.
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   For DNS queries that originate in your VPC, the new IP addresses
    #   that you want to route outbound DNS queries to.
    #   @return [Array<Types::TargetAddress>]
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the new outbound Resolver endpoint that you want to use to
    #   route DNS queries to the IP addresses that you specify in
    #   `TargetIps`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResolverRuleConfig AWS API Documentation
    #
    class ResolverRuleConfig < Struct.new(
      :name,
      :target_ips,
      :resolver_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you tried to create already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   For a `ResourceExistsException` error, the type of resource that the
    #   error applies to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you tried to update or delete is currently in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   For a `ResourceInUseException` error, the type of resource that is
    #   currently in use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   For a `ResourceNotFoundException` error, the type of resource that
    #   doesn't exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource isn't available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   For a `ResourceUnavailableException` error, the type of resource
    #   that isn't available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # One tag that you want to add to the specified resource. A tag consists
    # of a `Key` (a name for the tag) and a `Value`.
    #
    # @!attribute [rw] key
    #   The name for the tag. For example, if you want to associate Resolver
    #   resources with the account IDs of your customers for billing
    #   purposes, the value of `Key` might be `account-id`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the tag. For example, if `Key` is `account-id`, then
    #   `Value` might be the ID of the customer account that you're
    #   creating the resource for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to add
    #   tags to. To get the ARN for a resource, use the applicable `Get` or
    #   `List` command:
    #
    #   * [GetResolverEndpoint][1]
    #
    #   * [GetResolverRule][2]
    #
    #   * [GetResolverRuleAssociation][3]
    #
    #   * [ListResolverEndpoints][4]
    #
    #   * [ListResolverRuleAssociations][5]
    #
    #   * [ListResolverRules][6]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html
    #   [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    #   [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #   [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the specified resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # In a [CreateResolverRule][1] request, an array of the IPs that you
    # want to forward DNS queries to.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html
    #
    # @!attribute [rw] ip
    #   One IPv4 address that you want to forward DNS queries to.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port at `Ip` that you want to forward DNS queries to.
    #   @return [Integer]
    #
    # @!attribute [rw] ipv_6
    #   One IPv6 address that you want to forward DNS queries to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TargetAddress AWS API Documentation
    #
    class TargetAddress < Struct.new(
      :ip,
      :port,
      :ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled. Try again in a few minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UnknownResourceException AWS API Documentation
    #
    class UnknownResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to
    #   remove tags from. To get the ARN for a resource, use the applicable
    #   `Get` or `List` command:
    #
    #   * [GetResolverEndpoint][1]
    #
    #   * [GetResolverRule][2]
    #
    #   * [GetResolverRuleAssociation][3]
    #
    #   * [ListResolverEndpoints][4]
    #
    #   * [ListResolverRuleAssociations][5]
    #
    #   * [ListResolverRules][6]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html
    #   [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html
    #   [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    #   [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html
    #   [6]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tags that you want to remove to the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_id
    #   The ID of the VPC that the configuration is for.
    #   @return [String]
    #
    # @!attribute [rw] firewall_fail_open
    #   Determines how Route 53 Resolver handles queries during failures,
    #   for example when all traffic that is sent to DNS Firewall fails to
    #   receive a reply.
    #
    #   * By default, fail open is disabled, which means the failure mode is
    #     closed. This approach favors security over availability. DNS
    #     Firewall blocks queries that it is unable to evaluate properly.
    #
    #   * If you enable this option, the failure mode is open. This approach
    #     favors availability over security. DNS Firewall allows queries to
    #     proceed if it is unable to properly evaluate them.
    #
    #   This behavior is only enforced for VPCs that have at least one DNS
    #   Firewall rule group association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallConfigRequest AWS API Documentation
    #
    class UpdateFirewallConfigRequest < Struct.new(
      :resource_id,
      :firewall_fail_open)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_config
    #   Configuration of the firewall behavior provided by DNS Firewall for
    #   a single VPC.
    #   @return [Types::FirewallConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallConfigResponse AWS API Documentation
    #
    class UpdateFirewallConfigResponse < Struct.new(
      :firewall_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list whose domains you want to update.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   What you want DNS Firewall to do with the domains that you are
    #   providing:
    #
    #   * `ADD` - Add the domains to the ones that are already in the domain
    #     list.
    #
    #   * `REMOVE` - Search the domain list for the domains and remove them
    #     from the list.
    #
    #   * `REPLACE` - Update the domain list to exactly match the list that
    #     you are providing.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   A list of domains to use in the update operation.
    #
    #   There is a limit of 1000 domains per request.
    #
    #   Each domain specification in your domain list must satisfy the
    #   following requirements:
    #
    #   * It can optionally start with `*` (asterisk).
    #
    #   * With the exception of the optional starting asterisk, it must only
    #     contain the following characters: `A-Z`, `a-z`, `0-9`, `-`
    #     (hyphen).
    #
    #   * It must be from 1-255 characters in length.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallDomainsRequest AWS API Documentation
    #
    class UpdateFirewallDomainsRequest < Struct.new(
      :firewall_domain_list_id,
      :operation,
      :domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the firewall domain list that DNS Firewall just updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain list.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the `UpdateFirewallDomains` request.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional information about the status of the list, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallDomainsResponse AWS API Documentation
    #
    class UpdateFirewallDomainsResponse < Struct.new(
      :id,
      :name,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association_id
    #   The identifier of the FirewallRuleGroupAssociation.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule group
    #   among the rule groups that you associate with the specified VPC. DNS
    #   Firewall filters VPC traffic starting from the rule group with the
    #   lowest numeric priority setting.
    #
    #   You must specify a unique priority for each rule group that you
    #   associate with a single VPC. To make it easier to insert rule groups
    #   later, leave space between the numbers, for example, use 100, 200,
    #   and so on. You can change the priority setting for a rule group
    #   association after you create it.
    #   @return [Integer]
    #
    # @!attribute [rw] mutation_protection
    #   If enabled, this setting disallows modification or removal of the
    #   association, to help prevent against accidentally altering DNS
    #   firewall protections.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule group association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRuleGroupAssociationRequest AWS API Documentation
    #
    class UpdateFirewallRuleGroupAssociationRequest < Struct.new(
      :firewall_rule_group_association_id,
      :priority,
      :mutation_protection,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_association
    #   The association that you just updated.
    #   @return [Types::FirewallRuleGroupAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRuleGroupAssociationResponse AWS API Documentation
    #
    class UpdateFirewallRuleGroupAssociationResponse < Struct.new(
      :firewall_rule_group_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule_group_id
    #   The unique identifier of the firewall rule group for the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_domain_list_id
    #   The ID of the domain list to use in the rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The setting that determines the processing order of the rule in the
    #   rule group. DNS Firewall processes the rules in a rule group by
    #   order of priority, starting from the lowest setting.
    #
    #   You must specify a unique priority for each rule in a rule group. To
    #   make it easier to insert rules later, leave space between the
    #   numbers, for example, use 100, 200, and so on. You can change the
    #   priority setting for the rules in a rule group at any time.
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   The action that DNS Firewall should take on a DNS query when it
    #   matches one of the domains in the rule's domain list:
    #
    #   * `ALLOW` - Permit the request to go through.
    #
    #   * `ALERT` - Permit the request to go through but send an alert to
    #     the logs.
    #
    #   * `BLOCK` - Disallow the request. This option requires additional
    #     details in the rule's `BlockResponse`.
    #   @return [String]
    #
    # @!attribute [rw] block_response
    #   The way that you want DNS Firewall to block the request. Used for
    #   the rule action setting `BLOCK`.
    #
    #   * `NODATA` - Respond indicating that the query was successful, but
    #     no response is available for it.
    #
    #   * `NXDOMAIN` - Respond indicating that the domain name that's in
    #     the query doesn't exist.
    #
    #   * `OVERRIDE` - Provide a custom override in the response. This
    #     option requires custom handling details in the rule's
    #     `BlockOverride*` settings.
    #   @return [String]
    #
    # @!attribute [rw] block_override_domain
    #   The custom DNS record to send back in response to the query. Used
    #   for the rule action `BLOCK` with a `BlockResponse` setting of
    #   `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_dns_type
    #   The DNS record's type. This determines the format of the record
    #   value that you provided in `BlockOverrideDomain`. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [String]
    #
    # @!attribute [rw] block_override_ttl
    #   The recommended amount of time, in seconds, for the DNS resolver or
    #   web browser to cache the provided override record. Used for the rule
    #   action `BLOCK` with a `BlockResponse` setting of `OVERRIDE`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRuleRequest AWS API Documentation
    #
    class UpdateFirewallRuleRequest < Struct.new(
      :firewall_rule_group_id,
      :firewall_domain_list_id,
      :priority,
      :action,
      :block_response,
      :block_override_domain,
      :block_override_dns_type,
      :block_override_ttl,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] firewall_rule
    #   The firewall rule that you just updated.
    #   @return [Types::FirewallRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateFirewallRuleResponse AWS API Documentation
    #
    class UpdateFirewallRuleResponse < Struct.new(
      :firewall_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the IP address type in response to
    # [UpdateResolverEndpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html
    #
    # @!attribute [rw] ip_id
    #   The ID of the IP address, specified by the `ResolverEndpointId`.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6
    #   The IPv6 address that you want to use for DNS queries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateIpAddress AWS API Documentation
    #
    class UpdateIpAddress < Struct.new(
      :ip_id,
      :ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   Resource ID of the Amazon VPC that you want to update the Resolver
    #   configuration for.
    #   @return [String]
    #
    # @!attribute [rw] autodefined_reverse_flag
    #   Indicates whether or not the Resolver will create autodefined rules
    #   for reverse DNS lookups. This is enabled by default. Disabling this
    #   option will also affect EC2-Classic instances using ClassicLink. For
    #   more information, see [ClassicLink][1] in the *Amazon EC2 guide*.
    #
    #   We are retiring EC2-Classic on August 15, 2022. We recommend that
    #   you migrate from EC2-Classic to a VPC. For more information, see
    #   [Migrate from EC2-Classic to a VPC][2] in the *Amazon EC2 guide* and
    #   the blog [EC2-Classic Networking is Retiring – Here’s How to
    #   Prepare][3].
    #
    #   <note markdown="1"> It can take some time for the status change to be completed.
    #
    #    </note>
    #
    #
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html
    #   [3]: http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverConfigRequest AWS API Documentation
    #
    class UpdateResolverConfigRequest < Struct.new(
      :resource_id,
      :autodefined_reverse_flag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_config
    #   An array that contains settings for the specified Resolver
    #   configuration.
    #   @return [Types::ResolverConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverConfigResponse AWS API Documentation
    #
    class UpdateResolverConfigResponse < Struct.new(
      :resolver_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID of the virtual private cloud (VPC) that you're updating the
    #   DNSSEC validation status for.
    #   @return [String]
    #
    # @!attribute [rw] validation
    #   The new value that you are specifying for DNSSEC validation for the
    #   VPC. The value can be `ENABLE` or `DISABLE`. Be aware that it can
    #   take time for a validation status change to be completed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverDnssecConfigRequest AWS API Documentation
    #
    class UpdateResolverDnssecConfigRequest < Struct.new(
      :resource_id,
      :validation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_dnssec_config
    #   A complex type that contains settings for the specified DNSSEC
    #   configuration.
    #   @return [Types::ResolverDnssecConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverDnssecConfigResponse AWS API Documentation
    #
    class UpdateResolverDnssecConfigResponse < Struct.new(
      :resolver_dnssec_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Resolver endpoint that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] resolver_endpoint_type
    #   Specifies the endpoint type for what type of IP address the endpoint
    #   uses to forward DNS queries.
    #   @return [String]
    #
    # @!attribute [rw] update_ip_addresses
    #   Updates the Resolver endpoint type to IpV4, Ipv6, or dual-stack.
    #   @return [Array<Types::UpdateIpAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpointRequest AWS API Documentation
    #
    class UpdateResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id,
      :name,
      :resolver_endpoint_type,
      :update_ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   The response to an `UpdateResolverEndpoint` request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpointResponse AWS API Documentation
    #
    class UpdateResolverEndpointResponse < Struct.new(
      :resolver_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_id
    #   The ID of the Resolver rule that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The new settings for the Resolver rule.
    #   @return [Types::ResolverRuleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverRuleRequest AWS API Documentation
    #
    class UpdateResolverRuleRequest < Struct.new(
      :resolver_rule_id,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule
    #   The response to an `UpdateResolverRule` request.
    #   @return [Types::ResolverRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverRuleResponse AWS API Documentation
    #
    class UpdateResolverRuleResponse < Struct.new(
      :resolver_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have provided an invalid command. Supported values are `ADD`,
    # `REMOVE`, or `REPLACE` a domain.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
