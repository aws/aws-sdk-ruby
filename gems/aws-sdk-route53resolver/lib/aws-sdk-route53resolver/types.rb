# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # @note When making an API call, you may pass AssociateResolverEndpointIpAddressRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #         ip_address: { # required
    #           ip_id: "ResourceId",
    #           subnet_id: "SubnetId",
    #           ip: "Ip",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass AssociateResolverQueryLogConfigRequest
    #   data as a hash:
    #
    #       {
    #         resolver_query_log_config_id: "ResourceId", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass AssociateResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         resolver_rule_id: "ResourceId", # required
    #         name: "Name",
    #         vpc_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass CreateResolverEndpointRequest
    #   data as a hash:
    #
    #       {
    #         creator_request_id: "CreatorRequestId", # required
    #         name: "Name",
    #         security_group_ids: ["ResourceId"], # required
    #         direction: "INBOUND", # required, accepts INBOUND, OUTBOUND
    #         ip_addresses: [ # required
    #           {
    #             subnet_id: "SubnetId", # required
    #             ip: "Ip",
    #           },
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
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
    #   * `INBOUND`\: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network
    #
    #   * `OUTBOUND`\: Resolver forwards DNS queries from the DNS service
    #     for a VPC to your network
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/CreateResolverEndpointRequest AWS API Documentation
    #
    class CreateResolverEndpointRequest < Struct.new(
      :creator_request_id,
      :name,
      :security_group_ids,
      :direction,
      :ip_addresses,
      :tags)
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

    # @note When making an API call, you may pass CreateResolverQueryLogConfigRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResolverQueryLogConfigName", # required
    #         destination_arn: "DestinationArn", # required
    #         creator_request_id: "CreatorRequestId", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name that you want to give the query logging configuration
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the resource that you want Resolver to send query logs.
    #   You can send query logs to an S3 bucket, a CloudWatch Logs log
    #   group, or a Kinesis Data Firehose delivery stream. Examples of valid
    #   values include the following:
    #
    #   * **S3 bucket**\:
    #
    #     `arn:aws:s3:::examplebucket`
    #
    #     You can optionally append a file prefix to the end of the ARN.
    #
    #     `arn:aws:s3:::examplebucket/development/`
    #
    #   * **CloudWatch Logs log group**\:
    #
    #     `arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*`
    #
    #   * **Kinesis Data Firehose delivery stream**\:
    #
    #     `arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name`
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
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

    # @note When making an API call, you may pass CreateResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         creator_request_id: "CreatorRequestId", # required
    #         name: "Name",
    #         rule_type: "FORWARD", # required, accepts FORWARD, SYSTEM, RECURSIVE
    #         domain_name: "DomainName", # required
    #         target_ips: [
    #           {
    #             ip: "Ip", # required
    #             port: 1,
    #           },
    #         ],
    #         resolver_endpoint_id: "ResourceId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   requests to be retried without the risk of executing the operation
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
    #   specify only IPv4 addresses. Separate IP addresses with a comma.
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

    # @note When making an API call, you may pass DeleteResolverEndpointRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteResolverQueryLogConfigRequest
    #   data as a hash:
    #
    #       {
    #         resolver_query_log_config_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         resolver_rule_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateResolverEndpointIpAddressRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #         ip_address: { # required
    #           ip_id: "ResourceId",
    #           subnet_id: "SubnetId",
    #           ip: "Ip",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateResolverQueryLogConfigRequest
    #   data as a hash:
    #
    #       {
    #         resolver_query_log_config_id: "ResourceId", # required
    #         resource_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DisassociateResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         vpc_id: "ResourceId", # required
    #         resolver_rule_id: "ResourceId", # required
    #       }
    #
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
    # [ListResolverQueryLogConfigs][4], and
    # [ListResolverQueryLogConfigAssociations][5]), an optional
    # specification to return a subset of objects.
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
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       }
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
    #   * `CreatorRequestId`\: The value that you specified when you created
    #     the Resolver endpoint.
    #
    #   * `Direction`\: Whether you want to return inbound or outbound
    #     Resolver endpoints. If you specify `DIRECTION` for `Name`, specify
    #     `INBOUND` or `OUTBOUND` for `Values`.
    #
    #   * `HostVpcId`\: The ID of the VPC that inbound DNS queries pass
    #     through on the way from your network to your VPCs in a region, or
    #     the VPC that outbound queries pass through on the way from your
    #     VPCs to your network. In a [CreateResolverEndpoint][6] request,
    #     `SubnetId` indirectly identifies the VPC. In a
    #     [GetResolverEndpoint][7] request, the VPC ID for a Resolver
    #     endpoint is returned in the `HostVPCId` element.
    #
    #   * `IpAddressCount`\: The number of IP addresses that you have
    #     associated with the Resolver endpoint.
    #
    #   * `Name`\: The name of the Resolver endpoint.
    #
    #   * `SecurityGroupIds`\: The IDs of the VPC security groups that you
    #     specified when you created the Resolver endpoint.
    #
    #   * `Status`\: The status of the Resolver endpoint. If you specify
    #     `Status` for `Name`, specify one of the following status codes for
    #     `Values`\: `CREATING`, `OPERATIONAL`, `UPDATING`,
    #     `AUTO_RECOVERING`, `ACTION_NEEDED`, or `DELETING`. For more
    #     information, see `Status` in [ResolverEndpoint][8].
    #
    #   **ListResolverRules**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `CreatorRequestId`\: The value that you specified when you created
    #     the Resolver rule.
    #
    #   * `DomainName`\: The domain name for which Resolver is forwarding
    #     DNS queries to your network. In the value that you specify for
    #     `Values`, include a trailing dot (.) after the domain name. For
    #     example, if the domain name is example.com, specify the following
    #     value. Note the "." after `com`\:
    #
    #     `example.com.`
    #
    #   * `Name`\: The name of the Resolver rule.
    #
    #   * `ResolverEndpointId`\: The ID of the Resolver endpoint that the
    #     Resolver rule is associated with.
    #
    #     <note markdown="1"> You can filter on the Resolver endpoint only for rules that have a
    #     value of `FORWARD` for `RuleType`.
    #
    #      </note>
    #
    #   * `Status`\: The status of the Resolver rule. If you specify
    #     `Status` for `Name`, specify one of the following status codes for
    #     `Values`\: `COMPLETE`, `DELETING`, `UPDATING`, or `FAILED`.
    #
    #   * `Type`\: The type of the Resolver rule. If you specify `TYPE` for
    #     `Name`, specify `FORWARD` or `SYSTEM` for `Values`.
    #
    #   **ListResolverRuleAssociations**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `Name`\: The name of the Resolver rule association.
    #
    #   * `ResolverRuleId`\: The ID of the Resolver rule that is associated
    #     with one or more VPCs.
    #
    #   * `Status`\: The status of the Resolver rule association. If you
    #     specify `Status` for `Name`, specify one of the following status
    #     codes for `Values`\: `CREATING`, `COMPLETE`, `DELETING`, or
    #     `FAILED`.
    #
    #   * `VPCId`\: The ID of the VPC that the Resolver rule is associated
    #     with.
    #
    #   **ListResolverQueryLogConfigs**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `Arn`\: The ARN for the query logging configuration.
    #
    #   * `AssociationCount`\: The number of VPCs that are associated with
    #     the query logging configuration.
    #
    #   * `CreationTime`\: The date and time that the query logging
    #     configuration was created, in Unix time format and Coordinated
    #     Universal Time (UTC).
    #
    #   * `CreatorRequestId`\: A unique string that identifies the request
    #     that created the query logging configuration.
    #
    #   * `Destination`\: The AWS service that you want to forward query
    #     logs to. Valid values include the following:
    #
    #     * `S3`
    #
    #     * `CloudWatchLogs`
    #
    #     * `KinesisFirehose`
    #
    #   * `DestinationArn`\: The ARN of the location that Resolver is
    #     sending query logs to. This value can be the ARN for an S3 bucket,
    #     a CloudWatch Logs log group, or a Kinesis Data Firehose delivery
    #     stream.
    #
    #   * `Id`\: The ID of the query logging configuration
    #
    #   * `Name`\: The name of the query logging configuration
    #
    #   * `OwnerId`\: The AWS account ID for the account that created the
    #     query logging configuration.
    #
    #   * `ShareStatus`\: An indication of whether the query logging
    #     configuration is shared with other AWS accounts, or was shared
    #     with the current account by another AWS account. Valid values
    #     include: `NOT_SHARED`, `SHARED_WITH_ME`, or `SHARED_BY_ME`.
    #
    #   * `Status`\: The status of the query logging configuration. If you
    #     specify `Status` for `Name`, specify the applicable status code
    #     for `Values`\: `CREATING`, `CREATED`, `DELETING`, or `FAILED`. For
    #     more information, see [Status][9].
    #
    #   **ListResolverQueryLogConfigAssociations**
    #
    #   Valid values for `Name` include the following:
    #
    #   * `CreationTime`\: The date and time that the VPC was associated
    #     with the query logging configuration, in Unix time format and
    #     Coordinated Universal Time (UTC).
    #
    #   * `Error`\: If the value of `Status` is `FAILED`, specify the cause:
    #     `DESTINATION_NOT_FOUND` or `ACCESS_DENIED`.
    #
    #   * `Id`\: The ID of the query logging association.
    #
    #   * `ResolverQueryLogConfigId`\: The ID of the query logging
    #     configuration that a VPC is associated with.
    #
    #   * `ResourceId`\: The ID of the Amazon VPC that is associated with
    #     the query logging configuration.
    #
    #   * `Status`\: The status of the query logging association. If you
    #     specify `Status` for `Name`, specify the applicable status code
    #     for `Values`\: `CREATING`, `CREATED`, `DELETING`, or `FAILED`. For
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
    #   [10]: https://docs.aws.amazon.com/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status
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

    # @note When making an API call, you may pass GetResolverEndpointRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetResolverQueryLogConfigAssociationRequest
    #   data as a hash:
    #
    #       {
    #         resolver_query_log_config_association_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetResolverQueryLogConfigPolicyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetResolverQueryLogConfigRequest
    #   data as a hash:
    #
    #       {
    #         resolver_query_log_config_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetResolverRuleAssociationRequest
    #   data as a hash:
    #
    #       {
    #         resolver_rule_association_id: "ResourceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetResolverRulePolicyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ID of the Resolver rule policy that you want to get information
    #   about.
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
    #   Information about the Resolver rule policy that you specified in a
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

    # @note When making an API call, you may pass GetResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         resolver_rule_id: "ResourceId", # required
    #       }
    #
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
    # @note When making an API call, you may pass IpAddressRequest
    #   data as a hash:
    #
    #       {
    #         subnet_id: "SubnetId", # required
    #         ip: "Ip",
    #       }
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet that contains the IP address.
    #   @return [String]
    #
    # @!attribute [rw] ip
    #   The IP address that you want to use for DNS queries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/IpAddressRequest AWS API Documentation
    #
    class IpAddressRequest < Struct.new(
      :subnet_id,
      :ip)
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
    #   One IP address that the Resolver endpoint uses for DNS queries.
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
    # @note When making an API call, you may pass IpAddressUpdate
    #   data as a hash:
    #
    #       {
    #         ip_id: "ResourceId",
    #         subnet_id: "SubnetId",
    #         ip: "Ip",
    #       }
    #
    # @!attribute [rw] ip_id
    #   *Only when removing an IP address from a Resolver endpoint*\: The ID
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
    #   The new IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/IpAddressUpdate AWS API Documentation
    #
    class IpAddressUpdate < Struct.new(
      :ip_id,
      :subnet_id,
      :ip)
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

    # @note When making an API call, you may pass ListResolverEndpointIpAddressesRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListResolverEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
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
    #   The Resolver endpoints that were created by using the current AWS
    #   account, and that match the specified filters, if any.
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

    # @note When making an API call, you may pass ListResolverQueryLogConfigAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         sort_by: "SortByKey",
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
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
    #   * `CreationTime`\: The ID of the query logging association.
    #
    #   * `Error`\: If the value of `Status` is `FAILED`, the value of
    #     `Error` indicates the cause:
    #
    #     * `DESTINATION_NOT_FOUND`\: The specified destination (for
    #       example, an Amazon S3 bucket) was deleted.
    #
    #     * `ACCESS_DENIED`\: Permissions don't allow sending logs to the
    #       destination.
    #
    #     If `Status` is a value other than `FAILED`, `ERROR` is null.
    #
    #   * `Id`\: The ID of the query logging association
    #
    #   * `ResolverQueryLogConfigId`\: The ID of the query logging
    #     configuration
    #
    #   * `ResourceId`\: The ID of the VPC that is associated with the query
    #     logging configuration
    #
    #   * `Status`\: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`\: Resolver is creating an association between an
    #       Amazon VPC and a query logging configuration.
    #
    #     * `CREATED`\: The association between an Amazon VPC and a query
    #       logging configuration was successfully created. Resolver is
    #       logging queries that originate in the specified VPC.
    #
    #     * `DELETING`\: Resolver is deleting this query logging
    #       association.
    #
    #     * `FAILED`\: Resolver either couldn't create or couldn't delete
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

    # @note When making an API call, you may pass ListResolverQueryLogConfigsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         sort_by: "SortByKey",
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       }
    #
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
    #   * `Arn`\: The ARN of the query logging configuration
    #
    #   * `AssociationCount`\: The number of VPCs that are associated with
    #     the specified configuration
    #
    #   * `CreationTime`\: The date and time that Resolver returned when the
    #     configuration was created
    #
    #   * `CreatorRequestId`\: The value that was specified for
    #     `CreatorRequestId` when the configuration was created
    #
    #   * `DestinationArn`\: The location that logs are sent to
    #
    #   * `Id`\: The ID of the configuration
    #
    #   * `Name`\: The name of the configuration
    #
    #   * `OwnerId`\: The AWS account number of the account that created the
    #     configuration
    #
    #   * `ShareStatus`\: Whether the configuration is shared with other AWS
    #     accounts or shared with the current account by another AWS
    #     account. Sharing is configured through AWS Resource Access Manager
    #     (AWS RAM).
    #
    #   * `Status`\: The current status of the configuration. Valid values
    #     include the following:
    #
    #     * `CREATING`\: Resolver is creating the query logging
    #       configuration.
    #
    #     * `CREATED`\: The query logging configuration was successfully
    #       created. Resolver is logging queries that originate in the
    #       specified VPC.
    #
    #     * `DELETING`\: Resolver is deleting this query logging
    #       configuration.
    #
    #     * `FAILED`\: Resolver either couldn't create or couldn't delete
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

    # @note When making an API call, you may pass ListResolverRuleAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
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
    #   using the current AWS account, and that match the specified filters,
    #   if any.
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

    # @note When making an API call, you may pass ListResolverRulesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #       }
    #
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
    #   The Resolver rules that were created using the current AWS account
    #   and that match the specified filters, if any.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass PutResolverQueryLogConfigPolicyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         resolver_query_log_config_policy: "ResolverQueryLogConfigPolicy", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #   @return [String]
    #
    # @!attribute [rw] resolver_query_log_config_policy
    #   An AWS Identity and Access Management policy statement that lists
    #   the query logging configurations that you want to share with another
    #   AWS account and the operations that you want the account to be able
    #   to perform. You can specify the following operations in the
    #   `Actions` section of the statement:
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

    # @note When making an API call, you may pass PutResolverRulePolicyRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         resolver_rule_policy: "ResolverRulePolicy", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account that you want to share
    #   rules with.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_policy
    #   An AWS Identity and Access Management policy statement that lists
    #   the rules that you want to share with another AWS account and the
    #   operations that you want the account to be able to perform. You can
    #   specify the following operations in the `Actions` section of the
    #   statement:
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
    #   In the `Resource` section of the statement, you specify the ARNs for
    #   the rules that you want to share with the account that you specified
    #   in `Arn`.
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

    # In the response to a [CreateResolverEndpoint][1],
    # [DeleteResolverEndpoint][2], [GetResolverEndpoint][3],
    # [ListResolverEndpoints][4], or [UpdateResolverEndpoint][5] request, a
    # complex type that contains settings for an existing inbound or
    # outbound Resolver endpoint.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html
    # [2]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverEndpoint.html
    # [3]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html
    # [4]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html
    # [5]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html
    #
    # @!attribute [rw] id
    #   The ID of the Resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request that created the
    #   Resolver endpoint. The `CreatorRequestId` allows failed requests to
    #   be retried without the risk of executing the operation twice.
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
    #   * `INBOUND`\: allows DNS queries to your VPC from your network
    #
    #   * `OUTBOUND`\: allows DNS queries from your VPC to your network
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
    #   * `CREATING`\: Resolver is creating and configuring one or more
    #     Amazon VPC network interfaces for this endpoint.
    #
    #   * `OPERATIONAL`\: The Amazon VPC network interfaces for this
    #     endpoint are correctly configured and able to pass inbound or
    #     outbound DNS queries between your network and Resolver.
    #
    #   * `UPDATING`\: Resolver is associating or disassociating one or more
    #     network interfaces with this endpoint.
    #
    #   * `AUTO_RECOVERING`\: Resolver is trying to recover one or more of
    #     the network interfaces that are associated with this endpoint.
    #     During the recovery process, the endpoint functions with limited
    #     capacity because of the limit on the number of DNS queries per IP
    #     address (per network interface). For the current limit, see
    #     [Limits on Route 53 Resolver][1].
    #
    #   * `ACTION_NEEDED`\: This endpoint is unhealthy, and Resolver can't
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
    #   * `DELETING`\: Resolver is deleting this endpoint and the associated
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
      :modification_time)
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
    #   The AWS account ID for the account that created the query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the specified query logging configuration. Valid
    #   values include the following:
    #
    #   * `CREATING`\: Resolver is creating the query logging configuration.
    #
    #   * `CREATED`\: The query logging configuration was successfully
    #     created. Resolver is logging queries that originate in the
    #     specified VPC.
    #
    #   * `DELETING`\: Resolver is deleting this query logging
    #     configuration.
    #
    #   * `FAILED`\: Resolver can't deliver logs to the location that is
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
    #   with other AWS accounts, or was shared with the current account by
    #   another AWS account. Sharing is configured through AWS Resource
    #   Access Manager (AWS RAM).
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
    #   to be retried without the risk of executing the operation twice.
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
    #   * `CREATING`\: Resolver is creating an association between an Amazon
    #     VPC and a query logging configuration.
    #
    #   * `CREATED`\: The association between an Amazon VPC and a query
    #     logging configuration was successfully created. Resolver is
    #     logging queries that originate in the specified VPC.
    #
    #   * `DELETING`\: Resolver is deleting this query logging association.
    #
    #   * `FAILED`\: Resolver either couldn't create or couldn't delete
    #     the query logging association.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the value of `Status` is `FAILED`, the value of `Error` indicates
    #   the cause:
    #
    #   * `DESTINATION_NOT_FOUND`\: The specified destination (for example,
    #     an Amazon S3 bucket) was deleted.
    #
    #   * `ACCESS_DENIED`\: Permissions don't allow sending logs to the
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
    #   requests to be retried without the risk of executing the operation
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
    #   When a rule is shared with another AWS account, the account ID of
    #   the account that the rule is shared with.
    #   @return [String]
    #
    # @!attribute [rw] share_status
    #   Whether the rules is shared and, if so, whether the current account
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
    # @note When making an API call, you may pass ResolverRuleConfig
    #   data as a hash:
    #
    #       {
    #         name: "Name",
    #         target_ips: [
    #           {
    #             ip: "Ip", # required
    #             port: 1,
    #           },
    #         ],
    #         resolver_endpoint_id: "ResourceId",
    #       }
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
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
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
    # @note When making an API call, you may pass TargetAddress
    #   data as a hash:
    #
    #       {
    #         ip: "Ip", # required
    #         port: 1,
    #       }
    #
    # @!attribute [rw] ip
    #   One IP address that you want to forward DNS queries to. You can
    #   specify only IPv4 addresses.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port at `Ip` that you want to forward DNS queries to.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TargetAddress AWS API Documentation
    #
    class TargetAddress < Struct.new(
      :ip,
      :port)
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateResolverEndpointRequest
    #   data as a hash:
    #
    #       {
    #         resolver_endpoint_id: "ResourceId", # required
    #         name: "Name",
    #       }
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the Resolver endpoint that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Resolver endpoint that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpointRequest AWS API Documentation
    #
    class UpdateResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id,
      :name)
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

    # @note When making an API call, you may pass UpdateResolverRuleRequest
    #   data as a hash:
    #
    #       {
    #         resolver_rule_id: "ResourceId", # required
    #         config: { # required
    #           name: "Name",
    #           target_ips: [
    #             {
    #               ip: "Ip", # required
    #               port: 1,
    #             },
    #           ],
    #           resolver_endpoint_id: "ResourceId",
    #         },
    #       }
    #
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

  end
end
