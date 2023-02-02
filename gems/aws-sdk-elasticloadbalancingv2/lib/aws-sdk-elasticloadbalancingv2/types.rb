# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticLoadBalancingV2
  module Types

    # The specified ALPN policy is not supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ALPNPolicyNotSupportedException AWS API Documentation
    #
    class ALPNPolicyNotSupportedException < Aws::EmptyStructure; end

    # Information about an action.
    #
    # Each rule must include exactly one of the following types of actions:
    # `forward`, `fixed-response`, or `redirect`, and it must be the last
    # action to be performed.
    #
    # @!attribute [rw] type
    #   The type of action.
    #   @return [String]
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group. Specify only
    #   when `Type` is `forward` and you want to route to a single target
    #   group. To route to one or more target groups, use `ForwardConfig`
    #   instead.
    #   @return [String]
    #
    # @!attribute [rw] authenticate_oidc_config
    #   \[HTTPS listeners\] Information about an identity provider that is
    #   compliant with OpenID Connect (OIDC). Specify only when `Type` is
    #   `authenticate-oidc`.
    #   @return [Types::AuthenticateOidcActionConfig]
    #
    # @!attribute [rw] authenticate_cognito_config
    #   \[HTTPS listeners\] Information for using Amazon Cognito to
    #   authenticate users. Specify only when `Type` is
    #   `authenticate-cognito`.
    #   @return [Types::AuthenticateCognitoActionConfig]
    #
    # @!attribute [rw] order
    #   The order for the action. This value is required for rules with
    #   multiple actions. The action with the lowest value for order is
    #   performed first.
    #   @return [Integer]
    #
    # @!attribute [rw] redirect_config
    #   \[Application Load Balancer\] Information for creating a redirect
    #   action. Specify only when `Type` is `redirect`.
    #   @return [Types::RedirectActionConfig]
    #
    # @!attribute [rw] fixed_response_config
    #   \[Application Load Balancer\] Information for creating an action
    #   that returns a custom HTTP response. Specify only when `Type` is
    #   `fixed-response`.
    #   @return [Types::FixedResponseActionConfig]
    #
    # @!attribute [rw] forward_config
    #   Information for creating an action that distributes requests among
    #   one or more target groups. For Network Load Balancers, you can
    #   specify a single target group. Specify only when `Type` is
    #   `forward`. If you specify both `ForwardConfig` and `TargetGroupArn`,
    #   you can specify only one target group using `ForwardConfig` and it
    #   must be the same target group specified in `TargetGroupArn`.
    #   @return [Types::ForwardActionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Action AWS API Documentation
    #
    class Action < Struct.new(
      :type,
      :target_group_arn,
      :authenticate_oidc_config,
      :authenticate_cognito_config,
      :order,
      :redirect_config,
      :fixed_response_config,
      :forward_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The certificate to add. You can specify one certificate per call.
    #   Set `CertificateArn` to the certificate ARN but do not set
    #   `IsDefault`.
    #   @return [Array<Types::Certificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddListenerCertificatesInput AWS API Documentation
    #
    class AddListenerCertificatesInput < Struct.new(
      :listener_arn,
      :certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificates
    #   Information about the certificates in the certificate list.
    #   @return [Array<Types::Certificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddListenerCertificatesOutput AWS API Documentation
    #
    class AddListenerCertificatesOutput < Struct.new(
      :certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTagsInput AWS API Documentation
    #
    class AddTagsInput < Struct.new(
      :resource_arns,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AddTagsOutput AWS API Documentation
    #
    class AddTagsOutput < Aws::EmptyStructure; end

    # The specified allocation ID does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AllocationIdNotFoundException AWS API Documentation
    #
    class AllocationIdNotFoundException < Aws::EmptyStructure; end

    # Request parameters to use when integrating with Amazon Cognito to
    # authenticate users.
    #
    # @!attribute [rw] user_pool_arn
    #   The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_client_id
    #   The ID of the Amazon Cognito user pool client.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_domain
    #   The domain prefix or fully-qualified domain name of the Amazon
    #   Cognito user pool.
    #   @return [String]
    #
    # @!attribute [rw] session_cookie_name
    #   The name of the cookie used to maintain session information. The
    #   default is AWSELBAuthSessionCookie.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The set of user claims to be requested from the IdP. The default is
    #   `openid`.
    #
    #   To verify which scope values your IdP supports and how to separate
    #   multiple values, see the documentation for your IdP.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout
    #   The maximum duration of the authentication session, in seconds. The
    #   default is 604800 seconds (7 days).
    #   @return [Integer]
    #
    # @!attribute [rw] authentication_request_extra_params
    #   The query parameters (up to 10) to include in the redirect request
    #   to the authorization endpoint.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] on_unauthenticated_request
    #   The behavior if the user is not authenticated. The following are
    #   possible values:
    #
    #   * deny`` - Return an HTTP 401 Unauthorized error.
    #
    #   * allow`` - Allow the request to be forwarded to the target.
    #
    #   * authenticate`` - Redirect the request to the IdP authorization
    #     endpoint. This is the default value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AuthenticateCognitoActionConfig AWS API Documentation
    #
    class AuthenticateCognitoActionConfig < Struct.new(
      :user_pool_arn,
      :user_pool_client_id,
      :user_pool_domain,
      :session_cookie_name,
      :scope,
      :session_timeout,
      :authentication_request_extra_params,
      :on_unauthenticated_request)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request parameters when using an identity provider (IdP) that is
    # compliant with OpenID Connect (OIDC) to authenticate users.
    #
    # @!attribute [rw] issuer
    #   The OIDC issuer identifier of the IdP. This must be a full URL,
    #   including the HTTPS protocol, the domain, and the path.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   The authorization endpoint of the IdP. This must be a full URL,
    #   including the HTTPS protocol, the domain, and the path.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   The token endpoint of the IdP. This must be a full URL, including
    #   the HTTPS protocol, the domain, and the path.
    #   @return [String]
    #
    # @!attribute [rw] user_info_endpoint
    #   The user info endpoint of the IdP. This must be a full URL,
    #   including the HTTPS protocol, the domain, and the path.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OAuth 2.0 client identifier.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The OAuth 2.0 client secret. This parameter is required if you are
    #   creating a rule. If you are modifying a rule, you can omit this
    #   parameter if you set `UseExistingClientSecret` to true.
    #   @return [String]
    #
    # @!attribute [rw] session_cookie_name
    #   The name of the cookie used to maintain session information. The
    #   default is AWSELBAuthSessionCookie.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The set of user claims to be requested from the IdP. The default is
    #   `openid`.
    #
    #   To verify which scope values your IdP supports and how to separate
    #   multiple values, see the documentation for your IdP.
    #   @return [String]
    #
    # @!attribute [rw] session_timeout
    #   The maximum duration of the authentication session, in seconds. The
    #   default is 604800 seconds (7 days).
    #   @return [Integer]
    #
    # @!attribute [rw] authentication_request_extra_params
    #   The query parameters (up to 10) to include in the redirect request
    #   to the authorization endpoint.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] on_unauthenticated_request
    #   The behavior if the user is not authenticated. The following are
    #   possible values:
    #
    #   * deny`` - Return an HTTP 401 Unauthorized error.
    #
    #   * allow`` - Allow the request to be forwarded to the target.
    #
    #   * authenticate`` - Redirect the request to the IdP authorization
    #     endpoint. This is the default value.
    #   @return [String]
    #
    # @!attribute [rw] use_existing_client_secret
    #   Indicates whether to use the existing client secret when modifying a
    #   rule. If you are creating a rule, you can omit this parameter or set
    #   it to false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AuthenticateOidcActionConfig AWS API Documentation
    #
    class AuthenticateOidcActionConfig < Struct.new(
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :user_info_endpoint,
      :client_id,
      :client_secret,
      :session_cookie_name,
      :scope,
      :session_timeout,
      :authentication_request_extra_params,
      :on_unauthenticated_request,
      :use_existing_client_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Availability Zone.
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. You can specify one subnet per Availability
    #   Zone.
    #   @return [String]
    #
    # @!attribute [rw] outpost_id
    #   \[Application Load Balancers on Outposts\] The ID of the Outpost.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_addresses
    #   \[Network Load Balancers\] If you need static IP addresses for your
    #   load balancer, you can specify one Elastic IP address per
    #   Availability Zone when you create an internal-facing load balancer.
    #   For internal load balancers, you can specify a private IP address
    #   from the IPv4 range of the subnet.
    #   @return [Array<Types::LoadBalancerAddress>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id,
      :outpost_id,
      :load_balancer_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Availability Zone is not supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/AvailabilityZoneNotSupportedException AWS API Documentation
    #
    class AvailabilityZoneNotSupportedException < Aws::EmptyStructure; end

    # Information about an SSL server certificate.
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   Indicates whether the certificate is the default certificate. Do not
    #   set this value when specifying a certificate as an input. This value
    #   is not included in the output when describing a listener, but is
    #   included when describing listener certificates.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_arn,
      :is_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified certificate does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CertificateNotFoundException AWS API Documentation
    #
    class CertificateNotFoundException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to the load balancer. For
    #   Application Load Balancers, the supported protocols are HTTP and
    #   HTTPS. For Network Load Balancers, the supported protocols are TCP,
    #   TLS, UDP, and TCP\_UDP. You can’t specify the UDP or TCP\_UDP
    #   protocol if dual-stack mode is enabled. You cannot specify a
    #   protocol for a Gateway Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the load balancer is listening. You cannot specify
    #   a port for a Gateway Load Balancer.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_policy
    #   \[HTTPS and TLS listeners\] The security policy that defines which
    #   protocols and ciphers are supported.
    #
    #   For more information, see [Security policies][1] in the *Application
    #   Load Balancers Guide* and [Security policies][2] in the *Network
    #   Load Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   \[HTTPS and TLS listeners\] The default certificate for the
    #   listener. You must provide exactly one certificate. Set
    #   `CertificateArn` to the certificate ARN but do not set `IsDefault`.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] default_actions
    #   The actions for the default rule.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] alpn_policy
    #   \[TLS listeners\] The name of the Application-Layer Protocol
    #   Negotiation (ALPN) policy. You can specify one policy name. The
    #   following are the possible values:
    #
    #   * `HTTP1Only`
    #
    #   * `HTTP2Only`
    #
    #   * `HTTP2Optional`
    #
    #   * `HTTP2Preferred`
    #
    #   * `None`
    #
    #   For more information, see [ALPN policies][1] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the listener.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateListenerInput AWS API Documentation
    #
    class CreateListenerInput < Struct.new(
      :load_balancer_arn,
      :protocol,
      :port,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the load balancer.
    #
    #   This name must be unique per region per account, can have a maximum
    #   of 32 characters, must contain only alphanumeric characters or
    #   hyphens, must not begin or end with a hyphen, and must not begin
    #   with "internal-".
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet
    #   mappings, but not both. To specify an Elastic IP address, specify
    #   subnet mappings instead of subnets.
    #
    #   \[Application Load Balancers\] You must specify subnets from at
    #   least two Availability Zones.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify
    #   subnets from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones.
    #
    #   \[Gateway Load Balancers\] You can specify subnets from one or more
    #   Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet
    #   mappings, but not both.
    #
    #   \[Application Load Balancers\] You must specify subnets from at
    #   least two Availability Zones. You cannot specify Elastic IP
    #   addresses for your subnets.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify
    #   subnets from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones. You can specify one Elastic IP address per
    #   subnet if you need static IP addresses for your internet-facing load
    #   balancer. For internal load balancers, you can specify one private
    #   IP address per subnet from the IPv4 range of the subnet. For
    #   internet-facing load balancer, you can specify one IPv6 address per
    #   subnet.
    #
    #   \[Gateway Load Balancers\] You can specify subnets from one or more
    #   Availability Zones. You cannot specify Elastic IP addresses for your
    #   subnets.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] security_groups
    #   \[Application Load Balancers\] The IDs of the security groups for
    #   the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses. The DNS name of an Internet-facing load balancer is
    #   publicly resolvable to the public IP addresses of the nodes.
    #   Therefore, Internet-facing load balancers can route requests from
    #   clients over the internet.
    #
    #   The nodes of an internal load balancer have only private IP
    #   addresses. The DNS name of an internal load balancer is publicly
    #   resolvable to the private IP addresses of the nodes. Therefore,
    #   internal load balancers can route requests only from clients with
    #   access to the VPC for the load balancer.
    #
    #   The default is an Internet-facing load balancer.
    #
    #   You cannot specify a scheme for a Gateway Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the load balancer.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of load balancer. The default is `application`.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses).
    #   @return [String]
    #
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   \[Application Load Balancers on Outposts\] The ID of the
    #   customer-owned address pool (CoIP pool).
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
      :ip_address_type,
      :customer_owned_ipv_4_pool)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions.
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] priority
    #   The rule priority. A listener can't have multiple rules with the
    #   same priority.
    #   @return [Integer]
    #
    # @!attribute [rw] actions
    #   The actions.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the rule.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateRuleInput AWS API Documentation
    #
    class CreateRuleInput < Struct.new(
      :listener_arn,
      :conditions,
      :priority,
      :actions,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   HTTPS. For Network Load Balancers, the supported protocols are TCP,
    #   TLS, UDP, or TCP\_UDP. For Gateway Load Balancers, the supported
    #   protocol is GENEVE. A TCP\_UDP listener must be associated with a
    #   TCP\_UDP target group. If the target is a Lambda function, this
    #   parameter does not apply.
    #   @return [String]
    #
    # @!attribute [rw] protocol_version
    #   \[HTTP/HTTPS protocol\] The protocol version. Specify `GRPC` to send
    #   requests to targets using gRPC. Specify `HTTP2` to send requests to
    #   targets using HTTP/2. The default is `HTTP1`, which sends requests
    #   to targets using HTTP/1.1.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the targets receive traffic. This port is used
    #   unless you specify a port override when registering the target. If
    #   the target is a Lambda function, this parameter does not apply. If
    #   the protocol is GENEVE, the supported port is 6081.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the virtual private cloud (VPC). If the target is
    #   a Lambda function, this parameter does not apply. Otherwise, this
    #   parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. For Application Load Balancers, the default is HTTP. For
    #   Network Load Balancers and Gateway Load Balancers, the default is
    #   TCP. The TCP protocol is not supported for health checks if the
    #   protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP,
    #   and TCP\_UDP protocols are not supported for health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP\_UDP,
    #   the default is `traffic-port`, which is the port on which each
    #   target receives traffic from the load balancer. If the protocol is
    #   GENEVE, the default is port 80.
    #   @return [String]
    #
    # @!attribute [rw] health_check_enabled
    #   Indicates whether health checks are enabled. If the target type is
    #   `lambda`, health checks are disabled by default but can be enabled.
    #   If the target type is `instance`, `ip`, or `alb`, health checks are
    #   always enabled and cannot be disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_path
    #   \[HTTP/HTTPS health checks\] The destination for health checks on
    #   the targets.
    #
    #   \[HTTP1 or HTTP2 protocol version\] The ping path. The default is /.
    #
    #   \[GRPC protocol version\] The path of a custom health check method
    #   with the format /package.service/method. The default is /Amazon Web
    #   Services.ALB/healthcheck.
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target. The range is 5-300. If the target group
    #   protocol is TCP, TLS, UDP, TCP\_UDP, HTTP or HTTPS, the default is
    #   30 seconds. If the target group protocol is GENEVE, the default is
    #   10 seconds. If the target type is `lambda`, the default is 35
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_timeout_seconds
    #   The amount of time, in seconds, during which no response from a
    #   target means a failed health check. The range is 2–120 seconds. For
    #   target groups with a protocol of HTTP, the default is 6 seconds. For
    #   target groups with a protocol of TCP, TLS or HTTPS, the default is
    #   10 seconds. For target groups with a protocol of GENEVE, the default
    #   is 5 seconds. If the target type is `lambda`, the default is 30
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] healthy_threshold_count
    #   The number of consecutive health check successes required before
    #   considering a target healthy. The range is 2-10. If the target group
    #   protocol is TCP, TCP\_UDP, UDP, TLS, HTTP or HTTPS, the default is
    #   5. For target groups with a protocol of GENEVE, the default is 5. If
    #   the target type is `lambda`, the default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold_count
    #   The number of consecutive health check failures required before
    #   considering a target unhealthy. The range is 2-10. If the target
    #   group protocol is TCP, TCP\_UDP, UDP, TLS, HTTP or HTTPS, the
    #   default is 2. For target groups with a protocol of GENEVE, the
    #   default is 2. If the target type is `lambda`, the default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] matcher
    #   \[HTTP/HTTPS health checks\] The HTTP or gRPC codes to use when
    #   checking for a successful response from a target. For target groups
    #   with a protocol of TCP, TCP\_UDP, UDP or TLS the range is 200-599.
    #   For target groups with a protocol of HTTP or HTTPS, the range is
    #   200-499. For target groups with a protocol of GENEVE, the range is
    #   200-399.
    #   @return [Types::Matcher]
    #
    # @!attribute [rw] target_type
    #   The type of target that you must specify when registering targets
    #   with this target group. You can't specify targets for a target
    #   group using more than one target type.
    #
    #   * `instance` - Register targets by instance ID. This is the default
    #     value.
    #
    #   * `ip` - Register targets by IP address. You can specify IP
    #     addresses from the subnets of the virtual private cloud (VPC) for
    #     the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12,
    #     and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You
    #     can't specify publicly routable IP addresses.
    #
    #   * `lambda` - Register a single Lambda function as a target.
    #
    #   * `alb` - Register a single Application Load Balancer as a target.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the target group.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used for this target group. The possible
    #   values are `ipv4` and `ipv6`. This is an optional parameter. If not
    #   specified, the IP address type defaults to `ipv4`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/CreateTargetGroupInput AWS API Documentation
    #
    class CreateTargetGroupInput < Struct.new(
      :name,
      :protocol,
      :protocol_version,
      :port,
      :vpc_id,
      :health_check_protocol,
      :health_check_port,
      :health_check_enabled,
      :health_check_path,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher,
      :target_type,
      :tags,
      :ip_address_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListenerInput AWS API Documentation
    #
    class DeleteListenerInput < Struct.new(
      :listener_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteListenerOutput AWS API Documentation
    #
    class DeleteListenerOutput < Aws::EmptyStructure; end

    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancerInput AWS API Documentation
    #
    class DeleteLoadBalancerInput < Struct.new(
      :load_balancer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteLoadBalancerOutput AWS API Documentation
    #
    class DeleteLoadBalancerOutput < Aws::EmptyStructure; end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRuleInput AWS API Documentation
    #
    class DeleteRuleInput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteRuleOutput AWS API Documentation
    #
    class DeleteRuleOutput < Aws::EmptyStructure; end

    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroupInput AWS API Documentation
    #
    class DeleteTargetGroupInput < Struct.new(
      :target_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeleteTargetGroupOutput AWS API Documentation
    #
    class DeleteTargetGroupOutput < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DeregisterTargetsOutput AWS API Documentation
    #
    class DeregisterTargetsOutput < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] limits
    #   Information about the limits.
    #   @return [Array<Types::Limit>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeAccountLimitsOutput AWS API Documentation
    #
    class DescribeAccountLimitsOutput < Struct.new(
      :limits,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Names (ARN) of the listener.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenerCertificatesInput AWS API Documentation
    #
    class DescribeListenerCertificatesInput < Struct.new(
      :listener_arn,
      :marker,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificates
    #   Information about the certificates.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenerCertificatesOutput AWS API Documentation
    #
    class DescribeListenerCertificatesOutput < Struct.new(
      :certificates,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   Information about the listeners.
    #   @return [Array<Types::Listener>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeListenersOutput AWS API Documentation
    #
    class DescribeListenersOutput < Struct.new(
      :listeners,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancerAttributesInput AWS API Documentation
    #
    class DescribeLoadBalancerAttributesInput < Struct.new(
      :load_balancer_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancers
    #   Information about the load balancers.
    #   @return [Array<Types::LoadBalancer>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeLoadBalancersOutput AWS API Documentation
    #
    class DescribeLoadBalancersOutput < Struct.new(
      :load_balancers,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the rules.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeRulesOutput AWS API Documentation
    #
    class DescribeRulesOutput < Struct.new(
      :rules,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] load_balancer_type
    #   The type of load balancer. The default lists the SSL policies for
    #   all load balancers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPoliciesInput AWS API Documentation
    #
    class DescribeSSLPoliciesInput < Struct.new(
      :names,
      :marker,
      :page_size,
      :load_balancer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ssl_policies
    #   Information about the security policies.
    #   @return [Array<Types::SslPolicy>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeSSLPoliciesOutput AWS API Documentation
    #
    class DescribeSSLPoliciesOutput < Struct.new(
      :ssl_policies,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARN) of the resources. You can specify up
    #   to 20 resources in a single call.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTagsInput AWS API Documentation
    #
    class DescribeTagsInput < Struct.new(
      :resource_arns)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupAttributesInput AWS API Documentation
    #
    class DescribeTargetGroupAttributesInput < Struct.new(
      :target_group_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   Information about the target groups.
    #   @return [Array<Types::TargetGroup>]
    #
    # @!attribute [rw] next_marker
    #   If there are additional results, this is the marker for the next set
    #   of results. Otherwise, this is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DescribeTargetGroupsOutput AWS API Documentation
    #
    class DescribeTargetGroupsOutput < Struct.new(
      :target_groups,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A listener with the specified port already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DuplicateListenerException AWS API Documentation
    #
    class DuplicateListenerException < Aws::EmptyStructure; end

    # A load balancer with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DuplicateLoadBalancerNameException AWS API Documentation
    #
    class DuplicateLoadBalancerNameException < Aws::EmptyStructure; end

    # A tag key was specified more than once.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DuplicateTagKeysException AWS API Documentation
    #
    class DuplicateTagKeysException < Aws::EmptyStructure; end

    # A target group with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/DuplicateTargetGroupNameException AWS API Documentation
    #
    class DuplicateTargetGroupNameException < Aws::EmptyStructure; end

    # Information about an action that returns a custom HTTP response.
    #
    # @!attribute [rw] message_body
    #   The message.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP response code (2XX, 4XX, or 5XX).
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type.
    #
    #   Valid Values: text/plain \| text/css \| text/html \|
    #   application/javascript \| application/json
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/FixedResponseActionConfig AWS API Documentation
    #
    class FixedResponseActionConfig < Struct.new(
      :message_body,
      :status_code,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a forward action.
    #
    # @!attribute [rw] target_groups
    #   The target groups. For Network Load Balancers, you can specify a
    #   single target group.
    #   @return [Array<Types::TargetGroupTuple>]
    #
    # @!attribute [rw] target_group_stickiness_config
    #   The target group stickiness for the rule.
    #   @return [Types::TargetGroupStickinessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ForwardActionConfig AWS API Documentation
    #
    class ForwardActionConfig < Struct.new(
      :target_groups,
      :target_group_stickiness_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The health of the specified targets could not be retrieved due to an
    # internal error.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/HealthUnavailableException AWS API Documentation
    #
    class HealthUnavailableException < Aws::EmptyStructure; end

    # Information about a host header condition.
    #
    # @!attribute [rw] values
    #   The host names. The maximum size of each name is 128 characters. The
    #   comparison is case insensitive. The following wildcard characters
    #   are supported: * (matches 0 or more characters) and ? (matches
    #   exactly 1 character).
    #
    #   If you specify multiple strings, the condition is satisfied if one
    #   of the strings matches the host name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/HostHeaderConditionConfig AWS API Documentation
    #
    class HostHeaderConditionConfig < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an HTTP header condition.
    #
    # There is a set of standard HTTP header fields. You can also define
    # custom HTTP header fields.
    #
    # @!attribute [rw] http_header_name
    #   The name of the HTTP header field. The maximum size is 40
    #   characters. The header name is case insensitive. The allowed
    #   characters are specified by RFC 7230. Wildcards are not supported.
    #
    #   You can't use an HTTP header condition to specify the host header.
    #   Use HostHeaderConditionConfig to specify a host header condition.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The strings to compare against the value of the HTTP header. The
    #   maximum size of each string is 128 characters. The comparison
    #   strings are case insensitive. The following wildcard characters are
    #   supported: * (matches 0 or more characters) and ? (matches exactly
    #   1 character).
    #
    #   If the same header appears multiple times in the request, we search
    #   them in order until a match is found.
    #
    #   If you specify multiple strings, the condition is satisfied if one
    #   of the strings matches the value of the HTTP header. To require that
    #   all of the strings are a match, create one condition per string.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/HttpHeaderConditionConfig AWS API Documentation
    #
    class HttpHeaderConditionConfig < Struct.new(
      :http_header_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an HTTP method condition.
    #
    # HTTP defines a set of request methods, also referred to as HTTP verbs.
    # For more information, see the [HTTP Method Registry][1]. You can also
    # define custom HTTP methods.
    #
    #
    #
    # [1]: https://www.iana.org/assignments/http-methods/http-methods.xhtml
    #
    # @!attribute [rw] values
    #   The name of the request method. The maximum size is 40 characters.
    #   The allowed characters are A-Z, hyphen (-), and underscore (\_). The
    #   comparison is case sensitive. Wildcards are not supported;
    #   therefore, the method name must be an exact match.
    #
    #   If you specify multiple strings, the condition is satisfied if one
    #   of the strings matches the HTTP request method. We recommend that
    #   you route GET and HEAD requests in the same way, because the
    #   response to a HEAD request may be cached.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/HttpRequestMethodConditionConfig AWS API Documentation
    #
    class HttpRequestMethodConditionConfig < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration is not valid with this protocol.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/IncompatibleProtocolsException AWS API Documentation
    #
    class IncompatibleProtocolsException < Aws::EmptyStructure; end

    # The requested configuration is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidConfigurationRequestException AWS API Documentation
    #
    class InvalidConfigurationRequestException < Aws::EmptyStructure; end

    # The requested action is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidLoadBalancerActionException AWS API Documentation
    #
    class InvalidLoadBalancerActionException < Aws::EmptyStructure; end

    # The requested scheme is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidSchemeException AWS API Documentation
    #
    class InvalidSchemeException < Aws::EmptyStructure; end

    # The specified security group does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidSecurityGroupException AWS API Documentation
    #
    class InvalidSecurityGroupException < Aws::EmptyStructure; end

    # The specified subnet is out of available addresses.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidSubnetException AWS API Documentation
    #
    class InvalidSubnetException < Aws::EmptyStructure; end

    # The specified target does not exist, is not in the same VPC as the
    # target group, or has an unsupported instance type.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/InvalidTargetException AWS API Documentation
    #
    class InvalidTargetException < Aws::EmptyStructure; end

    # Information about an Elastic Load Balancing resource limit for your
    # Amazon Web Services account.
    #
    # @!attribute [rw] name
    #   The name of the limit. The possible values are:
    #
    #   * application-load-balancers
    #
    #   * condition-values-per-alb-rule
    #
    #   * condition-wildcards-per-alb-rule
    #
    #   * gateway-load-balancers
    #
    #   * gateway-load-balancers-per-vpc
    #
    #   * geneve-target-groups
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
    #   * target-groups-per-action-on-application-load-balancer
    #
    #   * target-groups-per-action-on-network-load-balancer
    #
    #   * target-groups-per-application-load-balancer
    #
    #   * targets-per-application-load-balancer
    #
    #   * targets-per-availability-zone-per-gateway-load-balancer
    #
    #   * targets-per-availability-zone-per-network-load-balancer
    #
    #   * targets-per-network-load-balancer
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
      SENSITIVE = []
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
    #   \[HTTPS or TLS listener\] The default certificate for the listener.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] ssl_policy
    #   \[HTTPS or TLS listener\] The security policy that defines which
    #   protocols and ciphers are supported.
    #   @return [String]
    #
    # @!attribute [rw] default_actions
    #   The default actions for the listener.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] alpn_policy
    #   \[TLS listener\] The name of the Application-Layer Protocol
    #   Negotiation (ALPN) policy.
    #   @return [Array<String>]
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
      :default_actions,
      :alpn_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified listener does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ListenerNotFoundException AWS API Documentation
    #
    class ListenerNotFoundException < Aws::EmptyStructure; end

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
    #   clients over the internet.
    #
    #   The nodes of an internal load balancer have only private IP
    #   addresses. The DNS name of an internal load balancer is publicly
    #   resolvable to the private IP addresses of the nodes. Therefore,
    #   internal load balancers can route requests only from clients with
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
    #   The subnets for the load balancer.
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
    # @!attribute [rw] customer_owned_ipv_4_pool
    #   \[Application Load Balancers on Outposts\] The ID of the
    #   customer-owned address pool.
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
      :ip_address_type,
      :customer_owned_ipv_4_pool)
      SENSITIVE = []
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
    #   address for an internal-facing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] private_i_pv_4_address
    #   \[Network Load Balancers\] The private IPv4 address for an internal
    #   load balancer.
    #   @return [String]
    #
    # @!attribute [rw] i_pv_6_address
    #   \[Network Load Balancers\] The IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancerAddress AWS API Documentation
    #
    class LoadBalancerAddress < Struct.new(
      :ip_address,
      :allocation_id,
      :private_i_pv_4_address,
      :i_pv_6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer attribute.
    #
    # @!attribute [rw] key
    #   The name of the attribute.
    #
    #   The following attributes are supported by all load balancers:
    #
    #   * `deletion_protection.enabled` - Indicates whether deletion
    #     protection is enabled. The value is `true` or `false`. The default
    #     is `false`.
    #
    #   * `load_balancing.cross_zone.enabled` - Indicates whether cross-zone
    #     load balancing is enabled. The possible values are `true` and
    #     `false`. The default for Network Load Balancers and Gateway Load
    #     Balancers is `false`. The default for Application Load Balancers
    #     is `true`, and cannot be changed.
    #
    #   The following attributes are supported by both Application Load
    #   Balancers and Network Load Balancers:
    #
    #   * `access_logs.s3.enabled` - Indicates whether access logs are
    #     enabled. The value is `true` or `false`. The default is `false`.
    #
    #   * `access_logs.s3.bucket` - The name of the S3 bucket for the access
    #     logs. This attribute is required if access logs are enabled. The
    #     bucket must exist in the same region as the load balancer and have
    #     a bucket policy that grants Elastic Load Balancing permissions to
    #     write to the bucket.
    #
    #   * `access_logs.s3.prefix` - The prefix for the location in the S3
    #     bucket for the access logs.
    #
    #   * `ipv6.deny_all_igw_traffic` - Blocks internet gateway (IGW) access
    #     to the load balancer. It is set to `false` for internet-facing
    #     load balancers and `true` for internal load balancers, preventing
    #     unintended access to your internal load balancer through an
    #     internet gateway.
    #
    #   The following attributes are supported by only Application Load
    #   Balancers:
    #
    #   * `idle_timeout.timeout_seconds` - The idle timeout value, in
    #     seconds. The valid range is 1-4000 seconds. The default is 60
    #     seconds.
    #
    #   * `routing.http.desync_mitigation_mode` - Determines how the load
    #     balancer handles requests that might pose a security risk to your
    #     application. The possible values are `monitor`, `defensive`, and
    #     `strictest`. The default is `defensive`.
    #
    #   * `routing.http.drop_invalid_header_fields.enabled` - Indicates
    #     whether HTTP headers with invalid header fields are removed by the
    #     load balancer (`true`) or routed to targets (`false`). The default
    #     is `false`.
    #
    #   * `routing.http.preserve_host_header.enabled` - Indicates whether
    #     the Application Load Balancer should preserve the `Host` header in
    #     the HTTP request and send it to the target without any change. The
    #     possible values are `true` and `false`. The default is `false`.
    #
    #   * `routing.http.x_amzn_tls_version_and_cipher_suite.enabled` -
    #     Indicates whether the two headers (`x-amzn-tls-version` and
    #     `x-amzn-tls-cipher-suite`), which contain information about the
    #     negotiated TLS version and cipher suite, are added to the client
    #     request before sending it to the target. The `x-amzn-tls-version`
    #     header has information about the TLS protocol version negotiated
    #     with the client, and the `x-amzn-tls-cipher-suite` header has
    #     information about the cipher suite negotiated with the client.
    #     Both headers are in OpenSSL format. The possible values for the
    #     attribute are `true` and `false`. The default is `false`.
    #
    #   * `routing.http.xff_client_port.enabled` - Indicates whether the
    #     `X-Forwarded-For` header should preserve the source port that the
    #     client used to connect to the load balancer. The possible values
    #     are `true` and `false`. The default is `false`.
    #
    #   * `routing.http.xff_header_processing.mode` - Enables you to modify,
    #     preserve, or remove the `X-Forwarded-For` header in the HTTP
    #     request before the Application Load Balancer sends the request to
    #     the target. The possible values are `append`, `preserve`, and
    #     `remove`. The default is `append`.
    #
    #     * If the value is `append`, the Application Load Balancer adds the
    #       client IP address (of the last hop) to the `X-Forwarded-For`
    #       header in the HTTP request before it sends it to targets.
    #
    #     * If the value is `preserve` the Application Load Balancer
    #       preserves the `X-Forwarded-For` header in the HTTP request, and
    #       sends it to targets without any change.
    #
    #     * If the value is `remove`, the Application Load Balancer removes
    #       the `X-Forwarded-For` header in the HTTP request before it sends
    #       it to targets.
    #
    #   * `routing.http2.enabled` - Indicates whether HTTP/2 is enabled. The
    #     possible values are `true` and `false`. The default is `true`.
    #     Elastic Load Balancing requires that message header names contain
    #     only alphanumeric characters and hyphens.
    #
    #   * `waf.fail_open.enabled` - Indicates whether to allow a WAF-enabled
    #     load balancer to route requests to targets if it is unable to
    #     forward the request to Amazon Web Services WAF. The possible
    #     values are `true` and `false`. The default is `false`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified load balancer does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/LoadBalancerNotFoundException AWS API Documentation
    #
    class LoadBalancerNotFoundException < Aws::EmptyStructure; end

    # Information about the state of the load balancer.
    #
    # @!attribute [rw] code
    #   The state code. The initial state of the load balancer is
    #   `provisioning`. After the load balancer is fully set up and ready to
    #   route traffic, its state is `active`. If load balancer is routing
    #   traffic but does not have the resources it needs to scale, its state
    #   is`active_impaired`. If the load balancer could not be set up, its
    #   state is `failed`.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The codes to use when checking for a successful response from a
    # target. If the protocol version is gRPC, these are gRPC codes.
    # Otherwise, these are HTTP codes.
    #
    # @!attribute [rw] http_code
    #   For Application Load Balancers, you can specify values between 200
    #   and 499, with the default value being 200. You can specify multiple
    #   values (for example, "200,202") or a range of values (for example,
    #   "200-299").
    #
    #   For Network Load Balancers, you can specify values between 200 and
    #   599, with the default value being 200-399. You can specify multiple
    #   values (for example, "200,202") or a range of values (for example,
    #   "200-299").
    #
    #   For Gateway Load Balancers, this must be "200–399".
    #
    #   Note that when using shorthand syntax, some values such as commas
    #   need to be escaped.
    #   @return [String]
    #
    # @!attribute [rw] grpc_code
    #   You can specify values between 0 and 99. You can specify multiple
    #   values (for example, "0,1") or a range of values (for example,
    #   "0-5"). The default value is 12.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/Matcher AWS API Documentation
    #
    class Matcher < Struct.new(
      :http_code,
      :grpc_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for connections from clients to the load balancer. You
    #   cannot specify a port for a Gateway Load Balancer.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to the load balancer.
    #   Application Load Balancers support the HTTP and HTTPS protocols.
    #   Network Load Balancers support the TCP, TLS, UDP, and TCP\_UDP
    #   protocols. You can’t change the protocol to UDP or TCP\_UDP if
    #   dual-stack mode is enabled. You cannot specify a protocol for a
    #   Gateway Load Balancer.
    #   @return [String]
    #
    # @!attribute [rw] ssl_policy
    #   \[HTTPS and TLS listeners\] The security policy that defines which
    #   protocols and ciphers are supported.
    #
    #   For more information, see [Security policies][1] in the *Application
    #   Load Balancers Guide* or [Security policies][2] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies
    #   [2]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   \[HTTPS and TLS listeners\] The default certificate for the
    #   listener. You must provide exactly one certificate. Set
    #   `CertificateArn` to the certificate ARN but do not set `IsDefault`.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] default_actions
    #   The actions for the default rule.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] alpn_policy
    #   \[TLS listeners\] The name of the Application-Layer Protocol
    #   Negotiation (ALPN) policy. You can specify one policy name. The
    #   following are the possible values:
    #
    #   * `HTTP1Only`
    #
    #   * `HTTP2Only`
    #
    #   * `HTTP2Optional`
    #
    #   * `HTTP2Preferred`
    #
    #   * `None`
    #
    #   For more information, see [ALPN policies][1] in the *Network Load
    #   Balancers Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#alpn-policies
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListenerInput AWS API Documentation
    #
    class ModifyListenerInput < Struct.new(
      :listener_arn,
      :port,
      :protocol,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   Information about the modified listener.
    #   @return [Array<Types::Listener>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyListenerOutput AWS API Documentation
    #
    class ModifyListenerOutput < Struct.new(
      :listeners)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRuleInput AWS API Documentation
    #
    class ModifyRuleInput < Struct.new(
      :rule_arn,
      :conditions,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   Information about the modified rule.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyRuleOutput AWS API Documentation
    #
    class ModifyRuleOutput < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol the load balancer uses when performing health checks on
    #   targets. For Application Load Balancers, the default is HTTP. For
    #   Network Load Balancers and Gateway Load Balancers, the default is
    #   TCP. The TCP protocol is not supported for health checks if the
    #   protocol of the target group is HTTP or HTTPS. It is supported for
    #   health checks only if the protocol of the target group is TCP, TLS,
    #   UDP, or TCP\_UDP. The GENEVE, TLS, UDP, and TCP\_UDP protocols are
    #   not supported for health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port the load balancer uses when performing health checks on
    #   targets.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   \[HTTP/HTTPS health checks\] The destination for health checks on
    #   the targets.
    #
    #   \[HTTP1 or HTTP2 protocol version\] The ping path. The default is /.
    #
    #   \[GRPC protocol version\] The path of a custom health check method
    #   with the format /package.service/method. The default is /Amazon Web
    #   Services.ALB/healthcheck.
    #   @return [String]
    #
    # @!attribute [rw] health_check_enabled
    #   Indicates whether health checks are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The approximate amount of time, in seconds, between health checks of
    #   an individual target.
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
    #   considering the target unhealthy.
    #   @return [Integer]
    #
    # @!attribute [rw] matcher
    #   \[HTTP/HTTPS health checks\] The HTTP or gRPC codes to use when
    #   checking for a successful response from a target. For target groups
    #   with a protocol of TCP, TCP\_UDP, UDP or TLS the range is 200-599.
    #   For target groups with a protocol of HTTP or HTTPS, the range is
    #   200-499. For target groups with a protocol of GENEVE, the range is
    #   200-399.
    #   @return [Types::Matcher]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupInput AWS API Documentation
    #
    class ModifyTargetGroupInput < Struct.new(
      :target_group_arn,
      :health_check_protocol,
      :health_check_port,
      :health_check_path,
      :health_check_enabled,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :matcher)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_groups
    #   Information about the modified target group.
    #   @return [Array<Types::TargetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ModifyTargetGroupOutput AWS API Documentation
    #
    class ModifyTargetGroupOutput < Struct.new(
      :target_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation is not allowed.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Aws::EmptyStructure; end

    # Information about a path pattern condition.
    #
    # @!attribute [rw] values
    #   The path patterns to compare against the request URL. The maximum
    #   size of each string is 128 characters. The comparison is case
    #   sensitive. The following wildcard characters are supported: *
    #   (matches 0 or more characters) and ? (matches exactly 1 character).
    #
    #   If you specify multiple strings, the condition is satisfied if one
    #   of them matches the request URL. The path pattern is compared only
    #   to the path of the URL, not to its query string. To compare against
    #   the query string, use QueryStringConditionConfig.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/PathPatternConditionConfig AWS API Documentation
    #
    class PathPatternConditionConfig < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified priority is in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/PriorityInUseException AWS API Documentation
    #
    class PriorityInUseException < Aws::EmptyStructure; end

    # Information about a query string condition.
    #
    # The query string component of a URI starts after the first '?'
    # character and is terminated by either a '#' character or the end of
    # the URI. A typical query string contains key/value pairs separated by
    # '&amp;' characters. The allowed characters are specified by RFC
    # 3986. Any character can be percentage encoded.
    #
    # @!attribute [rw] values
    #   The key/value pairs or values to find in the query string. The
    #   maximum size of each string is 128 characters. The comparison is
    #   case insensitive. The following wildcard characters are supported:
    #   * (matches 0 or more characters) and ? (matches exactly 1
    #   character). To search for a literal '*' or '?' character in a
    #   query string, you must escape these characters in `Values` using a
    #   '\\' character.
    #
    #   If you specify multiple key/value pairs or values, the condition is
    #   satisfied if one of them is found in the query string.
    #   @return [Array<Types::QueryStringKeyValuePair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/QueryStringConditionConfig AWS API Documentation
    #
    class QueryStringConditionConfig < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a key/value pair.
    #
    # @!attribute [rw] key
    #   The key. You can omit the key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/QueryStringKeyValuePair AWS API Documentation
    #
    class QueryStringKeyValuePair < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a redirect action.
    #
    # A URI consists of the following components:
    # protocol://hostname:port/path?query. You must modify at least one of
    # the following components to avoid a redirect loop: protocol, hostname,
    # port, or path. Any components that you do not modify retain their
    # original values.
    #
    # You can reuse URI components using the following reserved keywords:
    #
    # * \#\\\{protocol\\}
    #
    # * \#\\\{host\\}
    #
    # * \#\\\{port\\}
    #
    # * \#\\\{path\\} (the leading "/" is removed)
    #
    # * \#\\\{query\\}
    #
    # For example, you can change the path to "/new/#\\\{path\\}", the
    # hostname to "example.#\\\{host\\}", or the query to
    # "#\\\{query\\}&amp;value=xyz".
    #
    # @!attribute [rw] protocol
    #   The protocol. You can specify HTTP, HTTPS, or #\\\{protocol\\}. You
    #   can redirect HTTP to HTTP, HTTP to HTTPS, and HTTPS to HTTPS. You
    #   cannot redirect HTTPS to HTTP.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port. You can specify a value from 1 to 65535 or #\\\{port\\}.
    #   @return [String]
    #
    # @!attribute [rw] host
    #   The hostname. This component is not percent-encoded. The hostname
    #   can contain #\\\{host\\}.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The absolute path, starting with the leading "/". This component
    #   is not percent-encoded. The path can contain #\\\{host\\},
    #   #\\\{path\\}, and #\\\{port\\}.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   The query parameters, URL-encoded when necessary, but not
    #   percent-encoded. Do not include the leading "?", as it is
    #   automatically added. You can specify any of the reserved keywords.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP redirect code. The redirect is either permanent (HTTP 301)
    #   or temporary (HTTP 302).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RedirectActionConfig AWS API Documentation
    #
    class RedirectActionConfig < Struct.new(
      :protocol,
      :port,
      :host,
      :path,
      :query,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets.
    #   @return [Array<Types::TargetDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargetsInput AWS API Documentation
    #
    class RegisterTargetsInput < Struct.new(
      :target_group_arn,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RegisterTargetsOutput AWS API Documentation
    #
    class RegisterTargetsOutput < Aws::EmptyStructure; end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The certificate to remove. You can specify one certificate per call.
    #   Set `CertificateArn` to the certificate ARN but do not set
    #   `IsDefault`.
    #   @return [Array<Types::Certificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveListenerCertificatesInput AWS API Documentation
    #
    class RemoveListenerCertificatesInput < Struct.new(
      :listener_arn,
      :certificates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveListenerCertificatesOutput AWS API Documentation
    #
    class RemoveListenerCertificatesOutput < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RemoveTagsOutput AWS API Documentation
    #
    class RemoveTagsOutput < Aws::EmptyStructure; end

    # A specified resource is in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Aws::EmptyStructure; end

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
    #   The conditions. Each rule can include zero or one of the following
    #   conditions: `http-request-method`, `host-header`, `path-pattern`,
    #   and `source-ip`, and zero or more of the following conditions:
    #   `http-header` and `query-string`.
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] actions
    #   The actions. Each rule must include exactly one of the following
    #   types of actions: `forward`, `redirect`, or `fixed-response`, and it
    #   must be the last action to be performed.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a condition for a rule.
    #
    # Each rule can optionally include up to one of each of the following
    # conditions: `http-request-method`, `host-header`, `path-pattern`, and
    # `source-ip`. Each rule can also optionally include one or more of each
    # of the following conditions: `http-header` and `query-string`. Note
    # that the value for a condition cannot be empty.
    #
    # @!attribute [rw] field
    #   The field in the HTTP request. The following are the possible
    #   values:
    #
    #   * `http-header`
    #
    #   * `http-request-method`
    #
    #   * `host-header`
    #
    #   * `path-pattern`
    #
    #   * `query-string`
    #
    #   * `source-ip`
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The condition value. Specify only when `Field` is `host-header` or
    #   `path-pattern`. Alternatively, to specify multiple host names or
    #   multiple path patterns, use `HostHeaderConfig` or
    #   `PathPatternConfig`.
    #
    #   If `Field` is `host-header` and you are not using
    #   `HostHeaderConfig`, you can specify a single host name (for example,
    #   my.example.com) in `Values`. A host name is case insensitive, can be
    #   up to 128 characters in length, and can contain any of the following
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
    #   If `Field` is `path-pattern` and you are not using
    #   `PathPatternConfig`, you can specify a single path pattern (for
    #   example, /img/*) in `Values`. A path pattern is case-sensitive, can
    #   be up to 128 characters in length, and can contain any of the
    #   following characters.
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
    # @!attribute [rw] host_header_config
    #   Information for a host header condition. Specify only when `Field`
    #   is `host-header`.
    #   @return [Types::HostHeaderConditionConfig]
    #
    # @!attribute [rw] path_pattern_config
    #   Information for a path pattern condition. Specify only when `Field`
    #   is `path-pattern`.
    #   @return [Types::PathPatternConditionConfig]
    #
    # @!attribute [rw] http_header_config
    #   Information for an HTTP header condition. Specify only when `Field`
    #   is `http-header`.
    #   @return [Types::HttpHeaderConditionConfig]
    #
    # @!attribute [rw] query_string_config
    #   Information for a query string condition. Specify only when `Field`
    #   is `query-string`.
    #   @return [Types::QueryStringConditionConfig]
    #
    # @!attribute [rw] http_request_method_config
    #   Information for an HTTP method condition. Specify only when `Field`
    #   is `http-request-method`.
    #   @return [Types::HttpRequestMethodConditionConfig]
    #
    # @!attribute [rw] source_ip_config
    #   Information for a source IP condition. Specify only when `Field` is
    #   `source-ip`.
    #   @return [Types::SourceIpConditionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RuleCondition AWS API Documentation
    #
    class RuleCondition < Struct.new(
      :field,
      :values,
      :host_header_config,
      :path_pattern_config,
      :http_header_config,
      :query_string_config,
      :http_request_method_config,
      :source_ip_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified rule does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/RuleNotFoundException AWS API Documentation
    #
    class RuleNotFoundException < Aws::EmptyStructure; end

    # Information about the priorities for the rules for a listener.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified SSL policy does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SSLPolicyNotFoundException AWS API Documentation
    #
    class SSLPolicyNotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type. The possible values are `ipv4` (for IPv4
    #   addresses) and `dualstack` (for IPv4 and IPv6 addresses). You can’t
    #   specify `dualstack` for a load balancer with a UDP or TCP\_UDP
    #   listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetIpAddressTypeInput AWS API Documentation
    #
    class SetIpAddressTypeInput < Struct.new(
      :load_balancer_arn,
      :ip_address_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_priorities
    #   The rule priorities.
    #   @return [Array<Types::RulePriorityPair>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetRulePrioritiesInput AWS API Documentation
    #
    class SetRulePrioritiesInput < Struct.new(
      :rule_priorities)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet
    #   mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at
    #   least two Availability Zones.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify
    #   subnets from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_mappings
    #   The IDs of the public subnets. You can specify only one subnet per
    #   Availability Zone. You must specify either subnets or subnet
    #   mappings.
    #
    #   \[Application Load Balancers\] You must specify subnets from at
    #   least two Availability Zones. You cannot specify Elastic IP
    #   addresses for your subnets.
    #
    #   \[Application Load Balancers on Outposts\] You must specify one
    #   Outpost subnet.
    #
    #   \[Application Load Balancers on Local Zones\] You can specify
    #   subnets from one or more Local Zones.
    #
    #   \[Network Load Balancers\] You can specify subnets from one or more
    #   Availability Zones. You can specify one Elastic IP address per
    #   subnet if you need static IP addresses for your internet-facing load
    #   balancer. For internal load balancers, you can specify one private
    #   IP address per subnet from the IPv4 range of the subnet. For
    #   internet-facing load balancer, you can specify one IPv6 address per
    #   subnet.
    #   @return [Array<Types::SubnetMapping>]
    #
    # @!attribute [rw] ip_address_type
    #   \[Network Load Balancers\] The type of IP addresses used by the
    #   subnets for your load balancer. The possible values are `ipv4` (for
    #   IPv4 addresses) and `dualstack` (for IPv4 and IPv6 addresses). You
    #   can’t specify `dualstack` for a load balancer with a UDP or TCP\_UDP
    #   listener. .
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnetsInput AWS API Documentation
    #
    class SetSubnetsInput < Struct.new(
      :load_balancer_arn,
      :subnets,
      :subnet_mappings,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zones
    #   Information about the subnets.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] ip_address_type
    #   \[Network Load Balancers\] The IP address type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SetSubnetsOutput AWS API Documentation
    #
    class SetSubnetsOutput < Struct.new(
      :availability_zones,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a source IP condition.
    #
    # You can use this condition to route based on the IP address of the
    # source that connects to the load balancer. If a client is behind a
    # proxy, this is the IP address of the proxy not the IP address of the
    # client.
    #
    # @!attribute [rw] values
    #   The source IP addresses, in CIDR format. You can use both IPv4 and
    #   IPv6 addresses. Wildcards are not supported.
    #
    #   If you specify multiple addresses, the condition is satisfied if the
    #   source IP address of the request matches one of the CIDR blocks.
    #   This condition is not satisfied by the addresses in the
    #   X-Forwarded-For header. To search for addresses in the
    #   X-Forwarded-For header, use HttpHeaderConditionConfig.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SourceIpConditionConfig AWS API Documentation
    #
    class SourceIpConditionConfig < Struct.new(
      :values)
      SENSITIVE = []
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
    # @!attribute [rw] supported_load_balancer_types
    #   The supported load balancers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SslPolicy AWS API Documentation
    #
    class SslPolicy < Struct.new(
      :ssl_protocols,
      :ciphers,
      :name,
      :supported_load_balancer_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subnet mapping.
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   \[Network Load Balancers\] The allocation ID of the Elastic IP
    #   address for an internet-facing load balancer.
    #   @return [String]
    #
    # @!attribute [rw] private_i_pv_4_address
    #   \[Network Load Balancers\] The private IPv4 address for an internal
    #   load balancer.
    #   @return [String]
    #
    # @!attribute [rw] i_pv_6_address
    #   \[Network Load Balancers\] The IPv6 address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SubnetMapping AWS API Documentation
    #
    class SubnetMapping < Struct.new(
      :subnet_id,
      :allocation_id,
      :private_i_pv_4_address,
      :i_pv_6_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified subnet does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/SubnetNotFoundException AWS API Documentation
    #
    class SubnetNotFoundException < Aws::EmptyStructure; end

    # Information about a tag.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a target.
    #
    # @!attribute [rw] id
    #   The ID of the target. If the target type of the target group is
    #   `instance`, specify an instance ID. If the target type is `ip`,
    #   specify an IP address. If the target type is `lambda`, specify the
    #   ARN of the Lambda function. If the target type is `alb`, specify the
    #   ARN of the Application Load Balancer target.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on which the target is listening. If the target group
    #   protocol is GENEVE, the supported port is 6081. If the target type
    #   is `alb`, the targeted Application Load Balancer must have at least
    #   one listener whose port matches the target group port. Not used if
    #   the target is a Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   An Availability Zone or `all`. This determines whether the target
    #   receives traffic from the load balancer nodes in the specified
    #   Availability Zone or from all enabled Availability Zones for the
    #   load balancer.
    #
    #   For Application Load Balancer target groups, the specified
    #   Availability Zone value is only applicable when cross-zone load
    #   balancing is off. Otherwise the parameter is ignored and treated as
    #   `all`.
    #
    #   This parameter is not supported if the target type of the target
    #   group is `instance` or `alb`.
    #
    #   If the target type is `ip` and the IP address is in a subnet of the
    #   VPC for the target group, the Availability Zone is automatically
    #   detected and this parameter is optional. If the IP address is
    #   outside the VPC, this parameter is required.
    #
    #   For Application Load Balancer target groups with cross-zone load
    #   balancing off, if the target type is `ip` and the IP address is
    #   outside of the VPC for the target group, this should be an
    #   Availability Zone inside the VPC for the target group.
    #
    #   If the target type is `lambda`, this parameter is optional and the
    #   only supported value is `all`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetDescription AWS API Documentation
    #
    class TargetDescription < Struct.new(
      :id,
      :port,
      :availability_zone)
      SENSITIVE = []
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
    #   The port on which the targets are listening. Not used if the target
    #   is a Lambda function.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the targets.
    #   @return [String]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol to use to connect with the target. The GENEVE, TLS,
    #   UDP, and TCP\_UDP protocols are not supported for health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_port
    #   The port to use to connect with the target.
    #   @return [String]
    #
    # @!attribute [rw] health_check_enabled
    #   Indicates whether health checks are enabled.
    #   @return [Boolean]
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
    #   The destination for health checks on the targets.
    #   @return [String]
    #
    # @!attribute [rw] matcher
    #   The HTTP or gRPC codes to use when checking for a successful
    #   response from a target.
    #   @return [Types::Matcher]
    #
    # @!attribute [rw] load_balancer_arns
    #   The Amazon Resource Names (ARN) of the load balancers that route
    #   traffic to this target group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_type
    #   The type of target that you must specify when registering targets
    #   with this target group. The possible values are `instance` (register
    #   targets by instance ID), `ip` (register targets by IP address),
    #   `lambda` (register a single Lambda function as a target), or `alb`
    #   (register a single Application Load Balancer as a target).
    #   @return [String]
    #
    # @!attribute [rw] protocol_version
    #   \[HTTP/HTTPS protocol\] The protocol version. The possible values
    #   are `GRPC`, `HTTP1`, and `HTTP2`.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP address used for this target group. The possible
    #   values are `ipv4` and `ipv6`. This is an optional parameter. If not
    #   specified, the IP address type defaults to `ipv4`.
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
      :health_check_enabled,
      :health_check_interval_seconds,
      :health_check_timeout_seconds,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      :health_check_path,
      :matcher,
      :load_balancer_arns,
      :target_type,
      :protocol_version,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit on the number of load balancers per target
    # group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroupAssociationLimitException AWS API Documentation
    #
    class TargetGroupAssociationLimitException < Aws::EmptyStructure; end

    # Information about a target group attribute.
    #
    # @!attribute [rw] key
    #   The name of the attribute.
    #
    #   The following attributes are supported by all load balancers:
    #
    #   * `deregistration_delay.timeout_seconds` - The amount of time, in
    #     seconds, for Elastic Load Balancing to wait before changing the
    #     state of a deregistering target from `draining` to `unused`. The
    #     range is 0-3600 seconds. The default value is 300 seconds. If the
    #     target is a Lambda function, this attribute is not supported.
    #
    #   * `stickiness.enabled` - Indicates whether target stickiness is
    #     enabled. The value is `true` or `false`. The default is `false`.
    #
    #   * `stickiness.type` - Indicates the type of stickiness. The possible
    #     values are:
    #
    #     * `lb_cookie` and `app_cookie` for Application Load Balancers.
    #
    #     * `source_ip` for Network Load Balancers.
    #
    #     * `source_ip_dest_ip` and `source_ip_dest_ip_proto` for Gateway
    #       Load Balancers.
    #
    #   The following attributes are supported by Application Load Balancers
    #   and Network Load Balancers:
    #
    #   * `load_balancing.cross_zone.enabled` - Indicates whether cross zone
    #     load balancing is enabled. The value is `true`, `false` or
    #     `use_load_balancer_configuration`. The default is
    #     `use_load_balancer_configuration`.
    #
    #   * `target_group_health.dns_failover.minimum_healthy_targets.count` -
    #     The minimum number of targets that must be healthy. If the number
    #     of healthy targets is below this value, mark the zone as unhealthy
    #     in DNS, so that traffic is routed only to healthy zones. The
    #     possible values are `off` or an integer from 1 to the maximum
    #     number of targets. The default is `off`.
    #
    #   * `target_group_health.dns_failover.minimum_healthy_targets.percentage`
    #     - The minimum percentage of targets that must be healthy. If the
    #     percentage of healthy targets is below this value, mark the zone
    #     as unhealthy in DNS, so that traffic is routed only to healthy
    #     zones. The possible values are `off` or an integer from 1 to 100.
    #     The default is `off`.
    #
    #   * `target_group_health.unhealthy_state_routing.minimum_healthy_targets.count`
    #     - The minimum number of targets that must be healthy. If the
    #     number of healthy targets is below this value, send traffic to all
    #     targets, including unhealthy targets. The possible values are 1 to
    #     the maximum number of targets. The default is 1.
    #
    #   * `target_group_health.unhealthy_state_routing.minimum_healthy_targets.percentage`
    #     - The minimum percentage of targets that must be healthy. If the
    #     percentage of healthy targets is below this value, send traffic to
    #     all targets, including unhealthy targets. The possible values are
    #     `off` or an integer from 1 to 100. The default is `off`.
    #
    #   The following attributes are supported only if the load balancer is
    #   an Application Load Balancer and the target is an instance or an IP
    #   address:
    #
    #   * `load_balancing.algorithm.type` - The load balancing algorithm
    #     determines how the load balancer selects targets when routing
    #     requests. The value is `round_robin` or
    #     `least_outstanding_requests`. The default is `round_robin`.
    #
    #   * `slow_start.duration_seconds` - The time period, in seconds,
    #     during which a newly registered target receives an increasing
    #     share of the traffic to the target group. After this time period
    #     ends, the target receives its full share of traffic. The range is
    #     30-900 seconds (15 minutes). The default is 0 seconds (disabled).
    #
    #   * `stickiness.app_cookie.cookie_name` - Indicates the name of the
    #     application-based cookie. Names that start with the following
    #     prefixes are not allowed: `AWSALB`, `AWSALBAPP`, and `AWSALBTG`;
    #     they're reserved for use by the load balancer.
    #
    #   * `stickiness.app_cookie.duration_seconds` - The time period, in
    #     seconds, during which requests from a client should be routed to
    #     the same target. After this time period expires, the
    #     application-based cookie is considered stale. The range is 1
    #     second to 1 week (604800 seconds). The default value is 1 day
    #     (86400 seconds).
    #
    #   * `stickiness.lb_cookie.duration_seconds` - The time period, in
    #     seconds, during which requests from a client should be routed to
    #     the same target. After this time period expires, the load
    #     balancer-generated cookie is considered stale. The range is 1
    #     second to 1 week (604800 seconds). The default value is 1 day
    #     (86400 seconds).
    #
    #   The following attribute is supported only if the load balancer is an
    #   Application Load Balancer and the target is a Lambda function:
    #
    #   * `lambda.multi_value_headers.enabled` - Indicates whether the
    #     request and response headers that are exchanged between the load
    #     balancer and the Lambda function include arrays of values or
    #     strings. The value is `true` or `false`. The default is `false`.
    #     If the value is `false` and the request contains a duplicate
    #     header field name or query parameter key, the load balancer uses
    #     the last value sent by the client.
    #
    #   ^
    #
    #   The following attributes are supported only by Network Load
    #   Balancers:
    #
    #   * `deregistration_delay.connection_termination.enabled` - Indicates
    #     whether the load balancer terminates connections at the end of the
    #     deregistration timeout. The value is `true` or `false`. The
    #     default is `false`.
    #
    #   * `preserve_client_ip.enabled` - Indicates whether client IP
    #     preservation is enabled. The value is `true` or `false`. The
    #     default is disabled if the target group type is IP address and the
    #     target group protocol is TCP or TLS. Otherwise, the default is
    #     enabled. Client IP preservation cannot be disabled for UDP and
    #     TCP\_UDP target groups.
    #
    #   * `proxy_protocol_v2.enabled` - Indicates whether Proxy Protocol
    #     version 2 is enabled. The value is `true` or `false`. The default
    #     is `false`.
    #
    #   The following attributes are supported only by Gateway Load
    #   Balancers:
    #
    #   * `target_failover.on_deregistration` - Indicates how the Gateway
    #     Load Balancer handles existing flows when a target is
    #     deregistered. The possible values are `rebalance` and
    #     `no_rebalance`. The default is `no_rebalance`. The two attributes
    #     (`target_failover.on_deregistration` and
    #     `target_failover.on_unhealthy`) can't be set independently. The
    #     value you set for both attributes must be the same.
    #
    #   * `target_failover.on_unhealthy` - Indicates how the Gateway Load
    #     Balancer handles existing flows when a target is unhealthy. The
    #     possible values are `rebalance` and `no_rebalance`. The default is
    #     `no_rebalance`. The two attributes
    #     (`target_failover.on_deregistration` and
    #     `target_failover.on_unhealthy`) cannot be set independently. The
    #     value you set for both attributes must be the same.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified target group does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroupNotFoundException AWS API Documentation
    #
    class TargetGroupNotFoundException < Aws::EmptyStructure; end

    # Information about the target group stickiness for a rule.
    #
    # @!attribute [rw] enabled
    #   Indicates whether target group stickiness is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] duration_seconds
    #   The time period, in seconds, during which requests from a client
    #   should be routed to the same target group. The range is 1-604800
    #   seconds (7 days).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroupStickinessConfig AWS API Documentation
    #
    class TargetGroupStickinessConfig < Struct.new(
      :enabled,
      :duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how traffic will be distributed between multiple
    # target groups in a forward rule.
    #
    # @!attribute [rw] target_group_arn
    #   The Amazon Resource Name (ARN) of the target group.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight. The range is 0 to 999.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TargetGroupTuple AWS API Documentation
    #
    class TargetGroupTuple < Struct.new(
      :target_group_arn,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the current health of a target.
    #
    # @!attribute [rw] state
    #   The state of the target.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason code.
    #
    #   If the target state is `healthy`, a reason code is not provided.
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
    #     an expected HTTP code. Applies only to Application Load Balancers
    #     and Gateway Load Balancers.
    #
    #   * `Target.Timeout` - The health check requests timed out. Applies
    #     only to Application Load Balancers and Gateway Load Balancers.
    #
    #   * `Target.FailedHealthChecks` - The load balancer received an error
    #     while establishing a connection to the target or the target
    #     response was malformed.
    #
    #   * `Elb.InternalError` - The health checks failed due to an internal
    #     error. Applies only to Application Load Balancers.
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
    #   * `Target.InvalidState` - The target is in the stopped or terminated
    #     state.
    #
    #   * `Target.IpUnusable` - The target IP address is reserved for use by
    #     a load balancer.
    #
    #   If the target state is `draining`, the reason code can be the
    #   following value:
    #
    #   * `Target.DeregistrationInProgress` - The target is in the process
    #     of being deregistered and the deregistration delay period has not
    #     expired.
    #
    #   ^
    #
    #   If the target state is `unavailable`, the reason code can be the
    #   following value:
    #
    #   * `Target.HealthCheckDisabled` - Health checks are disabled for the
    #     target group. Applies only to Application Load Balancers.
    #
    #   * `Elb.InternalError` - Target health is unavailable due to an
    #     internal error. Applies only to Network Load Balancers.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit on the number of actions per rule.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyActionsException AWS API Documentation
    #
    class TooManyActionsException < Aws::EmptyStructure; end

    # You've reached the limit on the number of certificates per load
    # balancer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyCertificatesException AWS API Documentation
    #
    class TooManyCertificatesException < Aws::EmptyStructure; end

    # You've reached the limit on the number of listeners per load
    # balancer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyListenersException AWS API Documentation
    #
    class TooManyListenersException < Aws::EmptyStructure; end

    # You've reached the limit on the number of load balancers for your
    # Amazon Web Services account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyLoadBalancersException AWS API Documentation
    #
    class TooManyLoadBalancersException < Aws::EmptyStructure; end

    # You've reached the limit on the number of times a target can be
    # registered with a load balancer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyRegistrationsForTargetIdException AWS API Documentation
    #
    class TooManyRegistrationsForTargetIdException < Aws::EmptyStructure; end

    # You've reached the limit on the number of rules per load balancer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyRulesException AWS API Documentation
    #
    class TooManyRulesException < Aws::EmptyStructure; end

    # You've reached the limit on the number of tags per load balancer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Aws::EmptyStructure; end

    # You've reached the limit on the number of target groups for your
    # Amazon Web Services account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyTargetGroupsException AWS API Documentation
    #
    class TooManyTargetGroupsException < Aws::EmptyStructure; end

    # You've reached the limit on the number of targets.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyTargetsException AWS API Documentation
    #
    class TooManyTargetsException < Aws::EmptyStructure; end

    # You've reached the limit on the number of unique target groups per
    # load balancer across all listeners. If a target group is used by
    # multiple actions for a load balancer, it is counted as only one use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/TooManyUniqueTargetGroupsPerLoadBalancerException AWS API Documentation
    #
    class TooManyUniqueTargetGroupsPerLoadBalancerException < Aws::EmptyStructure; end

    # The specified protocol is not supported.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancingv2-2015-12-01/UnsupportedProtocolException AWS API Documentation
    #
    class UnsupportedProtocolException < Aws::EmptyStructure; end

  end
end
