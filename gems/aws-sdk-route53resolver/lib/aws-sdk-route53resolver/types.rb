# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53Resolver
  module Types

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
    #   The ID of the resolver endpoint that you want to associate IP
    #   addresses with.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Either the IPv4 address that you want to add to a resolver endpoint
    #   or a subnet ID. If you specify a subnet ID, Resolver chooses an IP
    #   address for you from the available IPs in the specified subnet.
    #   @return [Types::IpAddressUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverEndpointIpAddressRequest AWS API Documentation
    #
    class AssociateResolverEndpointIpAddressRequest < Struct.new(
      :resolver_endpoint_id,
      :ip_address)
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
    #   The ID of the resolver rule that you want to associate with the VPC.
    #   To list the existing resolver rules, use ListResolverRules.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the association that you're creating between a resolver
    #   rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that you want to associate the resolver rule with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/AssociateResolverRuleRequest AWS API Documentation
    #
    class AssociateResolverRuleRequest < Struct.new(
      :resolver_rule_id,
      :name,
      :vpc_id)
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
    #             key: "TagKey",
    #             value: "TagValue",
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
    #   include one or more inbound rules (for inbound resolver endpoints)
    #   or outbound rules (for outbound resolver endpoints).
    #   @return [Array<String>]
    #
    # @!attribute [rw] direction
    #   Specify the applicable value:
    #
    #   * `INBOUND`\: Resolver forwards DNS queries to the DNS service for a
    #     VPC from your network or another VPC
    #
    #   * `OUTBOUND`\: Resolver forwards DNS queries from the DNS service
    #     for a VPC to your network or another VPC
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The subnets and IP addresses in your VPC that you want DNS queries
    #   to pass through on the way from your VPCs to your network (for
    #   outbound endpoints) or on the way from your network to your VPCs
    #   (for inbound resolver endpoints).
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
    #             key: "TagKey",
    #             value: "TagValue",
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
    #   Specify `FORWARD`. Other resolver rule types aren't supported.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that you specify in `TargetIps`. If a query matches multiple
    #   resolver rules (example.com and www.example.com), outbound DNS
    #   queries are routed using the resolver rule that contains the most
    #   specific domain name (www.example.com).
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   The IPs that you want Resolver to forward DNS queries to. You can
    #   specify only IPv4 addresses. Separate IP addresses with a comma.
    #   @return [Array<Types::TargetAddress>]
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the outbound resolver endpoint that you want to use to
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
    #   The ID of the resolver endpoint that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverEndpointRequest AWS API Documentation
    #
    class DeleteResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id)
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
    #   The ID of the resolver rule that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DeleteResolverRuleRequest AWS API Documentation
    #
    class DeleteResolverRuleRequest < Struct.new(
      :resolver_rule_id)
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
    #   The ID of the resolver endpoint that you want to disassociate an IP
    #   address from.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IPv4 address that you want to remove from a resolver endpoint.
    #   @return [Types::IpAddressUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverEndpointIpAddressRequest AWS API Documentation
    #
    class DisassociateResolverEndpointIpAddressRequest < Struct.new(
      :resolver_endpoint_id,
      :ip_address)
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
    #   The ID of the VPC that you want to disassociate the resolver rule
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_id
    #   The ID of the resolver rule that you want to disassociate from the
    #   specified VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/DisassociateResolverRuleRequest AWS API Documentation
    #
    class DisassociateResolverRuleRequest < Struct.new(
      :vpc_id,
      :resolver_rule_id)
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
      include Aws::Structure
    end

    # For `List` operations, an optional specification to return a subset of
    # objects, such as resolver endpoints or resolver rules.
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
    #   When you're using a `List` operation and you want the operation to
    #   return a subset of objects, such as resolver endpoints or resolver
    #   rules, the name of the parameter that you want to use to filter
    #   objects. For example, to list only inbound resolver endpoints,
    #   specify `Direction` for the value of `Name`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   When you're using a `List` operation and you want the operation to
    #   return a subset of objects, such as resolver endpoints or resolver
    #   rules, the value of the parameter that you want to use to filter
    #   objects. For example, to list only inbound resolver endpoints,
    #   specify `INBOUND` for the value of `Values`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
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
    #   The ID of the resolver endpoint that you want to get information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpointRequest AWS API Documentation
    #
    class GetResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id)
      include Aws::Structure
    end

    # @!attribute [rw] resolver_endpoint
    #   Information about the resolver endpoint that you specified in a
    #   `GetResolverEndpoint` request.
    #   @return [Types::ResolverEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverEndpointResponse AWS API Documentation
    #
    class GetResolverEndpointResponse < Struct.new(
      :resolver_endpoint)
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
    #   The ID of the resolver rule association that you want to get
    #   information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleAssociationRequest AWS API Documentation
    #
    class GetResolverRuleAssociationRequest < Struct.new(
      :resolver_rule_association_id)
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_association
    #   Information about the resolver rule association that you specified
    #   in a `GetResolverRuleAssociation` request.
    #   @return [Types::ResolverRuleAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleAssociationResponse AWS API Documentation
    #
    class GetResolverRuleAssociationResponse < Struct.new(
      :resolver_rule_association)
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
    #   The ID of the resolver rule policy that you want to get information
    #   about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRulePolicyRequest AWS API Documentation
    #
    class GetResolverRulePolicyRequest < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule_policy
    #   Information about the resolver rule policy that you specified in a
    #   `GetResolverRulePolicy` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRulePolicyResponse AWS API Documentation
    #
    class GetResolverRulePolicyResponse < Struct.new(
      :resolver_rule_policy)
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
    #   The ID of the resolver rule that you want to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleRequest AWS API Documentation
    #
    class GetResolverRuleRequest < Struct.new(
      :resolver_rule_id)
      include Aws::Structure
    end

    # @!attribute [rw] resolver_rule
    #   Information about the resolver rule that you specified in a
    #   `GetResolverRule` request.
    #   @return [Types::ResolverRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/GetResolverRuleResponse AWS API Documentation
    #
    class GetResolverRuleResponse < Struct.new(
      :resolver_rule)
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
      include Aws::Structure
    end

    # The specified resolver rule policy is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/InvalidPolicyDocument AWS API Documentation
    #
    class InvalidPolicyDocument < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # In an CreateResolverEndpoint request, a subnet and IP address that you
    # want to use for DNS queries.
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
    #   The subnet that contains the IP address.
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
      include Aws::Structure
    end

    # In the response to a GetResolverEndpoint request, information about
    # the IP addresses that the resolver endpoint uses for DNS queries.
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
    #   One IP address that the resolver endpoint uses for DNS queries.
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
      include Aws::Structure
    end

    # In an UpdateResolverEndpoint request, information about an IP address
    # to update.
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
    #   *Only when removing an IP address from a resolver endpoint*\: The ID
    #   of the IP address that you want to remove. To get this ID, use
    #   GetResolverEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet that includes the IP address that you want to
    #   update. To get this ID, use GetResolverEndpoint.
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
    #   The ID of the resolver endpoint that you want to get IP addresses
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
    #   If the specified resolver endpoint has more than `MaxResults` IP
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
    #   The IP addresses that DNS queries pass through on their way to your
    #   network (outbound endpoint) or on the way to Resolver (inbound
    #   endpoint).
    #   @return [Array<Types::IpAddressResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointIpAddressesResponse AWS API Documentation
    #
    class ListResolverEndpointIpAddressesResponse < Struct.new(
      :next_token,
      :max_results,
      :ip_addresses)
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
    #   The maximum number of resolver endpoints that you want to return in
    #   the response to a `ListResolverEndpoints` request. If you don't
    #   specify a value for `MaxResults`, Resolver returns up to 100
    #   resolver endpoints.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverEndpoints` request, omit this value.
    #
    #   If you have more than `MaxResults` resolver endpoints, you can
    #   submit another `ListResolverEndpoints` request to get the next group
    #   of resolver endpoints. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of resolver endpoints,
    #   such as all inbound resolver endpoints.
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
    #   The resolver endpoints that were created by using the current AWS
    #   account, and that match the specified filters, if any.
    #   @return [Array<Types::ResolverEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverEndpointsResponse AWS API Documentation
    #
    class ListResolverEndpointsResponse < Struct.new(
      :next_token,
      :max_results,
      :resolver_endpoints)
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
    #   An optional specification to return a subset of resolver rules, such
    #   as resolver rules that are associated with the same VPC ID.
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
    #   The associations that were created between resolver rules and VPCs
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
    #   The maximum number of resolver rules that you want to return in the
    #   response to a `ListResolverRules` request. If you don't specify a
    #   value for `MaxResults`, Resolver returns up to 100 resolver rules.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   For the first `ListResolverRules` request, omit this value.
    #
    #   If you have more than `MaxResults` resolver rules, you can submit
    #   another `ListResolverRules` request to get the next group of
    #   resolver rules. In the next request, specify the value of
    #   `NextToken` from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   An optional specification to return a subset of resolver rules, such
    #   as all resolver rules that are associated with the same resolver
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
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If more than `MaxResults` resolver rules match the specified
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
    #   The resolver rules that were created using the current AWS account
    #   and that match the specified filters, if any.
    #   @return [Array<Types::ResolverRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/ListResolverRulesResponse AWS API Documentation
    #
    class ListResolverRulesResponse < Struct.new(
      :next_token,
      :max_results,
      :resolver_rules)
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
    #   The Amazon Resource Name (ARN) of the account that you want to grant
    #   permissions to.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_policy
    #   An AWS Identity and Access Management policy statement that lists
    #   the permissions that you want to grant to another AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/PutResolverRulePolicyRequest AWS API Documentation
    #
    class PutResolverRulePolicyRequest < Struct.new(
      :arn,
      :resolver_rule_policy)
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
      include Aws::Structure
    end

    # In the response to a CreateResolverEndpoint, DeleteResolverEndpoint,
    # GetResolverEndpoint, ListResolverEndpoints, or UpdateResolverEndpoint
    # request, a complex type that contains settings for an existing inbound
    # or outbound resolver endpoint.
    #
    # @!attribute [rw] id
    #   The ID of the resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that identifies the request that created the
    #   resolver endpoint. The `CreatorRequestId` allows failed requests to
    #   be retried without the risk of executing the operation twice.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you assigned to the resolver endpoint when you
    #   submitted a CreateResolverEndpoint request.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The ID of one or more security groups that control access to this
    #   VPC. The security group must include one or more inbound resolver
    #   rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] direction
    #   Indicates whether the resolver endpoint allows inbound or outbound
    #   DNS queries:
    #
    #   * `INBOUND`\: allows DNS queries to your VPC from your network or
    #     another VPC
    #
    #   * `OUTBOUND`\: allows DNS queries from your VPC to your network or
    #     another VPC
    #   @return [String]
    #
    # @!attribute [rw] ip_address_count
    #   The number of IP addresses that the resolver endpoint can use for
    #   DNS queries.
    #   @return [Integer]
    #
    # @!attribute [rw] host_vpc_id
    #   The ID of the VPC that you want to create the resolver endpoint in.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the resolver endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of the resolver endpoint.
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
      include Aws::Structure
    end

    # For queries that originate in your VPC, detailed information about a
    # resolver rule, which specifies how to route DNS queries out of the
    # VPC. The `ResolverRule` parameter appears in the response to a
    # CreateResolverRule, DeleteResolverRule, GetResolverRule,
    # ListResolverRules, or UpdateResolverRule request.
    #
    # @!attribute [rw] id
    #   The ID that Resolver assigned to the resolver rule when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] creator_request_id
    #   A unique string that you specified when you created the resolver
    #   rule. `CreatorRequestId`identifies the request and allows failed
    #   requests to be retried without the risk of executing the operation
    #   twice.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the resolver rule specified by
    #   `Id`.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   DNS queries for this domain name are forwarded to the IP addresses
    #   that are specified in `TargetIps`. If a query matches multiple
    #   resolver rules (example.com and www.example.com), the query is
    #   routed using the resolver rule that contains the most specific
    #   domain name (www.example.com).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of a resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   This value is always `FORWARD`. Other resolver rule types aren't
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the resolver rule, which you specified when you created
    #   the resolver rule.
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   An array that contains the IP addresses and ports that you want to
    #   forward
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
      :share_status)
      include Aws::Structure
    end

    # In the response to an AssociateResolverRule, DisassociateResolverRule,
    # or ListResolverRuleAssociations request, information about an
    # association between a resolver rule and a VPC.
    #
    # @!attribute [rw] id
    #   The ID of the association between a resolver rule and a VPC.
    #   Resolver assigns this value when you submit an AssociateResolverRule
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] resolver_rule_id
    #   The ID of the resolver rule that you associated with the VPC that is
    #   specified by `VPCId`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of an association between a resolver rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC that you associated the resolver rule with.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A code that specifies the current status of the association between
    #   a resolver rule and a VPC.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the status of the association between a
    #   resolver rule and a VPC.
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
      include Aws::Structure
    end

    # In an UpdateResolverRule request, information about the changes that
    # you want to make.
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
    #   The new name for the resolver rule. The name that you specify
    #   appears in the Resolver dashboard in the Route 53 console.
    #   @return [String]
    #
    # @!attribute [rw] target_ips
    #   For DNS queries that originate in your VPC, the new IP addresses
    #   that you want to route outbound DNS queries to.
    #   @return [Array<Types::TargetAddress>]
    #
    # @!attribute [rw] resolver_endpoint_id
    #   The ID of the new outbound resolver endpoint that you want to use to
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
      include Aws::Structure
    end

    # One tag that you want to add to the specified resource. A tag consists
    # of a `Key` (a name for the tag) and a `Value`.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource that you want to add
    #   tags to. To get the ARN for a resource, use the applicable `Get` or
    #   `List` command:
    #
    #   * GetResolverEndpoint
    #
    #   * GetResolverRule
    #
    #   * GetResolverRuleAssociation
    #
    #   * ListResolverEndpoints
    #
    #   * ListResolverRuleAssociations
    #
    #   * ListResolverRules
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # In a CreateResolverRule request, an array of the IPs that you want to
    # forward DNS queries to.
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
    #   * GetResolverEndpoint
    #
    #   * GetResolverRule
    #
    #   * GetResolverRuleAssociation
    #
    #   * ListResolverEndpoints
    #
    #   * ListResolverRuleAssociations
    #
    #   * ListResolverRules
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
    #   The ID of the resolver endpoint that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resolver endpoint that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverEndpointRequest AWS API Documentation
    #
    class UpdateResolverEndpointRequest < Struct.new(
      :resolver_endpoint_id,
      :name)
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
    #   The ID of the resolver rule that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The new settings for the resolver rule.
    #   @return [Types::ResolverRuleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/route53resolver-2018-04-01/UpdateResolverRuleRequest AWS API Documentation
    #
    class UpdateResolverRuleRequest < Struct.new(
      :resolver_rule_id,
      :config)
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
      include Aws::Structure
    end

  end
end
