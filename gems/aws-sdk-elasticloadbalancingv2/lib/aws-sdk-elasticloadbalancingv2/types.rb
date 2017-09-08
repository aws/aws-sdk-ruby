# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancingV2
  module Types

    # Information about an action.
    #
    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         type: "forward", # required, accepts forward
    #         target_group_arn: "TargetGroupArn", # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of action.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Action AWS API Documentation
    #
    class Action < Struct.new(
      :type,
      :target_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"], # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags. Each resource can have a maximum of 10 tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :resource_arns,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Aws::EmptyStructure; end

    # Information about an Availability Zone.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_addresses
    #   \[Network Load Balancers\] The static IP address.
    #   @return [Array<Types::LoadBalancerAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id,
      :load_balancer_addresses)
      include Aws::Structure
    end

    # Information about an SSL server certificate deployed on a load
    # balancer.
    #
    # @note When making an API call, you may pass Certificate
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "CertificateArn",
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # Information about a cipher used in a policy.
    #
    # @!attribute [rw] name
    #   The name of the cipher.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the cipher.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Cipher AWS API Documentation
    #
    class Cipher < Struct.new(
      :name,
      :priority)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateListenerInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #         protocol: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #         port: 1, # required
    #         ssl_policy: "SslPolicyName",
    #         certificates: [
    #           {
    #             certificate_arn: "CertificateArn",
    #           },
    #         ],
    #         default_actions: [ # required
    #           {
    #             type: "forward", # required, accepts forward
    #             target_group_arn: "TargetGroupArn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to the load balancer. For
    #   Application Load Balancers, the supported protocols are HTTP and
    #   HTTPS. For Network Load Balancers, the supported protocol is TCP.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the load balancer is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_policy
    #   \[HTTPS listeners\] The security policy that defines which ciphers
    #   and protocols are supported. The default is the current predefined
    #   security policy.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   \[HTTPS listeners\] The SSL server certificate. You must provide
    #   exactly one certificate.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] default_actions
    #   The default action for the listener. For Application Load Balancers,
    #   the protocol of the specified target group must be HTTP or HTTPS.
    #   For Network Load Balancers, the protocol of the specified target
    #   group must be TCP.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListenerInput AWS API Documentation
    #
    class CreateListenerInput < Struct.new(
      :load_balancer_arn,
      :protocol,
      :port,
      :ssl_policy,
      :certificates,
      :default_actions)
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   Information about the listener.
    #   @return [Array<Types::Listener>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListenerOutput AWS API Documentation
    #
    class CreateListenerOutput < Struct.new(
      :listeners)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoadBalancerInput
    #   data as a hash:
    #
    #       {
    #         name: "LoadBalancerName", # required
    #         subnets: ["SubnetId"],
    #         subnet_mappings: [
    #           {
    #             subnet_id: "SubnetId",
    #             allocation_id: "AllocationId",
    #           },
    #         ],
    #         security_groups: ["SecurityGroupId"],
    #         scheme: "internet-facing", # accepts internet-facing, internal
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         type: "application", # accepts application, network
    #         ip_address_type: "ipv4", # accepts ipv4, dualstack
    #       }
    #
    # @!attribute [rw] name
    #   The name of the load balancer.
    #
    #   This name must be unique per region per account, can have a maximum
    #   of 32 characters, must contain only alphanumeric characters or
    #   hyphens, and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets to attach to the load balancer. You can
    #   specify only one subnet per Availability Zone. You must specify
    #   either subnets or subnet mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at
    #   least two Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the subnets to attach to the load balancer. You can
    #   specify only one subnet per Availability Zone. You must specify
    #   either subnets or subnet mappings.
    #
    #   \[Network Load Balancers\] You can specify one Elastic IP address
    #   per subnet.
    #
    #   \[Application Load Balancers\] You cannot specify Elastic IP
    #   addresses for your subnets.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] security_groups
    #   \[Application Load Balancers\] The IDs of the security groups to
    #   assign to the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses. The DNS name of an Internet-facing load balancer is
    #   publicly resolvable to the public IP addresses of the nodes.
    #   Therefore, Internet-facing load balancers can route requests from
    #   clients over the Internet.
    #
    #   The nodes of an internal load balancer have only private IP
    #   addresses. The DNS name of an internal load balancer is publicly
    #   resolvable to the private IP addresses of the nodes. Therefore,
    #   internal load balancers can only route requests from clients with
    #   access to the VPC for the load balancer.
    #
    #   The default is an Internet-facing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to assign to the load balancer.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of load balancer to create. The default is `application`.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   \[Application Load Balancers\] The type of IP addresses used by the
    #   subnets for your load balancer. The possible values are `ipv4` (for
    #   IPv4 addresses) and `dualstack` (for IPv4 and IPv6 addresses).
    #   Internal load balancers must use `ipv4`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateLoadBalancerInput AWS API Documentation
    #
    class CreateLoadBalancerInput < Struct.new(
      :name,
      :subnets,
      :subnet_mappings,
      :security_groups,
      :scheme,
      :tags,
      :type,
      :ip_address_type)
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   Information about the load balancer.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateLoadBalancerOutput AWS API Documentation
    #
    class CreateLoadBalancerOutput < Struct.new(
      :load_balancers)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRuleInput
    #   data as a hash:
    #
    #       {
    #         listener_arn: "ListenerArn", # required
    #         conditions: [ # required
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #           },
    #         ],
    #         priority: 1, # required
    #         actions: [ # required
    #           {
    #             type: "forward", # required, accepts forward
    #             target_group_arn: "TargetGroupArn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions. Each condition specifies a field name and a single
    #   value.
    #
    #   If the field name is `host-header`, you can specify a single host
    #   name (for example, my.example.com). A host name is case insensitive,
    #   can be up to 128 characters in length, and can contain any of the
    #   following characters. Note that you can include up to three wildcard
    #   characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \- .
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #
    #   If the field name is `path-pattern`, you can specify a single path
    #   pattern. A path pattern is case sensitive, can be up to 128
    #   characters in length, and can contain any of the following
    #   characters. Note that you can include up to three wildcard
    #   characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \_ - . $ / ~ " ' @ : +
    #
    #   * &amp; (using &amp;amp;)
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] priority
    #   The priority for the rule. A listener can't have multiple rules
    #   with the same priority.
    #   @return [Integer]
    #
    # @!attribute [rw] actions
    #   An action. Each action has the type `forward` and specifies a target
    #   group.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRuleInput AWS API Documentation
    #
    class CreateRuleInput < Struct.new(
      :listener_arn,
      :conditions,
      :priority,
      :actions)
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the rule.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRuleOutput AWS API Documentation
    #
    class CreateRuleOutput < Struct.new(
      :rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTargetGroupInput
    #   data as a hash:
    #
    #       {
    #         name: "TargetGroupName", # required
    #         protocol: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #         port: 1, # required
    #         vpc_id: "VpcId", # required
    #         health_check_protocol: "HTTP", # accepts HTTP, HTTPS, TCP
    #         health_check_port: "HealthCheckPort",
    #         health_check_path: "Path",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           http_code: "HttpCode", # required
    #         },
    #         target_type: "instance", # accepts instance, ip
    #       }
    #
    # @!attribute [rw] name
    #   The name of the target group.
    #
    #   This name must be unique per region per account, can have a maximum
    #   of 32 characters, must contain only alphanumeric characters or
    #   hyphens, and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for routing traffic to the targets. For
    #   Application Load Balancers, the supported protocols are HTTP and
    #   HTTPS. For Network Load Balancers, the supported protocol is TCP.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the targets receive traffic. This port is used
    #   unless you specify a port override when registering the target.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the virtual private cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. The TCP protocol is supported only if the protocol of the
    #   target group is TCP. For Application Load Balancers, the default is
    #   HTTP. For Network Load Balancers, the default is TCP.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets. The default is `traffic-port`, which is the port on which
    #   each target receives traffic from the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   \[HTTP/HTTPS health checks\] The ping path that is the destination
    #   on the targets for health checks. The default is /.
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. For Application Load Balancers, the range is 5
    #   to 300 seconds. For Network Load Balancers, the supported values are
    #   10 or 30 seconds. The default is 30 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response from a
    #   target means a failed health check. For Application Load Balancers,
    #   the range is 2 to 60 seconds and the default is 5 seconds. For
    #   Network Load Balancers, this is 10 seconds for TCP and HTTPS health
    #   checks and 6 seconds for HTTP health checks.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy. For Application Load
    #   Balancers, the default is 5. For Network Load Balancers, the default
    #   is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering a target unhealthy. For Application Load Balancers, the
    #   default is 2. For Network Load Balancers, this value must be the
    #   same as the healthy threshold count.
    #   @return [Integer]
    #
    # @!attribute [rw] matcher
    #   \[HTTP/HTTPS health checks\] The HTTP codes to use when checking for
    #   a successful response from a target.
    #   @return [Types::Matcher]
    #
    # @!attribute [rw] target_type
    #   The type of target that you must specify when registering targets
    #   with this target group. The possible values are `instance` (targets
    #   are specified by instance ID) or `ip` (targets are specified by IP
    #   address). The default is `instance`. Note that you can't specify
    #   targets for a target group using both instance IDs and IP addresses.
    #
    #   If the target type is `ip`, specify IP addresses from the subnets of
    #   the virtual private cloud (VPC) for the target group, the RFC 1918
    #   range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC
    #   6598 range (100.64.0.0/10). You can't specify publicly routable IP
    #   addresses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroupInput AWS API Documentation
    #
    class CreateTargetGroupInput < Struct.new(
      :name,
      :protocol,
      :port,
      :vpc_id,
      :health_check_protocol,
      :health_check_port,
      :health_check_path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher,
      :target_type)
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   Information about the target group.
    #   @return [Array<Types::TargetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroupOutput AWS API Documentation
    #
    class CreateTargetGroupOutput < Struct.new(
      :target_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteListenerInput
    #   data as a hash:
    #
    #       {
    #         listener_arn: "ListenerArn", # required
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListenerInput AWS API Documentation
    #
    class DeleteListenerInput < Struct.new(
      :listener_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListenerOutput AWS API Documentation
    #
    class DeleteListenerOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLoadBalancerInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancerInput AWS API Documentation
    #
    class DeleteLoadBalancerInput < Struct.new(
      :load_balancer_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancerOutput AWS API Documentation
    #
    class DeleteLoadBalancerOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRuleInput
    #   data as a hash:
    #
    #       {
    #         rule_arn: "RuleArn", # required
    #       }
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRuleInput AWS API Documentation
    #
    class DeleteRuleInput < Struct.new(
      :rule_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRuleOutput AWS API Documentation
    #
    class DeleteRuleOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTargetGroupInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroupInput AWS API Documentation
    #
    class DeleteTargetGroupInput < Struct.new(
      :target_group_arn)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroupOutput AWS API Documentation
    #
    class DeleteTargetGroupOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterTargetsInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             port: 1,
    #             availability_zone: "ZoneName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets. If you specified a port override when you registered a
    #   target, you must specify both the target ID and the port when you
    #   deregister it.
    #   @return [Array<Types::TargetDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargetsInput AWS API Documentation
    #
    class DeregisterTargetsInput < Struct.new(
      :target_group_arn,
      :targets)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargetsOutput AWS API Documentation
    #
    class DeregisterTargetsOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeAccountLimitsInput
    #   data as a hash:
    #
    #       {
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimitsInput AWS API Documentation
    #
    class DescribeAccountLimitsInput < Struct.new(
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] limits
    #   Information about the limits.
    #   @return [Array<Types::Limit>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimitsOutput AWS API Documentation
    #
    class DescribeAccountLimitsOutput < Struct.new(
      :limits,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeListenersInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn",
    #         listener_arns: ["ListenerArn"],
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] listener_arns
    #   The Amazon Resource Names (ARN) of the listeners.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenersInput AWS API Documentation
    #
    class DescribeListenersInput < Struct.new(
      :load_balancer_arn,
      :listener_arns,
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   Information about the listeners.
    #   @return [Array<Types::Listener>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenersOutput AWS API Documentation
    #
    class DescribeListenersOutput < Struct.new(
      :listeners,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLoadBalancerAttributesInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributesInput AWS API Documentation
    #
    class DescribeLoadBalancerAttributesInput < Struct.new(
      :load_balancer_arn)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Information about the load balancer attributes.
    #   @return [Array<Types::LoadBalancerAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributesOutput AWS API Documentation
    #
    class DescribeLoadBalancerAttributesOutput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLoadBalancersInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arns: ["LoadBalancerArn"],
    #         names: ["LoadBalancerName"],
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] load_balancer_arns
    #   The Amazon Resource Names (ARN) of the load balancers. You can
    #   specify up to 20 load balancers in a single call.
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   The names of the load balancers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancersInput AWS API Documentation
    #
    class DescribeLoadBalancersInput < Struct.new(
      :load_balancer_arns,
      :names,
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   Information about the load balancers.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancersOutput AWS API Documentation
    #
    class DescribeLoadBalancersOutput < Struct.new(
      :load_balancers,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRulesInput
    #   data as a hash:
    #
    #       {
    #         listener_arn: "ListenerArn",
    #         rule_arns: ["RuleArn"],
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] rule_arns
    #   The Amazon Resource Names (ARN) of the rules.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRulesInput AWS API Documentation
    #
    class DescribeRulesInput < Struct.new(
      :listener_arn,
      :rule_arns,
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the rules.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRulesOutput AWS API Documentation
    #
    class DescribeRulesOutput < Struct.new(
      :rules,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSSLPoliciesInput
    #   data as a hash:
    #
    #       {
    #         names: ["SslPolicyName"],
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] names
    #   The names of the policies.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPoliciesInput AWS API Documentation
    #
    class DescribeSSLPoliciesInput < Struct.new(
      :names,
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] ssl_policies
    #   Information about the policies.
    #   @return [Array<Types::SslPolicy>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPoliciesOutput AWS API Documentation
    #
    class DescribeSSLPoliciesOutput < Struct.new(
      :ssl_policies,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"], # required
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTagsInput AWS API Documentation
    #
    class DescribeTagsInput < Struct.new(
      :resource_arns)
      include Aws::Structure
    end

    # @!attribute [rw] tag_descriptions
    #   Information about the tags.
    #   @return [Array<Types::TagDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTagsOutput AWS API Documentation
    #
    class DescribeTagsOutput < Struct.new(
      :tag_descriptions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTargetGroupAttributesInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributesInput AWS API Documentation
    #
    class DescribeTargetGroupAttributesInput < Struct.new(
      :target_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Information about the target group attributes
    #   @return [Array<Types::TargetGroupAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributesOutput AWS API Documentation
    #
    class DescribeTargetGroupAttributesOutput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTargetGroupsInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn",
    #         target_group_arns: ["TargetGroupArn"],
    #         names: ["TargetGroupName"],
    #         marker: "Marker",
    #         page_size: 1,
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] names
    #   The names of the target groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of results to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupsInput AWS API Documentation
    #
    class DescribeTargetGroupsInput < Struct.new(
      :load_balancer_arn,
      :target_group_arns,
      :names,
      :marker,
      :page_size)
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   Information about the target groups.
    #   @return [Array<Types::TargetGroup>]
    #
    # @!attribute [rw] next_marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupsOutput AWS API Documentation
    #
    class DescribeTargetGroupsOutput < Struct.new(
      :target_groups,
      :next_marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTargetHealthInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #         targets: [
    #           {
    #             id: "TargetId", # required
    #             port: 1,
    #             availability_zone: "ZoneName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets.
    #   @return [Array<Types::TargetDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetHealthInput AWS API Documentation
    #
    class DescribeTargetHealthInput < Struct.new(
      :target_group_arn,
      :targets)
      include Aws::Structure
    end

    # @!attribute [rw] target_health_descriptions
    #   Information about the health of the targets.
    #   @return [Array<Types::TargetHealthDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetHealthOutput AWS API Documentation
    #
    class DescribeTargetHealthOutput < Struct.new(
      :target_health_descriptions)
      include Aws::Structure
    end

    # Information about an Elastic Load Balancing resource limit for your
    # AWS account.
    #
    # @!attribute [rw] name
    #   The name of the limit. The possible values are:
    #
    #   * application-load-balancers
    #
    #   * listeners-per-application-load-balancer
    #
    #   * listeners-per-network-load-balancer
    #
    #   * network-load-balancers
    #
    #   * rules-per-application-load-balancer
    #
    #   * target-groups
    #
    #   * targets-per-application-load-balancer
    #   @return [String]
    #
    # @!attribute [rw] max
    #   The maximum value of the limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Limit AWS API Documentation
    #
    class Limit < Struct.new(
      :name,
      :max)
      include Aws::Structure
    end

    # Information about a listener.
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the load balancer is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The SSL server certificate. You must provide a certificate if the
    #   protocol is HTTPS.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] ssl_policy
    #   The security policy that defines which ciphers and protocols are
    #   supported. The default is the current predefined security policy.
    #   @return [String]
    #
    # @!attribute [rw] default_actions
    #   The default actions for the listener.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Listener AWS API Documentation
    #
    class Listener < Struct.new(
      :listener_arn,
      :load_balancer_arn,
      :port,
      :protocol,
      :certificates,
      :ssl_policy,
      :default_actions)
      include Aws::Structure
    end

    # Information about a load balancer.
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The public DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] canonical_hosted_zone_id
    #   The ID of the Amazon Route 53 hosted zone associated with the load
    #   balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the load balancer was created.
    #   @return [Time]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses. The DNS name of an Internet-facing load balancer is
    #   publicly resolvable to the public IP addresses of the nodes.
    #   Therefore, Internet-facing load balancers can route requests from
    #   clients over the Internet.
    #
    #   The nodes of an internal load balancer have only private IP
    #   addresses. The DNS name of an internal load balancer is publicly
    #   resolvable to the private IP addresses of the nodes. Therefore,
    #   internal load balancers can only route requests from clients with
    #   access to the VPC for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the load balancer.
    #   @return [Types::LoadBalancerState]
    #
    # @!attribute [rw] type
    #   The type of load balancer.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones for the load balancer.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancer AWS API Documentation
    #
    class LoadBalancer < Struct.new(
      :load_balancer_arn,
      :dns_name,
      :canonical_hosted_zone_id,
      :created_time,
      :load_balancer_name,
      :scheme,
      :vpc_id,
      :state,
      :type,
      :availability_zones,
      :security_groups,
      :ip_address_type)
      include Aws::Structure
    end

    # Information about a static IP address for a load balancer.
    #
    # @!attribute [rw] ip_address
    #   The static IP address.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   \[Network Load Balancers\] The allocation ID of the Elastic IP
    #   address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancerAddress AWS API Documentation
    #
    class LoadBalancerAddress < Struct.new(
      :ip_address,
      :allocation_id)
      include Aws::Structure
    end

    # Information about a load balancer attribute.
    #
    # @note When making an API call, you may pass LoadBalancerAttribute
    #   data as a hash:
    #
    #       {
    #         key: "LoadBalancerAttributeKey",
    #         value: "LoadBalancerAttributeValue",
    #       }
    #
    # @!attribute [rw] key
    #   The name of the attribute.
    #
    #   * `access_logs.s3.enabled` - \[Application Load Balancers\]
    #     Indicates whether access logs stored in Amazon S3 are enabled. The
    #     value is `true` or `false`.
    #
    #   * `access_logs.s3.bucket` - \[Application Load Balancers\] The name
    #     of the S3 bucket for the access logs. This attribute is required
    #     if access logs in Amazon S3 are enabled. The bucket must exist in
    #     the same region as the load balancer and have a bucket policy that
    #     grants Elastic Load Balancing permission to write to the bucket.
    #
    #   * `access_logs.s3.prefix` - \[Application Load Balancers\] The
    #     prefix for the location in the S3 bucket. If you don't specify a
    #     prefix, the access logs are stored in the root of the bucket.
    #
    #   * `deletion_protection.enabled` - Indicates whether deletion
    #     protection is enabled. The value is `true` or `false`.
    #
    #   * `idle_timeout.timeout_seconds` - \[Application Load Balancers\]
    #     The idle timeout value, in seconds. The valid range is 1-4000. The
    #     default is 60 seconds.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancerAttribute AWS API Documentation
    #
    class LoadBalancerAttribute < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Information about the state of the load balancer.
    #
    # @!attribute [rw] code
    #   The state code. The initial state of the load balancer is
    #   `provisioning`. After the load balancer is fully set up and ready to
    #   route traffic, its state is `active`. If the load balancer could not
    #   be set up, its state is `failed`.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :code,
      :reason)
      include Aws::Structure
    end

    # Information to use when checking for a successful response from a
    # target.
    #
    # @note When making an API call, you may pass Matcher
    #   data as a hash:
    #
    #       {
    #         http_code: "HttpCode", # required
    #       }
    #
    # @!attribute [rw] http_code
    #   The HTTP codes.
    #
    #   For Application Load Balancers, you can specify values between 200
    #   and 499, and the default value is 200. You can specify multiple
    #   values (for example, "200,202") or a range of values (for example,
    #   "200-299").
    #
    #   For Network Load Balancers, this is 200 to 399.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Matcher AWS API Documentation
    #
    class Matcher < Struct.new(
      :http_code)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyListenerInput
    #   data as a hash:
    #
    #       {
    #         listener_arn: "ListenerArn", # required
    #         port: 1,
    #         protocol: "HTTP", # accepts HTTP, HTTPS, TCP
    #         ssl_policy: "SslPolicyName",
    #         certificates: [
    #           {
    #             certificate_arn: "CertificateArn",
    #           },
    #         ],
    #         default_actions: [
    #           {
    #             type: "forward", # required, accepts forward
    #             target_group_arn: "TargetGroupArn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for connections from clients to the load balancer.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to the load balancer.
    #   Application Load Balancers support HTTP and HTTPS and Network Load
    #   Balancers support TCP.
    #   @return [String]
    #
    # @!attribute [rw] ssl_policy
    #   The security policy that defines which protocols and ciphers are
    #   supported. For more information, see [Security Policies][1] in the
    #   *Application Load Balancers Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The SSL server certificate.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] default_actions
    #   The default action. For Application Load Balancers, the protocol of
    #   the specified target group must be HTTP or HTTPS. For Network Load
    #   Balancers, the protocol of the specified target group must be TCP.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListenerInput AWS API Documentation
    #
    class ModifyListenerInput < Struct.new(
      :listener_arn,
      :port,
      :protocol,
      :ssl_policy,
      :certificates,
      :default_actions)
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   Information about the modified listeners.
    #   @return [Array<Types::Listener>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListenerOutput AWS API Documentation
    #
    class ModifyListenerOutput < Struct.new(
      :listeners)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyLoadBalancerAttributesInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #         attributes: [ # required
    #           {
    #             key: "LoadBalancerAttributeKey",
    #             value: "LoadBalancerAttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The load balancer attributes.
    #   @return [Array<Types::LoadBalancerAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyLoadBalancerAttributesInput AWS API Documentation
    #
    class ModifyLoadBalancerAttributesInput < Struct.new(
      :load_balancer_arn,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Information about the load balancer attributes.
    #   @return [Array<Types::LoadBalancerAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyLoadBalancerAttributesOutput AWS API Documentation
    #
    class ModifyLoadBalancerAttributesOutput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyRuleInput
    #   data as a hash:
    #
    #       {
    #         rule_arn: "RuleArn", # required
    #         conditions: [
    #           {
    #             field: "ConditionFieldName",
    #             values: ["StringValue"],
    #           },
    #         ],
    #         actions: [
    #           {
    #             type: "forward", # required, accepts forward
    #             target_group_arn: "TargetGroupArn", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions.
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] actions
    #   The actions. The target group must use the HTTP or HTTPS protocol.
    #   @return [Array<Types::Action>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRuleInput AWS API Documentation
    #
    class ModifyRuleInput < Struct.new(
      :rule_arn,
      :conditions,
      :actions)
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the rule.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRuleOutput AWS API Documentation
    #
    class ModifyRuleOutput < Struct.new(
      :rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyTargetGroupAttributesInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #         attributes: [ # required
    #           {
    #             key: "TargetGroupAttributeKey",
    #             value: "TargetGroupAttributeValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   The attributes.
    #   @return [Array<Types::TargetGroupAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupAttributesInput AWS API Documentation
    #
    class ModifyTargetGroupAttributesInput < Struct.new(
      :target_group_arn,
      :attributes)
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Information about the attributes.
    #   @return [Array<Types::TargetGroupAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupAttributesOutput AWS API Documentation
    #
    class ModifyTargetGroupAttributesOutput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyTargetGroupInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #         health_check_protocol: "HTTP", # accepts HTTP, HTTPS, TCP
    #         health_check_port: "HealthCheckPort",
    #         health_check_path: "Path",
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         unhealthy_threshold_count: 1,
    #         matcher: {
    #           http_code: "HttpCode", # required
    #         },
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. The TCP protocol is supported only if the protocol of the
    #   target group is TCP.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   \[HTTP/HTTPS health checks\] The ping path that is the destination
    #   for the health check request.
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. For Application Load Balancers, the range is 5
    #   to 300 seconds. For Network Load Balancers, the supported values are
    #   10 or 30 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_timeout_seconds
    #   \[HTTP/HTTPS health checks\] The amount of time, in seconds, during
    #   which no response means a failed health check.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering the target unhealthy. For Network Load Balancers, this
    #   value must be the same as the healthy threshold count.
    #   @return [Integer]
    #
    # @!attribute [rw] matcher
    #   \[HTTP/HTTPS health checks\] The HTTP codes to use when checking for
    #   a successful response from a target.
    #   @return [Types::Matcher]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupInput AWS API Documentation
    #
    class ModifyTargetGroupInput < Struct.new(
      :target_group_arn,
      :health_check_protocol,
      :health_check_port,
      :health_check_path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher)
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   Information about the target group.
    #   @return [Array<Types::TargetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupOutput AWS API Documentation
    #
    class ModifyTargetGroupOutput < Struct.new(
      :target_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterTargetsInput
    #   data as a hash:
    #
    #       {
    #         target_group_arn: "TargetGroupArn", # required
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             port: 1,
    #             availability_zone: "ZoneName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets. The default port for a target is the port for the
    #   target group. You can specify a port override. If a target is
    #   already registered, you can register it again using a different
    #   port.
    #   @return [Array<Types::TargetDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargetsInput AWS API Documentation
    #
    class RegisterTargetsInput < Struct.new(
      :target_group_arn,
      :targets)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargetsOutput AWS API Documentation
    #
    class RegisterTargetsOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RemoveTagsInput
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"], # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys for the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTagsInput AWS API Documentation
    #
    class RemoveTagsInput < Struct.new(
      :resource_arns,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTagsOutput AWS API Documentation
    #
    class RemoveTagsOutput < Aws::EmptyStructure; end

    # Information about a rule.
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions.
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] actions
    #   The actions.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] is_default
    #   Indicates whether this is the default rule.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :rule_arn,
      :priority,
      :conditions,
      :actions,
      :is_default)
      include Aws::Structure
    end

    # Information about a condition for a rule.
    #
    # @note When making an API call, you may pass RuleCondition
    #   data as a hash:
    #
    #       {
    #         field: "ConditionFieldName",
    #         values: ["StringValue"],
    #       }
    #
    # @!attribute [rw] field
    #   The name of the field. The possible values are `host-header` and
    #   `path-pattern`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The condition value.
    #
    #   If the field name is `host-header`, you can specify a single host
    #   name (for example, my.example.com). A host name is case insensitive,
    #   can be up to 128 characters in length, and can contain any of the
    #   following characters. Note that you can include up to three wildcard
    #   characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \- .
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #
    #   If the field name is `path-pattern`, you can specify a single path
    #   pattern (for example, /img/*). A path pattern is case sensitive,
    #   can be up to 128 characters in length, and can contain any of the
    #   following characters. Note that you can include up to three wildcard
    #   characters.
    #
    #   * A-Z, a-z, 0-9
    #
    #   * \_ - . $ / ~ " ' @ : +
    #
    #   * &amp; (using &amp;amp;)
    #
    #   * * (matches 0 or more characters)
    #
    #   * ? (matches exactly 1 character)
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RuleCondition AWS API Documentation
    #
    class RuleCondition < Struct.new(
      :field,
      :values)
      include Aws::Structure
    end

    # Information about the priorities for the rules for a listener.
    #
    # @note When making an API call, you may pass RulePriorityPair
    #   data as a hash:
    #
    #       {
    #         rule_arn: "RuleArn",
    #         priority: 1,
    #       }
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The rule priority.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RulePriorityPair AWS API Documentation
    #
    class RulePriorityPair < Struct.new(
      :rule_arn,
      :priority)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetIpAddressTypeInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #         ip_address_type: "ipv4", # required, accepts ipv4, dualstack
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type. The possible values are `ipv4` (for IPv4
    #   addresses) and `dualstack` (for IPv4 and IPv6 addresses). Internal
    #   load balancers must use `ipv4`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressTypeInput AWS API Documentation
    #
    class SetIpAddressTypeInput < Struct.new(
      :load_balancer_arn,
      :ip_address_type)
      include Aws::Structure
    end

    # @!attribute [rw] ip_address_type
    #   The IP address type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressTypeOutput AWS API Documentation
    #
    class SetIpAddressTypeOutput < Struct.new(
      :ip_address_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetRulePrioritiesInput
    #   data as a hash:
    #
    #       {
    #         rule_priorities: [ # required
    #           {
    #             rule_arn: "RuleArn",
    #             priority: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule_priorities
    #   The rule priorities.
    #   @return [Array<Types::RulePriorityPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePrioritiesInput AWS API Documentation
    #
    class SetRulePrioritiesInput < Struct.new(
      :rule_priorities)
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the rules.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePrioritiesOutput AWS API Documentation
    #
    class SetRulePrioritiesOutput < Struct.new(
      :rules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetSecurityGroupsInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #         security_groups: ["SecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSecurityGroupsInput AWS API Documentation
    #
    class SetSecurityGroupsInput < Struct.new(
      :load_balancer_arn,
      :security_groups)
      include Aws::Structure
    end

    # @!attribute [rw] security_group_ids
    #   The IDs of the security groups associated with the load balancer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSecurityGroupsOutput AWS API Documentation
    #
    class SetSecurityGroupsOutput < Struct.new(
      :security_group_ids)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetSubnetsInput
    #   data as a hash:
    #
    #       {
    #         load_balancer_arn: "LoadBalancerArn", # required
    #         subnets: ["SubnetId"], # required
    #         subnet_mappings: [
    #           {
    #             subnet_id: "SubnetId",
    #             allocation_id: "AllocationId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of the subnets. You must specify subnets from at least two
    #   Availability Zones. You can specify only one subnet per Availability
    #   Zone. You must specify either subnets or subnet mappings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the subnets. You must specify subnets from at least two
    #   Availability Zones. You can specify only one subnet per Availability
    #   Zone. You must specify either subnets or subnet mappings.
    #
    #   The load balancer is allocated one static IP address per subnet. You
    #   cannot specify your own Elastic IP addresses.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnetsInput AWS API Documentation
    #
    class SetSubnetsInput < Struct.new(
      :load_balancer_arn,
      :subnets,
      :subnet_mappings)
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   Information about the subnet and Availability Zone.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnetsOutput AWS API Documentation
    #
    class SetSubnetsOutput < Struct.new(
      :availability_zones)
      include Aws::Structure
    end

    # Information about a policy used for SSL negotiation.
    #
    # @!attribute [rw] ssl_protocols
    #   The protocols.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ciphers
    #   The ciphers.
    #   @return [Array<Types::Cipher>]
    #
    # @!attribute [rw] name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SslPolicy AWS API Documentation
    #
    class SslPolicy < Struct.new(
      :ssl_protocols,
      :ciphers,
      :name)
      include Aws::Structure
    end

    # Information about a subnet mapping.
    #
    # @note When making an API call, you may pass SubnetMapping
    #   data as a hash:
    #
    #       {
    #         subnet_id: "SubnetId",
    #         allocation_id: "AllocationId",
    #       }
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   \[Network Load Balancers\] The allocation ID of the Elastic IP
    #   address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SubnetMapping AWS API Documentation
    #
    class SubnetMapping < Struct.new(
      :subnet_id,
      :allocation_id)
      include Aws::Structure
    end

    # Information about a tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # The tags associated with a resource.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TagDescription AWS API Documentation
    #
    class TagDescription < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # Information about a target.
    #
    # @note When making an API call, you may pass TargetDescription
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         port: 1,
    #         availability_zone: "ZoneName",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the target. If the target type of the target group is
    #   `instance`, specify an instance ID. If the target type is `ip`,
    #   specify an IP address.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the target is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the IP address is to be registered.
    #   Specify `all` to register an IP address outside the target group VPC
    #   with all Availability Zones that are enabled for the load balancer.
    #
    #   If the IP address is in a subnet of the VPC for the target group,
    #   the Availability Zone is automatically detected and this parameter
    #   is optional.
    #
    #   This parameter is not supported if the target type of the target
    #   group is `instance`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetDescription AWS API Documentation
    #
    class TargetDescription < Struct.new(
      :id,
      :port,
      :availability_zone)
      include Aws::Structure
    end

    # Information about a target group.
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] target_group_name
    #   The name of the target group.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for routing traffic to the targets.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the targets are listening.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the targets.
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol to use to connect with the target.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port to use to connect with the target.
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response means a
    #   failed health check.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold_count
    #   The number of consecutive health checks successes required before
    #   considering an unhealthy target healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering the target unhealthy.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_path
    #   The destination for the health check request.
    #   @return [String]
    #
    # @!attribute [rw] matcher
    #   The HTTP codes to use when checking for a successful response from a
    #   target.
    #   @return [Types::Matcher]
    #
    # @!attribute [rw] load_balancer_arns
    #   The Amazon Resource Names (ARN) of the load balancers that route
    #   traffic to this target group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_type
    #   The type of target that you must specify when registering targets
    #   with this target group. The possible values are `instance` (targets
    #   are specified by instance ID) or `ip` (targets are specified by IP
    #   address).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroup AWS API Documentation
    #
    class TargetGroup < Struct.new(
      :target_group_arn,
      :target_group_name,
      :protocol,
      :port,
      :vpc_id,
      :health_check_protocol,
      :health_check_port,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :health_check_path,
      :matcher,
      :load_balancer_arns,
      :target_type)
      include Aws::Structure
    end

    # Information about a target group attribute.
    #
    # @note When making an API call, you may pass TargetGroupAttribute
    #   data as a hash:
    #
    #       {
    #         key: "TargetGroupAttributeKey",
    #         value: "TargetGroupAttributeValue",
    #       }
    #
    # @!attribute [rw] key
    #   The name of the attribute.
    #
    #   * `deregistration_delay.timeout_seconds` - The amount time for
    #     Elastic Load Balancing to wait before changing the state of a
    #     deregistering target from `draining` to `unused`. The range is
    #     0-3600 seconds. The default value is 300 seconds.
    #
    #   * `stickiness.enabled` - \[Application Load Balancers\] Indicates
    #     whether sticky sessions are enabled. The value is `true` or
    #     `false`.
    #
    #   * `stickiness.type` - \[Application Load Balancers\] The type of
    #     sticky sessions. The possible value is `lb_cookie`.
    #
    #   * `stickiness.lb_cookie.duration_seconds` - \[Application Load
    #     Balancers\] The time period, in seconds, during which requests
    #     from a client should be routed to the same target. After this time
    #     period expires, the load balancer-generated cookie is considered
    #     stale. The range is 1 second to 1 week (604800 seconds). The
    #     default value is 1 day (86400 seconds).
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroupAttribute AWS API Documentation
    #
    class TargetGroupAttribute < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Information about the current health of a target.
    #
    # @!attribute [rw] state
    #   The state of the target.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason code. If the target state is `healthy`, a reason code is
    #   not provided.
    #
    #   If the target state is `initial`, the reason code can be one of the
    #   following values:
    #
    #   * `Elb.RegistrationInProgress` - The target is in the process of
    #     being registered with the load balancer.
    #
    #   * `Elb.InitialHealthChecking` - The load balancer is still sending
    #     the target the minimum number of health checks required to
    #     determine its health status.
    #
    #   If the target state is `unhealthy`, the reason code can be one of
    #   the following values:
    #
    #   * `Target.ResponseCodeMismatch` - The health checks did not return
    #     an expected HTTP code.
    #
    #   * `Target.Timeout` - The health check requests timed out.
    #
    #   * `Target.FailedHealthChecks` - The health checks failed because the
    #     connection to the target timed out, the target response was
    #     malformed, or the target failed the health check for an unknown
    #     reason.
    #
    #   * `Elb.InternalError` - The health checks failed due to an internal
    #     error.
    #
    #   If the target state is `unused`, the reason code can be one of the
    #   following values:
    #
    #   * `Target.NotRegistered` - The target is not registered with the
    #     target group.
    #
    #   * `Target.NotInUse` - The target group is not used by any load
    #     balancer or the target is in an Availability Zone that is not
    #     enabled for its load balancer.
    #
    #   * `Target.IpUnusable` - The target IP address is reserved for use by
    #     a load balancer.
    #
    #   * `Target.InvalidState` - The target is in the stopped or terminated
    #     state.
    #
    #   If the target state is `draining`, the reason code can be the
    #   following value:
    #
    #   * `Target.DeregistrationInProgress` - The target is in the process
    #     of being deregistered and the deregistration delay period has not
    #     expired.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the target health that provides additional details.
    #   If the state is `healthy`, a description is not provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetHealth AWS API Documentation
    #
    class TargetHealth < Struct.new(
      :state,
      :reason,
      :description)
      include Aws::Structure
    end

    # Information about the health of a target.
    #
    # @!attribute [rw] target
    #   The description of the target.
    #   @return [Types::TargetDescription]
    #
    # @!attribute [rw] health_check_port
    #   The port to use to connect with the target.
    #   @return [String]
    #
    # @!attribute [rw] target_health
    #   The health information for the target.
    #   @return [Types::TargetHealth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetHealthDescription AWS API Documentation
    #
    class TargetHealthDescription < Struct.new(
      :target,
      :health_check_port,
      :target_health)
      include Aws::Structure
    end

  end
end
