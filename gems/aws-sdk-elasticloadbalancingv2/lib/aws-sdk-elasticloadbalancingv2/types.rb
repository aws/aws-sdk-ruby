# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancingV2
  # This module contains the types returned by client operations.
  module Types

    # <p>The specified ALPN policy is not supported.</p>
    # @!attribute message
    #   @return [String]
    class ALPNPolicyNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an action.</p>
    #          <p>Each rule must include exactly one of the following types of actions:
    #       <code>forward</code>, <code>fixed-response</code>, or <code>redirect</code>, and it must be
    #       the last action to be performed.</p>
    # @!attribute type
    #   <p>The type of action.</p>
    #   @return [String]
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group. Specify only when <code>Type</code> is
    #           <code>forward</code> and you want to route to a single target group. To route to one or more
    #         target groups, use <code>ForwardConfig</code> instead.</p>
    #   @return [String]
    # @!attribute authenticate_oidc_config
    #   <p>[HTTPS listeners] Information about an identity provider that is compliant with OpenID
    #         Connect (OIDC). Specify only when <code>Type</code> is <code>authenticate-oidc</code>.</p>
    #   @return [Types::AuthenticateOidcActionConfig]
    # @!attribute authenticate_cognito_config
    #   <p>[HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only
    #         when <code>Type</code> is <code>authenticate-cognito</code>.</p>
    #   @return [Types::AuthenticateCognitoActionConfig]
    # @!attribute order
    #   <p>The order for the action. This value is required for rules with multiple actions. The
    #         action with the lowest value for order is performed first.</p>
    #   @return [Integer]
    # @!attribute redirect_config
    #   <p>[Application Load Balancer] Information for creating a redirect action. Specify only when
    #           <code>Type</code> is <code>redirect</code>.</p>
    #   @return [Types::RedirectActionConfig]
    # @!attribute fixed_response_config
    #   <p>[Application Load Balancer] Information for creating an action that returns a custom HTTP
    #         response. Specify only when <code>Type</code> is <code>fixed-response</code>.</p>
    #   @return [Types::FixedResponseActionConfig]
    # @!attribute forward_config
    #   <p>Information for creating an action that distributes requests among one or more target
    #         groups. For Network Load Balancers, you can specify a single target group. Specify only when
    #           <code>Type</code> is <code>forward</code>. If you specify both <code>ForwardConfig</code>
    #         and <code>TargetGroupArn</code>, you can specify only one target group using
    #           <code>ForwardConfig</code> and it must be the same target group specified in
    #           <code>TargetGroupArn</code>.</p>
    #   @return [Types::ForwardActionConfig]
    class Action < Struct.new(
      :type,
      :target_group_arn,
      :authenticate_oidc_config,
      :authenticate_cognito_config,
      :order,
      :redirect_config,
      :fixed_response_config,
      :forward_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The certificate to add. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #   @return [Array<Types::Certificate>]
    class AddListenerCertificatesInput < Struct.new(
      :listener_arn,
      :certificates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificates
    #   <p>Information about the certificates in the certificate list.</p>
    #   @return [Array<Types::Certificate>]
    class AddListenerCertificatesOutput < Struct.new(
      :certificates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsInput < Struct.new(
      :resource_arns,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class AddTagsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_contents
    #   <p>The revocation file to add.</p>
    #   @return [Array<Types::RevocationContent>]
    class AddTrustStoreRevocationsInput < Struct.new(
      :trust_store_arn,
      :revocation_contents,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_revocations
    #   <p>Information about the revocation file added to the trust store.</p>
    #   @return [Array<Types::TrustStoreRevocation>]
    class AddTrustStoreRevocationsOutput < Struct.new(
      :trust_store_revocations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the override status applied to a target.</p>
    # @!attribute state
    #   <p>The state of the override.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason code for the state.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the override state that provides additional details.</p>
    #   @return [String]
    class AdministrativeOverride < Struct.new(
      :state,
      :reason,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified allocation ID does not exist.</p>
    # @!attribute message
    #   @return [String]
    class AllocationIdNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about anomaly detection and mitigation.</p>
    # @!attribute result
    #   <p>The latest anomaly detection result.</p>
    #   @return [String]
    # @!attribute mitigation_in_effect
    #   <p>Indicates whether anomaly mitigation is in progress.</p>
    #   @return [String]
    class AnomalyDetection < Struct.new(
      :result,
      :mitigation_in_effect,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request parameters to use when integrating with Amazon Cognito to authenticate
    #       users.</p>
    # @!attribute user_pool_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute user_pool_client_id
    #   <p>The ID of the Amazon Cognito user pool client.</p>
    #   @return [String]
    # @!attribute user_pool_domain
    #   <p>The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.</p>
    #   @return [String]
    # @!attribute session_cookie_name
    #   <p>The name of the cookie used to maintain session information. The default is
    #         AWSELBAuthSessionCookie.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The set of user claims to be requested from the IdP. The default is
    #         <code>openid</code>.</p>
    #            <p>To verify which scope values your IdP supports and how to separate multiple values, see
    #         the documentation for your IdP.</p>
    #   @return [String]
    # @!attribute session_timeout
    #   <p>The maximum duration of the authentication session, in seconds. The default is 604800
    #         seconds (7 days).</p>
    #   @return [Integer]
    # @!attribute authentication_request_extra_params
    #   <p>The query parameters (up to 10) to include in the redirect request to the authorization
    #         endpoint.</p>
    #   @return [Hash<String, String>]
    # @!attribute on_unauthenticated_request
    #   <p>The behavior if the user is not authenticated. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
    #               </li>
    #               <li>
    #                  <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
    #               </li>
    #               <li>
    #                  <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
    #             the default value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AuthenticateCognitoActionConfig < Struct.new(
      :user_pool_arn,
      :user_pool_client_id,
      :user_pool_domain,
      :session_cookie_name,
      :scope,
      :session_timeout,
      :authentication_request_extra_params,
      :on_unauthenticated_request,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request parameters when using an identity provider (IdP) that is compliant with OpenID
    #       Connect (OIDC) to authenticate users.</p>
    # @!attribute issuer
    #   <p>The OIDC issuer identifier of the IdP. This must be a full URL, including the HTTPS
    #         protocol, the domain, and the path.</p>
    #   @return [String]
    # @!attribute authorization_endpoint
    #   <p>The authorization endpoint of the IdP. This must be a full URL, including the HTTPS
    #         protocol, the domain, and the path.</p>
    #   @return [String]
    # @!attribute token_endpoint
    #   <p>The token endpoint of the IdP. This must be a full URL, including the HTTPS protocol, the
    #         domain, and the path.</p>
    #   @return [String]
    # @!attribute user_info_endpoint
    #   <p>The user info endpoint of the IdP. This must be a full URL, including the HTTPS protocol,
    #         the domain, and the path.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OAuth 2.0 client identifier.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The OAuth 2.0 client secret. This parameter is required if you are creating a rule. If you
    #         are modifying a rule, you can omit this parameter if you set
    #           <code>UseExistingClientSecret</code> to true.</p>
    #   @return [String]
    # @!attribute session_cookie_name
    #   <p>The name of the cookie used to maintain session information. The default is
    #         AWSELBAuthSessionCookie.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The set of user claims to be requested from the IdP. The default is
    #         <code>openid</code>.</p>
    #            <p>To verify which scope values your IdP supports and how to separate multiple values, see
    #         the documentation for your IdP.</p>
    #   @return [String]
    # @!attribute session_timeout
    #   <p>The maximum duration of the authentication session, in seconds. The default is 604800
    #         seconds (7 days).</p>
    #   @return [Integer]
    # @!attribute authentication_request_extra_params
    #   <p>The query parameters (up to 10) to include in the redirect request to the authorization
    #         endpoint.</p>
    #   @return [Hash<String, String>]
    # @!attribute on_unauthenticated_request
    #   <p>The behavior if the user is not authenticated. The following are possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>deny<code></code> - Return an HTTP 401 Unauthorized error.</p>
    #               </li>
    #               <li>
    #                  <p>allow<code></code> - Allow the request to be forwarded to the target.</p>
    #               </li>
    #               <li>
    #                  <p>authenticate<code></code> - Redirect the request to the IdP authorization endpoint. This is
    #             the default value.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute use_existing_client_secret
    #   <p>Indicates whether to use the existing client secret when modifying a rule. If you are
    #         creating a rule, you can omit this parameter or set it to false.</p>
    #   @return [Boolean]
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
      :use_existing_client_secret,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Availability Zone.</p>
    # @!attribute zone_name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>
    #   @return [String]
    # @!attribute outpost_id
    #   <p>[Application Load Balancers on Outposts] The ID of the Outpost.</p>
    #   @return [String]
    # @!attribute load_balancer_addresses
    #   <p>[Network Load Balancers] If you need static IP addresses for your load balancer, you can
    #         specify one Elastic IP address per Availability Zone when you create an internal-facing load
    #         balancer. For internal load balancers, you can specify a private IP address from the IPv4
    #         range of the subnet.</p>
    #   @return [Array<Types::LoadBalancerAddress>]
    # @!attribute source_nat_ipv6_prefixes
    #   <p>[Network Load Balancers with UDP listeners] The IPv6 prefixes to use for source NAT.
    #         For each subnet, specify an IPv6 prefix (/80 netmask) from the subnet CIDR block or
    #        <code>auto_assigned</code> to use an IPv6 prefix selected at random from the subnet CIDR
    #         block.</p>
    #   @return [Array<String>]
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id,
      :outpost_id,
      :load_balancer_addresses,
      :source_nat_ipv6_prefixes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Availability Zone is not supported.</p>
    # @!attribute message
    #   @return [String]
    class AvailabilityZoneNotSupportedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified ca certificate bundle does not exist.</p>
    # @!attribute message
    #   @return [String]
    class CaCertificatesBundleNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the daily capacity decrease limit for this reservation.</p>
    # @!attribute message
    #   @return [String]
    class CapacityDecreaseRequestsLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There is a pending capacity reservation.</p>
    # @!attribute message
    #   @return [String]
    class CapacityReservationPendingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of a capacity reservation.</p>
    # @!attribute code
    #   <p>The status code.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason code for the status.</p>
    #   @return [String]
    class CapacityReservationStatus < Struct.new(
      :code,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've exceeded the capacity units limit.</p>
    # @!attribute message
    #   @return [String]
    class CapacityUnitsLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an SSL server certificate.</p>
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Indicates whether the certificate is the default certificate. Do not set this value when
    #         specifying a certificate as an input. This value is not included in the output when describing
    #         a listener, but is included when describing listener certificates.</p>
    #   @return [Boolean]
    class Certificate < Struct.new(
      :certificate_arn,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified certificate does not exist.</p>
    # @!attribute message
    #   @return [String]
    class CertificateNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a cipher used in a policy.</p>
    # @!attribute name
    #   <p>The name of the cipher.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the cipher.</p>
    #   @return [Integer]
    class Cipher < Struct.new(
      :name,
      :priority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer. For Application Load
    #         Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the
    #         supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP
    #         protocol if dual-stack mode is enabled. You can't specify a protocol for a Gateway Load
    #         Balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the load balancer is listening. You can't specify a port for a Gateway
    #         Load Balancer.</p>
    #   @return [Integer]
    # @!attribute ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html">Security policies</a> in the <i>Application Load Balancers Guide</i> and
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute default_actions
    #   <p>The actions for the default rule.</p>
    #   @return [Array<Types::Action>]
    # @!attribute alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags to assign to the listener.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute mutual_authentication
    #   <p>The mutual authentication configuration information.</p>
    #   @return [Types::MutualAuthenticationAttributes]
    class CreateListenerInput < Struct.new(
      :load_balancer_arn,
      :protocol,
      :port,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy,
      :tags,
      :mutual_authentication,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listeners
    #   <p>Information about the listener.</p>
    #   @return [Array<Types::Listener>]
    class CreateListenerOutput < Struct.new(
      :listeners,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the load balancer.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must
    #         not begin with "internal-".</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings, but not both. To specify an Elastic IP
    #         address, specify subnet mappings instead of subnets.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more 
    #         Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute subnet_mappings
    #   <p>The IDs of the subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings, but not both.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You can't specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can't specify Elastic IP addresses for your subnets.</p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute security_groups
    #   <p>[Application Load Balancers and Network Load Balancers] The IDs of the security groups for
    #         the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
    #         Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
    #         Therefore, Internet-facing load balancers can route requests from clients over the
    #         internet.</p>
    #            <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
    #         internal load balancer is publicly resolvable to the private IP addresses of the nodes.
    #         Therefore, internal load balancers can route requests only from clients with access to the VPC
    #         for the load balancer.</p>
    #            <p>The default is an Internet-facing load balancer.</p>
    #            <p>You can't specify a scheme for a Gateway Load Balancer.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the load balancer.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute type
    #   <p>The type of load balancer. The default is <code>application</code>.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    #   @return [String]
    # @!attribute customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool (CoIP
    #         pool).</p>
    #   @return [String]
    # @!attribute enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix 
    #         from each subnet for source NAT. The IP address type must be <code>dualstack</code>. 
    #         The default value is <code>off</code>.</p>
    #   @return [String]
    # @!attribute ipam_pools
    #   <p>[Application Load Balancers] The IPAM pools to use with the load balancer.</p>
    #   @return [Types::IpamPools]
    class CreateLoadBalancerInput < Struct.new(
      :name,
      :subnets,
      :subnet_mappings,
      :security_groups,
      :scheme,
      :tags,
      :type,
      :ip_address_type,
      :customer_owned_ipv4_pool,
      :enable_prefix_for_ipv6_source_nat,
      :ipam_pools,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancers
    #   <p>Information about the load balancer.</p>
    #   @return [Array<Types::LoadBalancer>]
    class CreateLoadBalancerOutput < Struct.new(
      :load_balancers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions.</p>
    #   @return [Array<Types::RuleCondition>]
    # @!attribute priority
    #   <p>The rule priority. A listener can't have multiple rules with the same priority.</p>
    #   @return [Integer]
    # @!attribute actions
    #   <p>The actions.</p>
    #   @return [Array<Types::Action>]
    # @!attribute tags
    #   <p>The tags to assign to the rule.</p>
    #   @return [Array<Types::Tag>]
    class CreateRuleInput < Struct.new(
      :listener_arn,
      :conditions,
      :priority,
      :actions,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Information about the rule.</p>
    #   @return [Array<Types::Rule>]
    class CreateRuleOutput < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the target group.</p>
    #            <p>This name must be unique per region per account, can have a maximum of 32 characters, must
    #         contain only alphanumeric characters or hyphens, and must not begin or end with a
    #         hyphen.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets. For Application Load Balancers,
    #         the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported
    #         protocols are TCP, TLS, UDP, or TCP_UDP. For Gateway Load Balancers, the supported protocol is
    #         GENEVE. A TCP_UDP listener must be associated with a TCP_UDP target group. If the target is a
    #         Lambda function, this parameter does not apply.</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. Specify <code>GRPC</code> to send requests to
    #         targets using gRPC. Specify <code>HTTP2</code> to send requests to targets using HTTP/2. The
    #         default is <code>HTTP1</code>, which sends requests to targets using HTTP/1.1.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the targets receive traffic. This port is used unless you specify a port
    #         override when registering the target. If the target is a Lambda function, this parameter does
    #         not apply. If the protocol is GENEVE, the supported port is 6081.</p>
    #   @return [Integer]
    # @!attribute vpc_id
    #   <p>The identifier of the virtual private cloud (VPC). If the target is a Lambda function,
    #         this parameter does not apply. Otherwise, this parameter is required.</p>
    #   @return [String]
    # @!attribute health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP protocols are
    #         not supported for health checks.</p>
    #   @return [String]
    # @!attribute health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets. If the protocol
    #         is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is <code>traffic-port</code>, which is
    #         the port on which each target receives traffic from the load balancer. If the protocol is
    #         GENEVE, the default is port 80.</p>
    #   @return [String]
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled. If the target type is <code>lambda</code>,
    #         health checks are disabled by default but can be enabled. If the target type is
    #           <code>instance</code>, <code>ip</code>, or <code>alb</code>, health checks are always
    #         enabled and can't be disabled.</p>
    #   @return [Boolean]
    # @!attribute health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300.
    #         If the target group protocol is TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30 seconds. 
    #         If the target group protocol is GENEVE, the default is 10 seconds. 
    #         If the target type is <code>lambda</code>, the default is 35 seconds.</p>
    #   @return [Integer]
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response from a target means a failed 
    #         health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the 
    #         default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default 
    #         is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds. If 
    #         the target type is <code>lambda</code>, the default is 30 seconds.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health check successes required before considering a target healthy. The range is 
    #         2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5. For target groups 
    #         with a protocol of GENEVE, the default is 5. If the target type 
    #         is <code>lambda</code>, the default is 5.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering a target unhealthy. The range is 
    #         2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2. For target groups 
    #         with a protocol of GENEVE, the default is 2. If the target type 
    #         is <code>lambda</code>, the default is 5.</p>
    #   @return [Integer]
    # @!attribute matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful 
    #         response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range 
    #         is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target 
    #         groups with a protocol of GENEVE, the range is 200-399.</p>
    #   @return [Types::Matcher]
    # @!attribute target_type
    #   <p>The type of target that you must specify when registering targets with this target group.
    #         You can't specify targets for a target group using more than one target type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>instance</code> - Register targets by instance ID. This is the default
    #             value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ip</code> - Register targets by IP address. You can specify IP addresses from
    #             the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range
    #             (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10).
    #             You can't specify publicly routable IP addresses.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda</code> - Register a single Lambda function as a target.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>alb</code> - Register a single Application Load Balancer as a target.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the target group.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute ip_address_type
    #   <p>The IP address type. The default value is <code>ipv4</code>.</p>
    #   @return [String]
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
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the target group.</p>
    #   @return [Array<Types::TargetGroup>]
    class CreateTargetGroupOutput < Struct.new(
      :target_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the trust store.</p>
    #            <p>This name must be unique per region and can't be changed after creation.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_bucket
    #   <p>The Amazon S3 bucket for the ca certificates bundle.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_key
    #   <p>The Amazon S3 path for the ca certificates bundle.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_object_version
    #   <p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the trust store.</p>
    #   @return [Array<Types::Tag>]
    class CreateTrustStoreInput < Struct.new(
      :name,
      :ca_certificates_bundle_s3_bucket,
      :ca_certificates_bundle_s3_key,
      :ca_certificates_bundle_s3_object_version,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_stores
    #   <p>Information about the trust store created.</p>
    #   @return [Array<Types::TrustStore>]
    class CreateTrustStoreOutput < Struct.new(
      :trust_stores,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified association can't be within the same account.</p>
    # @!attribute message
    #   @return [String]
    class DeleteAssociationSameAccountException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    class DeleteListenerInput < Struct.new(
      :listener_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteListenerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    class DeleteLoadBalancerInput < Struct.new(
      :load_balancer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteLoadBalancerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    class DeleteRuleInput < Struct.new(
      :rule_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class DeleteSharedTrustStoreAssociationInput < Struct.new(
      :trust_store_arn,
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSharedTrustStoreAssociationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    class DeleteTargetGroupInput < Struct.new(
      :target_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTargetGroupOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    class DeleteTrustStoreInput < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTrustStoreOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets. If you specified a port override when you registered a target, you must
    #         specify both the target ID and the port when you deregister it.</p>
    #   @return [Array<Types::TargetDescription>]
    class DeregisterTargetsInput < Struct.new(
      :target_group_arn,
      :targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterTargetsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeAccountLimitsInput < Struct.new(
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute limits
    #   <p>Information about the limits.</p>
    #   @return [Array<Types::Limit>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeAccountLimitsOutput < Struct.new(
      :limits,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    class DescribeCapacityReservationInput < Struct.new(
      :load_balancer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified_time
    #   <p>The last time the capacity reservation was modified.</p>
    #   @return [Time]
    # @!attribute decrease_requests_remaining
    #   <p>The amount of daily capacity decreases remaining.</p>
    #   @return [Integer]
    # @!attribute minimum_load_balancer_capacity
    #   <p>The requested minimum capacity reservation for the load balancer</p>
    #   @return [Types::MinimumLoadBalancerCapacity]
    # @!attribute capacity_reservation_state
    #   <p>The state of the capacity reservation.</p>
    #   @return [Array<Types::ZonalCapacityReservationState>]
    class DescribeCapacityReservationOutput < Struct.new(
      :last_modified_time,
      :decrease_requests_remaining,
      :minimum_load_balancer_capacity,
      :capacity_reservation_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    class DescribeListenerAttributesInput < Struct.new(
      :listener_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the listener attributes.</p>
    #   @return [Array<Types::ListenerAttribute>]
    class DescribeListenerAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Names (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeListenerCertificatesInput < Struct.new(
      :listener_arn,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificates
    #   <p>Information about the certificates.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeListenerCertificatesOutput < Struct.new(
      :certificates,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute listener_arns
    #   <p>The Amazon Resource Names (ARN) of the listeners.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeListenersInput < Struct.new(
      :load_balancer_arn,
      :listener_arns,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listeners
    #   <p>Information about the listeners.</p>
    #   @return [Array<Types::Listener>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeListenersOutput < Struct.new(
      :listeners,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    class DescribeLoadBalancerAttributesInput < Struct.new(
      :load_balancer_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the load balancer attributes.</p>
    #   @return [Array<Types::LoadBalancerAttribute>]
    class DescribeLoadBalancerAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arns
    #   <p>The Amazon Resource Names (ARN) of the load balancers. You can specify up to 20 load
    #         balancers in a single call.</p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p>The names of the load balancers.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeLoadBalancersInput < Struct.new(
      :load_balancer_arns,
      :names,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancers
    #   <p>Information about the load balancers.</p>
    #   @return [Array<Types::LoadBalancer>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeLoadBalancersOutput < Struct.new(
      :load_balancers,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute rule_arns
    #   <p>The Amazon Resource Names (ARN) of the rules.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeRulesInput < Struct.new(
      :listener_arn,
      :rule_arns,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Information about the rules.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeRulesOutput < Struct.new(
      :rules,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the policies.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    # @!attribute load_balancer_type
    #   <p> The type of load balancer. The default lists the SSL policies for all load
    #         balancers.</p>
    #   @return [String]
    class DescribeSSLPoliciesInput < Struct.new(
      :names,
      :marker,
      :page_size,
      :load_balancer_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ssl_policies
    #   <p>Information about the security policies.</p>
    #   @return [Array<Types::SslPolicy>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeSSLPoliciesOutput < Struct.new(
      :ssl_policies,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARN) of the resources. You can specify up to 20 resources in a
    #         single call.</p>
    #   @return [Array<String>]
    class DescribeTagsInput < Struct.new(
      :resource_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_descriptions
    #   <p>Information about the tags.</p>
    #   @return [Array<Types::TagDescription>]
    class DescribeTagsOutput < Struct.new(
      :tag_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    class DescribeTargetGroupAttributesInput < Struct.new(
      :target_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the target group attributes</p>
    #   @return [Array<Types::TargetGroupAttribute>]
    class DescribeTargetGroupAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute target_group_arns
    #   <p>The Amazon Resource Names (ARN) of the target groups.</p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p>The names of the target groups.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #         call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeTargetGroupsInput < Struct.new(
      :load_balancer_arn,
      :target_group_arns,
      :names,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the target groups.</p>
    #   @return [Array<Types::TargetGroup>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeTargetGroupsOutput < Struct.new(
      :target_groups,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets.</p>
    #   @return [Array<Types::TargetDescription>]
    # @!attribute include
    #   <p>Used to include anomaly detection information.</p>
    #   @return [Array<String>]
    class DescribeTargetHealthInput < Struct.new(
      :target_group_arn,
      :targets,
      :include,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_health_descriptions
    #   <p>Information about the health of the targets.</p>
    #   @return [Array<Types::TargetHealthDescription>]
    class DescribeTargetHealthOutput < Struct.new(
      :target_health_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeTrustStoreAssociationsInput < Struct.new(
      :trust_store_arn,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_associations
    #   <p>Information about the resources the trust store is associated to.</p>
    #   @return [Array<Types::TrustStoreAssociation>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeTrustStoreAssociationsOutput < Struct.new(
      :trust_store_associations,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the revocations used by a trust store.</p>
    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_id
    #   <p>The revocation ID of a revocation file in use.</p>
    #   @return [Integer]
    # @!attribute revocation_type
    #   <p>The type of revocation file.</p>
    #   @return [String]
    # @!attribute number_of_revoked_entries
    #   <p>The number of revoked certificates.</p>
    #   @return [Integer]
    class DescribeTrustStoreRevocation < Struct.new(
      :trust_store_arn,
      :revocation_id,
      :revocation_type,
      :number_of_revoked_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_ids
    #   <p>The revocation IDs of the revocation files you want to describe.</p>
    #   @return [Array<Integer>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeTrustStoreRevocationsInput < Struct.new(
      :trust_store_arn,
      :revocation_ids,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_revocations
    #   <p>Information about the revocation file in the trust store.</p>
    #   @return [Array<Types::DescribeTrustStoreRevocation>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeTrustStoreRevocationsOutput < Struct.new(
      :trust_store_revocations,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arns
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [Array<String>]
    # @!attribute names
    #   <p>The names of the trust stores.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeTrustStoresInput < Struct.new(
      :trust_store_arns,
      :names,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_stores
    #   <p>Information about the trust stores.</p>
    #   @return [Array<Types::TrustStore>]
    # @!attribute next_marker
    #   <p>If there are additional results, this is the marker for the next set of results.
    #         Otherwise, this is null.</p>
    #   @return [String]
    class DescribeTrustStoresOutput < Struct.new(
      :trust_stores,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A listener with the specified port already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateListenerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A load balancer with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateLoadBalancerNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag key was specified more than once.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateTagKeysException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A target group with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateTargetGroupNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A trust store with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateTrustStoreNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an action that returns a custom HTTP response.</p>
    # @!attribute message_body
    #   <p>The message.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP response code (2XX, 4XX, or 5XX).</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type.</p>
    #            <p>Valid Values: text/plain | text/css | text/html | application/javascript |
    #         application/json</p>
    #   @return [String]
    class FixedResponseActionConfig < Struct.new(
      :message_body,
      :status_code,
      :content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a forward action.</p>
    # @!attribute target_groups
    #   <p>The target groups. For Network Load Balancers, you can specify a single target
    #         group.</p>
    #   @return [Array<Types::TargetGroupTuple>]
    # @!attribute target_group_stickiness_config
    #   <p>The target group stickiness for the rule.</p>
    #   @return [Types::TargetGroupStickinessConfig]
    class ForwardActionConfig < Struct.new(
      :target_groups,
      :target_group_stickiness_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The content of the resource policy.</p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    class GetTrustStoreCaCertificatesBundleInput < Struct.new(
      :trust_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The ca certificate bundles Amazon S3 URI.</p>
    #   @return [String]
    class GetTrustStoreCaCertificatesBundleOutput < Struct.new(
      :location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_id
    #   <p>The revocation ID of the revocation file.</p>
    #   @return [Integer]
    class GetTrustStoreRevocationContentInput < Struct.new(
      :trust_store_arn,
      :revocation_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The revocation files Amazon S3 URI.</p>
    #   @return [String]
    class GetTrustStoreRevocationContentOutput < Struct.new(
      :location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The health of the specified targets could not be retrieved due to an internal
    #       error.</p>
    # @!attribute message
    #   @return [String]
    class HealthUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a host header condition.</p>
    # @!attribute values
    #   <p>The host names. The maximum size of each name is 128 characters. The comparison is
    #         case insensitive. The following wildcard characters are supported: * (matches 0 or more
    #         characters) and ? (matches exactly 1 character). You must include at least one "." 
    #         character. You can include only alphabetical characters after the final "." character.</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the host name.</p>
    #   @return [Array<String>]
    class HostHeaderConditionConfig < Struct.new(
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an HTTP header condition.</p>
    #          <p>There is a set of standard HTTP header fields. You can also define custom HTTP header
    #       fields.</p>
    # @!attribute http_header_name
    #   <p>The name of the HTTP header field. The maximum size is 40 characters. The header name is
    #         case insensitive. The allowed characters are specified by RFC 7230. Wildcards are not
    #         supported.</p>
    #            <p>You can't use an HTTP header condition to specify the host header. Instead, use a <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#host-conditions">host condition</a>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The strings to compare against the value of the HTTP header. The maximum size of
    #         each string is 128 characters. The comparison strings are case insensitive. The following
    #         wildcard characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
    #         character).</p>
    #            <p>If the same header appears multiple times in the request, we search them in order until a
    #         match is found.</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the value of the HTTP header. To require that all of the strings are a match, create one
    #         condition per string.</p>
    #   @return [Array<String>]
    class HttpHeaderConditionConfig < Struct.new(
      :http_header_name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an HTTP method condition.</p>
    #          <p>HTTP defines a set of request methods, also referred to as HTTP verbs. For more
    #       information, see the <a href="https://www.iana.org/assignments/http-methods/http-methods.xhtml">HTTP Method
    #         Registry</a>. You can also define custom HTTP methods.</p>
    # @!attribute values
    #   <p>The name of the request method. The maximum size is 40 characters. The allowed characters
    #         are A-Z, hyphen (-), and underscore (_). The comparison is case sensitive. Wildcards are not
    #         supported; therefore, the method name must be an exact match.</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of the strings matches
    #         the HTTP request method. We recommend that you route GET and HEAD requests in the same way,
    #         because the response to a HEAD request may be cached.</p>
    #   @return [Array<String>]
    class HttpRequestMethodConditionConfig < Struct.new(
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration is not valid with this protocol.</p>
    # @!attribute message
    #   @return [String]
    class IncompatibleProtocolsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There is insufficient capacity to reserve.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientCapacityException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified ca certificate bundle is in an invalid format, or corrupt.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCaCertificatesBundleException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested configuration is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidConfigurationRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested action is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLoadBalancerActionException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The provided revocation file is an invalid format, or uses an incorrect algorithm.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRevocationContentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested scheme is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSchemeException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified security group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSecurityGroupException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified subnet is out of available addresses.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnetException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified target does not exist, is not in the same VPC as the target group, or has an
    #       unsupported instance type.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTargetException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An IPAM pool is a collection of IP address CIDRs. 
    #       IPAM pools enable you to organize your IP addresses 
    #       according to your routing and security needs.</p>
    # @!attribute ipv4_ipam_pool_id
    #   <p>The ID of the IPv4 IPAM pool.</p>
    #   @return [String]
    class IpamPools < Struct.new(
      :ipv4_ipam_pool_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Elastic Load Balancing resource limit for your Amazon Web Services
    #       account.</p>
    #          <p>For more information, see the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Quotas for your
    #           Application Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html">Quotas for your
    #           Network Load Balancers</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/quotas-limits.html">Quotas for your Gateway
    #           Load Balancers</a>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute name
    #   <p>The name of the limit. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>application-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>condition-values-per-alb-rule</p>
    #               </li>
    #               <li>
    #                  <p>condition-wildcards-per-alb-rule</p>
    #               </li>
    #               <li>
    #                  <p>gateway-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>gateway-load-balancers-per-vpc</p>
    #               </li>
    #               <li>
    #                  <p>geneve-target-groups</p>
    #               </li>
    #               <li>
    #                  <p>listeners-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>listeners-per-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>network-load-balancers</p>
    #               </li>
    #               <li>
    #                  <p>rules-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-action-on-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-action-on-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>target-groups-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-application-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-availability-zone-per-gateway-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-availability-zone-per-network-load-balancer</p>
    #               </li>
    #               <li>
    #                  <p>targets-per-network-load-balancer</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max
    #   <p>The maximum value of the limit.</p>
    #   @return [String]
    class Limit < Struct.new(
      :name,
      :max,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a listener.</p>
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the load balancer is listening.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>[HTTPS or TLS listener] The default certificate for the listener.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute ssl_policy
    #   <p>[HTTPS or TLS listener] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #   @return [String]
    # @!attribute default_actions
    #   <p>The default actions for the listener.</p>
    #   @return [Array<Types::Action>]
    # @!attribute alpn_policy
    #   <p>[TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN)
    #         policy.</p>
    #   @return [Array<String>]
    # @!attribute mutual_authentication
    #   <p>The mutual authentication configuration information.</p>
    #   @return [Types::MutualAuthenticationAttributes]
    class Listener < Struct.new(
      :listener_arn,
      :load_balancer_arn,
      :port,
      :protocol,
      :certificates,
      :ssl_policy,
      :default_actions,
      :alpn_policy,
      :mutual_authentication,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a listener attribute.</p>
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #            <p>The following attribute is supported by Network Load Balancers, and Gateway Load Balancers.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>tcp.idle_timeout.seconds</code> - The tcp idle timeout value, in seconds. The 
    #             valid range is 60-6000 seconds. The default is 350 seconds.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are only supported by Application Load Balancers.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert_serial_number.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert-Serial-Number</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert_issuer.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert-Issuer</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert_subject.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert-Subject</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert_validity.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert-Validity</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert_leaf.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert-Leaf</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_mtls_clientcert.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Mtls-Clientcert</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_tls_version.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Tls-Version</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.request.x_amzn_tls_cipher_suite.header_name</code> - 
    #             Enables you to modify the header name of the  
    #             <b>X-Amzn-Tls-Cipher-Suite</b> HTTP request header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.server.enabled</code> - 
    #             Enables you to allow or remove the HTTP response server header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.strict_transport_security.header_value</code> - 
    #             Informs browsers that the site should only be accessed using HTTPS, and that 
    #             any future attempts to access it using HTTP should automatically be converted 
    #             to HTTPS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_allow_origin.header_value</code> - 
    #             Specifies which origins are allowed to access the server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_allow_methods.header_value</code> - 
    #             Returns which HTTP methods are allowed when accessing the server from a different 
    #             origin.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_allow_headers.header_value</code> - 
    #             Specifies which headers can be used during the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_allow_credentials.header_value</code> - 
    #             Indicates whether the browser should include credentials such as cookies or 
    #             authentication when making requests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_expose_headers.header_value</code> - 
    #             Returns which headers the browser can expose to the requesting client.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.access_control_max_age.header_value</code> - 
    #             Specifies how long the results of a preflight request can be cached, in seconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.content_security_policy.header_value</code> - 
    #             Specifies restrictions enforced by the browser to help minimize the risk of certain 
    #             types of security threats.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.x_content_type_options.header_value</code> - 
    #             Indicates whether the MIME types advertised in the <b>Content-Type</b> 
    #             headers should be followed and not be changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.response.x_frame_options.header_value</code> - Indicates 
    #             whether the browser is allowed to render a page in a <b>frame</b>, 
    #             <b>iframe</b>, <b>embed</b> or 
    #             <b>object</b>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class ListenerAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified listener does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ListenerNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a load balancer.</p>
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The public DNS name of the load balancer.</p>
    #   @return [String]
    # @!attribute canonical_hosted_zone_id
    #   <p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the load balancer was created.</p>
    #   @return [Time]
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute scheme
    #   <p>The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an
    #         Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes.
    #         Therefore, Internet-facing load balancers can route requests from clients over the
    #         internet.</p>
    #            <p>The nodes of an internal load balancer have only private IP addresses. The DNS name of an
    #         internal load balancer is publicly resolvable to the private IP addresses of the nodes.
    #         Therefore, internal load balancers can route requests only from clients with access to the VPC
    #         for the load balancer.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the load balancer.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the load balancer.</p>
    #   @return [Types::LoadBalancerState]
    # @!attribute type
    #   <p>The type of load balancer.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>The subnets for the load balancer.</p>
    #   @return [Array<Types::AvailabilityZone>]
    # @!attribute security_groups
    #   <p>The IDs of the security groups for the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The type of IP addresses used for public or private connections by the subnets 
    #         attached to your load balancer.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    #   @return [String]
    # @!attribute customer_owned_ipv4_pool
    #   <p>[Application Load Balancers on Outposts] The ID of the customer-owned address pool.</p>
    #   @return [String]
    # @!attribute enforce_security_group_inbound_rules_on_private_link_traffic
    #   <p>Indicates whether to evaluate inbound security group rules for traffic sent to a 
    #         Network Load Balancer through Amazon Web Services PrivateLink.</p>
    #   @return [String]
    # @!attribute enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix 
    #         from each subnet for source NAT. The IP address type must be <code>dualstack</code>.
    #         The default value is <code>off</code>.</p>
    #   @return [String]
    # @!attribute ipam_pools
    #   <p>[Application Load Balancers] The IPAM pool in use by the load balancer, if configured.</p>
    #   @return [Types::IpamPools]
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
      :customer_owned_ipv4_pool,
      :enforce_security_group_inbound_rules_on_private_link_traffic,
      :enable_prefix_for_ipv6_source_nat,
      :ipam_pools,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a static IP address for a load balancer.</p>
    # @!attribute ip_address
    #   <p>The static IP address.</p>
    #   @return [String]
    # @!attribute allocation_id
    #   <p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
    #         internal-facing load balancer.</p>
    #   @return [String]
    # @!attribute private_i_pv4_address
    #   <p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>
    #   @return [String]
    # @!attribute i_pv6_address
    #   <p>[Network Load Balancers] The IPv6 address.</p>
    #   @return [String]
    class LoadBalancerAddress < Struct.new(
      :ip_address,
      :allocation_id,
      :private_i_pv4_address,
      :i_pv6_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a load balancer attribute.</p>
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #            <p>The following attributes are supported by all load balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deletion_protection.enabled</code> - Indicates whether deletion protection is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is
    #               <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross-zone load
    #             balancing is enabled. The possible values are <code>true</code> and <code>false</code>.
    #             The default for Network Load Balancers and Gateway Load Balancers is <code>false</code>. 
    #             The default for Application Load Balancers is <code>true</code>, and can't be changed.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported by both Application Load Balancers and Network Load
    #         Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.enabled</code> - Indicates whether access logs are enabled. The
    #             value is <code>true</code> or <code>false</code>. The default is
    #             <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.bucket</code> - The name of the S3 bucket for the access logs.
    #             This attribute is required if access logs are enabled. The bucket must exist in the same
    #             region as the load balancer and have a bucket policy that grants Elastic Load Balancing
    #             permissions to write to the bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>access_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the
    #             access logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ipv6.deny_all_igw_traffic</code> - Blocks internet gateway (IGW) access to the
    #             load balancer. It is set to <code>false</code> for internet-facing load balancers and
    #               <code>true</code> for internal load balancers, preventing unintended access to your
    #             internal load balancer through an internet gateway.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zonal_shift.config.enabled</code> - Indicates whether zonal shift is 
    #             enabled. The possible values are <code>true</code> and <code>false</code>. The 
    #             default is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported by only Application Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>idle_timeout.timeout_seconds</code> - The idle timeout value, in seconds. The
    #             valid range is 1-4000 seconds. The default is 60 seconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>client_keep_alive.seconds</code> - The client keep alive value, in seconds. The 
    #             valid range is 60-604800 seconds. The default is 3600 seconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection_logs.s3.enabled</code> - Indicates whether connection logs are enabled. The
    #             value is <code>true</code> or <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection_logs.s3.bucket</code> - The name of the S3 bucket for the connection logs.
    #             This attribute is required if connection logs are enabled. The bucket must exist in the same
    #             region as the load balancer and have a bucket policy that grants Elastic Load Balancing
    #             permissions to write to the bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>connection_logs.s3.prefix</code> - The prefix for the location in the S3 bucket for the
    #             connection logs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.desync_mitigation_mode</code> - Determines how the load balancer
    #             handles requests that might pose a security risk to your application. The possible values
    #             are <code>monitor</code>, <code>defensive</code>, and <code>strictest</code>. The default
    #             is <code>defensive</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.drop_invalid_header_fields.enabled</code> - Indicates whether HTTP
    #             headers with invalid header fields are removed by the load balancer (<code>true</code>) or
    #             routed to targets (<code>false</code>). The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.preserve_host_header.enabled</code> - Indicates whether the
    #             Application Load Balancer should preserve the <code>Host</code> header in the HTTP request
    #             and send it to the target without any change. The possible values are <code>true</code>
    #             and <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.x_amzn_tls_version_and_cipher_suite.enabled</code> - Indicates
    #             whether the two headers (<code>x-amzn-tls-version</code> and
    #               <code>x-amzn-tls-cipher-suite</code>), which contain information about the negotiated
    #             TLS version and cipher suite, are added to the client request before sending it to the
    #             target. The <code>x-amzn-tls-version</code> header has information about the TLS protocol
    #             version negotiated with the client, and the <code>x-amzn-tls-cipher-suite</code> header
    #             has information about the cipher suite negotiated with the client. Both headers are in
    #             OpenSSL format. The possible values for the attribute are <code>true</code> and
    #               <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.xff_client_port.enabled</code> - Indicates whether the
    #               <code>X-Forwarded-For</code> header should preserve the source port that the client used
    #             to connect to the load balancer. The possible values are <code>true</code> and
    #               <code>false</code>. The default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http.xff_header_processing.mode</code> - Enables you to modify,
    #             preserve, or remove the <code>X-Forwarded-For</code> header in the HTTP request before the
    #             Application Load Balancer sends the request to the target. The possible values are
    #               <code>append</code>, <code>preserve</code>, and <code>remove</code>. The default is
    #               <code>append</code>.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the value is <code>append</code>, the Application Load Balancer adds the client
    #                 IP address (of the last hop) to the <code>X-Forwarded-For</code> header in the HTTP
    #                 request before it sends it to targets.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the value is <code>preserve</code> the Application Load Balancer preserves the
    #                   <code>X-Forwarded-For</code> header in the HTTP request, and sends it to targets
    #                 without any change.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the value is <code>remove</code>, the Application Load Balancer removes the
    #                   <code>X-Forwarded-For</code> header in the HTTP request before it sends it to
    #                 targets.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>routing.http2.enabled</code> - Indicates whether HTTP/2 is enabled. The possible
    #             values are <code>true</code> and <code>false</code>. The default is <code>true</code>.
    #             Elastic Load Balancing requires that message header names contain only alphanumeric
    #             characters and hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>waf.fail_open.enabled</code> - Indicates whether to allow a WAF-enabled load
    #             balancer to route requests to targets if it is unable to forward the request to Amazon Web Services WAF. The possible values are <code>true</code> and <code>false</code>. The
    #             default is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported by only Network Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>dns_record.client_routing_policy</code> - Indicates how traffic is 
    #             distributed among the load balancer Availability Zones. The possible values are 
    #             <code>availability_zone_affinity</code> with 100 percent zonal affinity, 
    #             <code>partial_availability_zone_affinity</code> with 85 percent zonal affinity, 
    #             and <code>any_availability_zone</code> with 0 percent zonal affinity.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>secondary_ips.auto_assigned.per_subnet</code> - The number of secondary
    #               IP addresses to configure for your load balancer nodes. Use to address port 
    #               allocation errors if you can't add targets. The valid range is 0 to 7. The 
    #               default is 0. After you set this value, you can't decrease it.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class LoadBalancerAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified load balancer does not exist.</p>
    # @!attribute message
    #   @return [String]
    class LoadBalancerNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the state of the load balancer.</p>
    # @!attribute code
    #   <p>The state code. The initial state of the load balancer is <code>provisioning</code>. After
    #         the load balancer is fully set up and ready to route traffic, its state is
    #         <code>active</code>. If load balancer is routing traffic but does not have the resources it
    #         needs to scale, its state is<code>active_impaired</code>. If the load balancer could not be
    #         set up, its state is <code>failed</code>.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A description of the state.</p>
    #   @return [String]
    class LoadBalancerState < Struct.new(
      :code,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The codes to use when checking for a successful response from a target. If the protocol
    #       version is gRPC, these are gRPC codes. Otherwise, these are HTTP codes. </p>
    # @!attribute http_code
    #   <p>For Application Load Balancers, you can specify values between 200 and 499, with the
    #         default value being 200. You can specify multiple values (for example, "200,202") or a range of values (for example, "200-299").</p>
    #            <p>For Network Load Balancers, you can specify values between 200 and 599, with the
    #         default value being 200-399. You can specify multiple values (for example, "200,202") or a range of values (for example, "200-299").</p>
    #            <p>For Gateway Load Balancers, this must be "200–399".</p>
    #            <p>Note that when using shorthand syntax, some values such as commas need to be
    #         escaped.</p>
    #   @return [String]
    # @!attribute grpc_code
    #   <p>You can specify values between 0 and 99. You can specify multiple values (for example,
    #         "0,1") or a range of values (for example, "0-5"). The default value is 12.</p>
    #   @return [String]
    class Matcher < Struct.new(
      :http_code,
      :grpc_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum capacity for a load balancer.</p>
    # @!attribute capacity_units
    #   <p>The number of capacity units.</p>
    #   @return [Integer]
    class MinimumLoadBalancerCapacity < Struct.new(
      :capacity_units,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute minimum_load_balancer_capacity
    #   <p>The minimum load balancer capacity reserved.</p>
    #   @return [Types::MinimumLoadBalancerCapacity]
    # @!attribute reset_capacity_reservation
    #   <p>Resets the capacity reservation.</p>
    #   @return [Boolean]
    class ModifyCapacityReservationInput < Struct.new(
      :load_balancer_arn,
      :minimum_load_balancer_capacity,
      :reset_capacity_reservation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute last_modified_time
    #   <p>The last time the capacity reservation was modified.</p>
    #   @return [Time]
    # @!attribute decrease_requests_remaining
    #   <p>The amount of daily capacity decreases remaining.</p>
    #   @return [Integer]
    # @!attribute minimum_load_balancer_capacity
    #   <p>The requested minimum capacity reservation for the load balancer</p>
    #   @return [Types::MinimumLoadBalancerCapacity]
    # @!attribute capacity_reservation_state
    #   <p>The state of the capacity reservation.</p>
    #   @return [Array<Types::ZonalCapacityReservationState>]
    class ModifyCapacityReservationOutput < Struct.new(
      :last_modified_time,
      :decrease_requests_remaining,
      :minimum_load_balancer_capacity,
      :capacity_reservation_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute ipam_pools
    #   <p>The IPAM pools to be modified.</p>
    #   @return [Types::IpamPools]
    # @!attribute remove_ipam_pools
    #   <p>Remove the IP pools in use by the load balancer.</p>
    #   @return [Array<String>]
    class ModifyIpPoolsInput < Struct.new(
      :load_balancer_arn,
      :ipam_pools,
      :remove_ipam_pools,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ipam_pools
    #   <p>The IPAM pool ID.</p>
    #   @return [Types::IpamPools]
    class ModifyIpPoolsOutput < Struct.new(
      :ipam_pools,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The listener attributes.</p>
    #   @return [Array<Types::ListenerAttribute>]
    class ModifyListenerAttributesInput < Struct.new(
      :listener_arn,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the listener attributes.</p>
    #   @return [Array<Types::ListenerAttribute>]
    class ModifyListenerAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port for connections from clients to the load balancer. You can't specify a port for
    #         a Gateway Load Balancer.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol for connections from clients to the load balancer. Application Load Balancers
    #         support the HTTP and HTTPS protocols. Network Load Balancers support the TCP, TLS, UDP, and
    #         TCP_UDP protocols. You can’t change the protocol to UDP or TCP_UDP if dual-stack mode is
    #         enabled. You can't specify a protocol for a Gateway Load Balancer.</p>
    #   @return [String]
    # @!attribute ssl_policy
    #   <p>[HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are
    #         supported.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/describe-ssl-policies.html">Security policies</a> in the <i>Application Load Balancers Guide</i> or
    #           <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/describe-ssl-policies.html">Security policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>[HTTPS and TLS listeners] The default certificate for the listener. You must provide
    #         exactly one certificate. Set <code>CertificateArn</code> to the certificate ARN but do not set
    #           <code>IsDefault</code>.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute default_actions
    #   <p>The actions for the default rule.</p>
    #   @return [Array<Types::Action>]
    # @!attribute alpn_policy
    #   <p>[TLS listeners] The name of the Application-Layer Protocol Negotiation (ALPN) policy. You
    #         can specify one policy name. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HTTP1Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Only</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HTTP2Preferred</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>None</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html#alpn-policies">ALPN
    #           policies</a> in the <i>Network Load Balancers Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute mutual_authentication
    #   <p>The mutual authentication configuration information.</p>
    #   @return [Types::MutualAuthenticationAttributes]
    class ModifyListenerInput < Struct.new(
      :listener_arn,
      :port,
      :protocol,
      :ssl_policy,
      :certificates,
      :default_actions,
      :alpn_policy,
      :mutual_authentication,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listeners
    #   <p>Information about the modified listener.</p>
    #   @return [Array<Types::Listener>]
    class ModifyListenerOutput < Struct.new(
      :listeners,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The load balancer attributes.</p>
    #   @return [Array<Types::LoadBalancerAttribute>]
    class ModifyLoadBalancerAttributesInput < Struct.new(
      :load_balancer_arn,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the load balancer attributes.</p>
    #   @return [Array<Types::LoadBalancerAttribute>]
    class ModifyLoadBalancerAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions.</p>
    #   @return [Array<Types::RuleCondition>]
    # @!attribute actions
    #   <p>The actions.</p>
    #   @return [Array<Types::Action>]
    class ModifyRuleInput < Struct.new(
      :rule_arn,
      :conditions,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Information about the modified rule.</p>
    #   @return [Array<Types::Rule>]
    class ModifyRuleOutput < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The target group attributes.</p>
    #   @return [Array<Types::TargetGroupAttribute>]
    class ModifyTargetGroupAttributesInput < Struct.new(
      :target_group_arn,
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p>Information about the target group attributes.</p>
    #   @return [Array<Types::TargetGroupAttribute>]
    class ModifyTargetGroupAttributesOutput < Struct.new(
      :attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute health_check_protocol
    #   <p>The protocol the load balancer uses when performing health checks on targets. For
    #         Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load
    #         Balancers, the default is TCP. The TCP protocol is not supported for health checks if the
    #         protocol of the target group is HTTP or HTTPS. It is supported for health checks only if the
    #         protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    #   @return [String]
    # @!attribute health_check_port
    #   <p>The port the load balancer uses when performing health checks on targets.</p>
    #   @return [String]
    # @!attribute health_check_path
    #   <p>[HTTP/HTTPS health checks] The destination for health checks on the targets.</p>
    #            <p>[HTTP1 or HTTP2 protocol version] The ping path. The default is /.</p>
    #            <p>[GRPC protocol version] The path of a custom health check method with the format
    #         /package.service/method. The default is /Amazon Web Services.ALB/healthcheck.</p>
    #   @return [String]
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    #   @return [Boolean]
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual target.</p>
    #   @return [Integer]
    # @!attribute health_check_timeout_seconds
    #   <p>[HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means
    #         a failed health check.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy.</p>
    #   @return [Integer]
    # @!attribute matcher
    #   <p>[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful 
    #         response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range 
    #         is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499. For target 
    #         groups with a protocol of GENEVE, the range is 200-399.</p>
    #   @return [Types::Matcher]
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
      :matcher,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_groups
    #   <p>Information about the modified target group.</p>
    #   @return [Array<Types::TargetGroup>]
    class ModifyTargetGroupOutput < Struct.new(
      :target_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_bucket
    #   <p>The Amazon S3 bucket for the ca certificates bundle.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_key
    #   <p>The Amazon S3 path for the ca certificates bundle.</p>
    #   @return [String]
    # @!attribute ca_certificates_bundle_s3_object_version
    #   <p>The Amazon S3 object version for the ca certificates bundle. If undefined the current version is used.</p>
    #   @return [String]
    class ModifyTrustStoreInput < Struct.new(
      :trust_store_arn,
      :ca_certificates_bundle_s3_bucket,
      :ca_certificates_bundle_s3_key,
      :ca_certificates_bundle_s3_object_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_stores
    #   <p>Information about the modified trust store.</p>
    #   @return [Array<Types::TrustStore>]
    class ModifyTrustStoreOutput < Struct.new(
      :trust_stores,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the mutual authentication attributes of a listener.</p>
    # @!attribute mode
    #   <p>The client certificate handling method. Options are <code>off</code>, 
    #         <code>passthrough</code> or <code>verify</code>. The default value is 
    #         <code>off</code>.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute ignore_client_certificate_expiry
    #   <p>Indicates whether expired client certificates are ignored.</p>
    #   @return [Boolean]
    # @!attribute trust_store_association_status
    #   <p>Indicates a shared trust stores association status.</p>
    #   @return [String]
    # @!attribute advertise_trust_store_ca_names
    #   <p>Indicates whether trust store CA certificate names are advertised.</p>
    #   @return [String]
    class MutualAuthenticationAttributes < Struct.new(
      :mode,
      :trust_store_arn,
      :ignore_client_certificate_expiry,
      :trust_store_association_status,
      :advertise_trust_store_ca_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not allowed.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a path pattern condition.</p>
    # @!attribute values
    #   <p>The path patterns to compare against the request URL. The maximum size of each
    #         string is 128 characters. The comparison is case sensitive. The following wildcard characters
    #         are supported: * (matches 0 or more characters) and ? (matches exactly 1 character).</p>
    #            <p>If you specify multiple strings, the condition is satisfied if one of them matches the
    #         request URL. The path pattern is compared only to the path of the URL, not to its query
    #         string. To compare against the query string, use a <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#query-string-conditions">query string condition</a>.</p>
    #   @return [Array<String>]
    class PathPatternConditionConfig < Struct.new(
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not allowed while a prior request has not been completed.</p>
    # @!attribute message
    #   @return [String]
    class PriorRequestNotCompleteException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified priority is in use.</p>
    # @!attribute message
    #   @return [String]
    class PriorityInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a query string condition.</p>
    #          <p>The query string component of a URI starts after the first '?' character and is terminated
    #       by either a '#' character or the end of the URI. A typical query string contains key/value
    #       pairs separated by '&' characters. The allowed characters are specified by RFC 3986. Any
    #       character can be percentage encoded.</p>
    # @!attribute values
    #   <p>The key/value pairs or values to find in the query string. The maximum size of
    #         each string is 128 characters. The comparison is case insensitive. The following wildcard
    #         characters are supported: * (matches 0 or more characters) and ? (matches exactly 1
    #         character). To search for a literal '*' or '?' character in a query string, you must escape
    #         these characters in <code>Values</code> using a '\' character.</p>
    #            <p>If you specify multiple key/value pairs or values, the condition is satisfied if one of
    #         them is found in the query string.</p>
    #   @return [Array<Types::QueryStringKeyValuePair>]
    class QueryStringConditionConfig < Struct.new(
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a key/value pair.</p>
    # @!attribute key
    #   <p>The key. You can omit the key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value.</p>
    #   @return [String]
    class QueryStringKeyValuePair < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a redirect action.</p>
    #          <p>A URI consists of the following components: protocol://hostname:port/path?query. You must
    #       modify at least one of the following components to avoid a redirect loop: protocol, hostname,
    #       port, or path. Any components that you do not modify retain their original values.</p>
    #          <p>You can reuse URI components using the following reserved keywords:</p>
    #          <ul>
    #             <li>
    #                <p>#{protocol}</p>
    #             </li>
    #             <li>
    #                <p>#{host}</p>
    #             </li>
    #             <li>
    #                <p>#{port}</p>
    #             </li>
    #             <li>
    #                <p>#{path} (the leading "/" is removed)</p>
    #             </li>
    #             <li>
    #                <p>#{query}</p>
    #             </li>
    #          </ul>
    #          <p>For example, you can change the path to "/new/#{path}", the hostname to "example.#{host}",
    #       or the query to "#{query}&value=xyz".</p>
    # @!attribute protocol
    #   <p>The protocol. You can specify HTTP, HTTPS, or #{protocol}. You can redirect HTTP to HTTP,
    #         HTTP to HTTPS, and HTTPS to HTTPS. You can't redirect HTTPS to HTTP.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port. You can specify a value from 1 to 65535 or #{port}.</p>
    #   @return [String]
    # @!attribute host
    #   <p>The hostname. This component is not percent-encoded. The hostname can contain
    #         #{host}.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The absolute path, starting with the leading "/". This component is not percent-encoded.
    #         The path can contain #{host}, #{path}, and #{port}.</p>
    #   @return [String]
    # @!attribute query
    #   <p>The query parameters, URL-encoded when necessary, but not percent-encoded. Do not include
    #         the leading "?", as it is automatically added. You can specify any of the reserved
    #         keywords.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The HTTP redirect code. The redirect is either permanent (HTTP 301) or temporary (HTTP
    #         302).</p>
    #   @return [String]
    class RedirectActionConfig < Struct.new(
      :protocol,
      :port,
      :host,
      :path,
      :query,
      :status_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute targets
    #   <p>The targets.</p>
    #   @return [Array<Types::TargetDescription>]
    class RegisterTargetsInput < Struct.new(
      :target_group_arn,
      :targets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RegisterTargetsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The certificate to remove. You can specify one certificate per call. Set
    #           <code>CertificateArn</code> to the certificate ARN but do not set
    #         <code>IsDefault</code>.</p>
    #   @return [Array<Types::Certificate>]
    class RemoveListenerCertificatesInput < Struct.new(
      :listener_arn,
      :certificates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveListenerCertificatesOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arns
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [Array<String>]
    # @!attribute tag_keys
    #   <p>The tag keys for the tags to remove.</p>
    #   @return [Array<String>]
    class RemoveTagsInput < Struct.new(
      :resource_arns,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveTagsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_ids
    #   <p>The revocation IDs of the revocation files you want to remove.</p>
    #   @return [Array<Integer>]
    class RemoveTrustStoreRevocationsInput < Struct.new(
      :trust_store_arn,
      :revocation_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveTrustStoreRevocationsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specified resource is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a revocation file.</p>
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket for the revocation file.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The Amazon S3 path for the revocation file.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>The Amazon S3 object version of the revocation file.</p>
    #   @return [String]
    # @!attribute revocation_type
    #   <p>The type of revocation file.</p>
    #   @return [String]
    class RevocationContent < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :revocation_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified revocation file does not exist.</p>
    # @!attribute message
    #   @return [String]
    class RevocationContentNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified revocation ID does not exist.</p>
    # @!attribute message
    #   @return [String]
    class RevocationIdNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a rule.</p>
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions. Each rule can include zero or one of the following conditions:
    #           <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
    #           <code>source-ip</code>, and zero or more of the following conditions:
    #           <code>http-header</code> and <code>query-string</code>.</p>
    #   @return [Array<Types::RuleCondition>]
    # @!attribute actions
    #   <p>The actions. Each rule must include exactly one of the following types of actions:
    #           <code>forward</code>, <code>redirect</code>, or <code>fixed-response</code>, and it must be
    #         the last action to be performed.</p>
    #   @return [Array<Types::Action>]
    # @!attribute is_default
    #   <p>Indicates whether this is the default rule.</p>
    #   @return [Boolean]
    class Rule < Struct.new(
      :rule_arn,
      :priority,
      :conditions,
      :actions,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a condition for a rule.</p>
    #          <p>Each rule can optionally include up to one of each of the following conditions:
    #         <code>http-request-method</code>, <code>host-header</code>, <code>path-pattern</code>, and
    #         <code>source-ip</code>. Each rule can also optionally include one or more of each of the
    #       following conditions: <code>http-header</code> and <code>query-string</code>. Note that the
    #       value for a condition can't be empty.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Quotas for your
    #       Application Load Balancers</a>.</p>
    # @!attribute field
    #   <p>The field in the HTTP request. The following are the possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>http-header</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>http-request-method</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>host-header</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>path-pattern</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>query-string</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>source-ip</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The condition value. Specify only when <code>Field</code> is <code>host-header</code> or
    #           <code>path-pattern</code>. Alternatively, to specify multiple host names or multiple path
    #         patterns, use <code>HostHeaderConfig</code> or <code>PathPatternConfig</code>.</p>
    #            <p>If <code>Field</code> is <code>host-header</code> and you are not using
    #           <code>HostHeaderConfig</code>, you can specify a single host name (for example,
    #         my.example.com) in <code>Values</code>. A host name is case insensitive, can be up to 128
    #         characters in length, and can contain any of the following characters.</p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z, 0-9</p>
    #               </li>
    #               <li>
    #                  <p>- .</p>
    #               </li>
    #               <li>
    #                  <p>* (matches 0 or more characters)</p>
    #               </li>
    #               <li>
    #                  <p>? (matches exactly 1 character)</p>
    #               </li>
    #            </ul>
    #            <p>If <code>Field</code> is <code>path-pattern</code> and you are not using
    #           <code>PathPatternConfig</code>, you can specify a single path pattern (for example, /img/*)
    #         in <code>Values</code>. A path pattern is case-sensitive, can be up to 128 characters in
    #         length, and can contain any of the following characters.</p>
    #            <ul>
    #               <li>
    #                  <p>A-Z, a-z, 0-9</p>
    #               </li>
    #               <li>
    #                  <p>_ - . $ / ~ " ' @ : +</p>
    #               </li>
    #               <li>
    #                  <p>& (using &amp;)</p>
    #               </li>
    #               <li>
    #                  <p>* (matches 0 or more characters)</p>
    #               </li>
    #               <li>
    #                  <p>? (matches exactly 1 character)</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute host_header_config
    #   <p>Information for a host header condition. Specify only when <code>Field</code> is
    #           <code>host-header</code>.</p>
    #   @return [Types::HostHeaderConditionConfig]
    # @!attribute path_pattern_config
    #   <p>Information for a path pattern condition. Specify only when <code>Field</code> is
    #           <code>path-pattern</code>.</p>
    #   @return [Types::PathPatternConditionConfig]
    # @!attribute http_header_config
    #   <p>Information for an HTTP header condition. Specify only when <code>Field</code> is
    #           <code>http-header</code>.</p>
    #   @return [Types::HttpHeaderConditionConfig]
    # @!attribute query_string_config
    #   <p>Information for a query string condition. Specify only when <code>Field</code> is
    #           <code>query-string</code>.</p>
    #   @return [Types::QueryStringConditionConfig]
    # @!attribute http_request_method_config
    #   <p>Information for an HTTP method condition. Specify only when <code>Field</code> is
    #           <code>http-request-method</code>.</p>
    #   @return [Types::HttpRequestMethodConditionConfig]
    # @!attribute source_ip_config
    #   <p>Information for a source IP condition. Specify only when <code>Field</code> is
    #           <code>source-ip</code>.</p>
    #   @return [Types::SourceIpConditionConfig]
    class RuleCondition < Struct.new(
      :field,
      :values,
      :host_header_config,
      :path_pattern_config,
      :http_header_config,
      :query_string_config,
      :http_request_method_config,
      :source_ip_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified rule does not exist.</p>
    # @!attribute message
    #   @return [String]
    class RuleNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the priorities for the rules for a listener.</p>
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The rule priority.</p>
    #   @return [Integer]
    class RulePriorityPair < Struct.new(
      :rule_arn,
      :priority,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified SSL policy does not exist.</p>
    # @!attribute message
    #   @return [String]
    class SSLPolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type. Internal load balancers must use <code>ipv4</code>.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>Application Load Balancer authentication supports IPv4 addresses only when 
    #         connecting to an Identity Provider (IdP) or Amazon Cognito endpoint. Without a public 
    #         IPv4 address the load balancer can't complete the authentication process, resulting 
    #         in HTTP 500 errors.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    #   @return [String]
    class SetIpAddressTypeInput < Struct.new(
      :load_balancer_arn,
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ip_address_type
    #   <p>The IP address type.</p>
    #   @return [String]
    class SetIpAddressTypeOutput < Struct.new(
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_priorities
    #   <p>The rule priorities.</p>
    #   @return [Array<Types::RulePriorityPair>]
    class SetRulePrioritiesInput < Struct.new(
      :rule_priorities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Information about the rules.</p>
    #   @return [Array<Types::Rule>]
    class SetRulePrioritiesOutput < Struct.new(
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The IDs of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute enforce_security_group_inbound_rules_on_private_link_traffic
    #   <p>Indicates whether to evaluate inbound security group rules for traffic sent to a 
    #         Network Load Balancer through Amazon Web Services PrivateLink. The default is <code>on</code>.</p>
    #   @return [String]
    class SetSecurityGroupsInput < Struct.new(
      :load_balancer_arn,
      :security_groups,
      :enforce_security_group_inbound_rules_on_private_link_traffic,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute enforce_security_group_inbound_rules_on_private_link_traffic
    #   <p>Indicates whether to evaluate inbound security group rules for traffic sent to a 
    #         Network Load Balancer through Amazon Web Services PrivateLink.</p>
    #   @return [String]
    class SetSecurityGroupsOutput < Struct.new(
      :security_group_ids,
      :enforce_security_group_inbound_rules_on_private_link_traffic,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) of the load balancer.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] You can specify subnets from one or more 
    #         Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute subnet_mappings
    #   <p>The IDs of the public subnets. You can specify only one subnet per Availability Zone. You
    #         must specify either subnets or subnet mappings.</p>
    #            <p>[Application Load Balancers] You must specify subnets from at least two Availability
    #         Zones. You can't specify Elastic IP addresses for your subnets.</p>
    #            <p>[Application Load Balancers on Outposts] You must specify one Outpost subnet.</p>
    #            <p>[Application Load Balancers on Local Zones] You can specify subnets from one or more Local
    #         Zones.</p>
    #            <p>[Network Load Balancers] You can specify subnets from one or more Availability Zones. You
    #         can specify one Elastic IP address per subnet if you need static IP addresses for your
    #         internet-facing load balancer. For internal load balancers, you can specify one private IP
    #         address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you
    #         can specify one IPv6 address per subnet.</p>
    #            <p>[Gateway Load Balancers] You can specify subnets from one or more Availability
    #         Zones.</p>
    #   @return [Array<Types::SubnetMapping>]
    # @!attribute ip_address_type
    #   <p>The IP address type.</p>
    #            <p>[Application Load Balancers] The possible values are <code>ipv4</code> (IPv4 addresses), 
    #         <code>dualstack</code> (IPv4 and IPv6 addresses), and <code>dualstack-without-public-ipv4</code> 
    #         (public IPv6 addresses and private IPv4 and IPv6 addresses).</p>
    #            <p>[Network Load Balancers and Gateway Load Balancers] The possible values are <code>ipv4</code> 
    #         (IPv4 addresses) and <code>dualstack</code> (IPv4 and IPv6 addresses).</p>
    #   @return [String]
    # @!attribute enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers with UDP listeners] Indicates whether to use an IPv6 prefix 
    #         from each subnet for source NAT. The IP address type must be <code>dualstack</code>.
    #         The default value is <code>off</code>.</p>
    #   @return [String]
    class SetSubnetsInput < Struct.new(
      :load_balancer_arn,
      :subnets,
      :subnet_mappings,
      :ip_address_type,
      :enable_prefix_for_ipv6_source_nat,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_zones
    #   <p>Information about the subnets.</p>
    #   @return [Array<Types::AvailabilityZone>]
    # @!attribute ip_address_type
    #   <p>The IP address type.</p>
    #   @return [String]
    # @!attribute enable_prefix_for_ipv6_source_nat
    #   <p>[Network Load Balancers] Indicates whether to use an IPv6 prefix from each subnet for source NAT.</p>
    #   @return [String]
    class SetSubnetsOutput < Struct.new(
      :availability_zones,
      :ip_address_type,
      :enable_prefix_for_ipv6_source_nat,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a source IP condition.</p>
    #          <p>You can use this condition to route based on the IP address of the source that connects to
    #       the load balancer. If a client is behind a proxy, this is the IP address of the proxy not the
    #       IP address of the client.</p>
    # @!attribute values
    #   <p>The source IP addresses, in CIDR format. You can use both IPv4 and IPv6 addresses.
    #         Wildcards are not supported.</p>
    #            <p>If you specify multiple addresses, the condition is satisfied if the source IP address of
    #         the request matches one of the CIDR blocks. This condition is not satisfied by the addresses
    #         in the X-Forwarded-For header. To search for addresses in the X-Forwarded-For header, use
    #         an <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#http-header-conditions">HTTP header condition</a>.</p>
    #            <p>The total number of values must be less than, or equal to five.</p>
    #   @return [Array<String>]
    class SourceIpConditionConfig < Struct.new(
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy used for SSL negotiation.</p>
    # @!attribute ssl_protocols
    #   <p>The protocols.</p>
    #   @return [Array<String>]
    # @!attribute ciphers
    #   <p>The ciphers.</p>
    #   @return [Array<Types::Cipher>]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute supported_load_balancer_types
    #   <p> The supported load balancers. </p>
    #   @return [Array<String>]
    class SslPolicy < Struct.new(
      :ssl_protocols,
      :ciphers,
      :name,
      :supported_load_balancer_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a subnet mapping.</p>
    # @!attribute subnet_id
    #   <p>The ID of the subnet.</p>
    #   @return [String]
    # @!attribute allocation_id
    #   <p>[Network Load Balancers] The allocation ID of the Elastic IP address for an
    #         internet-facing load balancer.</p>
    #   @return [String]
    # @!attribute private_i_pv4_address
    #   <p>[Network Load Balancers] The private IPv4 address for an internal load balancer.</p>
    #   @return [String]
    # @!attribute i_pv6_address
    #   <p>[Network Load Balancers] The IPv6 address.</p>
    #   @return [String]
    # @!attribute source_nat_ipv6_prefix
    #   <p>[Network Load Balancers with UDP listeners] The IPv6 prefix to use for source NAT.
    #         Specify an IPv6 prefix (/80 netmask) from the subnet CIDR block or <code>auto_assigned</code> 
    #         to use an IPv6 prefix selected at random from the subnet CIDR block.</p>
    #   @return [String]
    class SubnetMapping < Struct.new(
      :subnet_id,
      :allocation_id,
      :private_i_pv4_address,
      :i_pv6_address,
      :source_nat_ipv6_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified subnet does not exist.</p>
    # @!attribute message
    #   @return [String]
    class SubnetNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tags associated with a resource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Information about the tags.</p>
    #   @return [Array<Types::Tag>]
    class TagDescription < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a target.</p>
    # @!attribute id
    #   <p>The ID of the target. If the target type of the target group is <code>instance</code>,
    #         specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the
    #         target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type
    #         is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the target is listening. If the target group protocol is GENEVE, the
    #         supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load
    #         Balancer must have at least one listener whose port matches the target group port. This 
    #         parameter is not used if the target is a Lambda function.</p>
    #   @return [Integer]
    # @!attribute availability_zone
    #   <p>An Availability Zone or <code>all</code>. This determines whether the target receives 
    #         traffic from the load balancer nodes in the specified Availability Zone or from all enabled 
    #         Availability Zones for the load balancer.</p>
    #            <p>For Application Load Balancer target groups, the specified Availability Zone value is only applicable 
    #         when cross-zone load balancing is off. Otherwise the parameter is ignored and treated 
    #         as <code>all</code>.</p>
    #            <p>This parameter is not supported if the target type of the target group is
    #         <code>instance</code> or <code>alb</code>.</p>
    #            <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the target group, 
    #         the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside 
    #         the VPC, this parameter is required.</p>
    #            <p>For Application Load Balancer target groups with cross-zone load balancing off, if the target type 
    #         is <code>ip</code> and the IP address is outside of the VPC for the target group, this should be an 
    #         Availability Zone inside the VPC for the target group.</p>
    #            <p>If the target type is <code>lambda</code>, this parameter is optional and the only
    #         supported value is <code>all</code>.</p>
    #   @return [String]
    class TargetDescription < Struct.new(
      :id,
      :port,
      :availability_zone,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a target group.</p>
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute target_group_name
    #   <p>The name of the target group.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol to use for routing traffic to the targets.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port on which the targets are listening. This parameter is not used if the target is 
    #         a Lambda function.</p>
    #   @return [Integer]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the targets.</p>
    #   @return [String]
    # @!attribute health_check_protocol
    #   <p>The protocol to use to connect with the target. The GENEVE, TLS, UDP, and TCP_UDP
    #         protocols are not supported for health checks.</p>
    #   @return [String]
    # @!attribute health_check_port
    #   <p>The port to use to connect with the target.</p>
    #   @return [String]
    # @!attribute health_check_enabled
    #   <p>Indicates whether health checks are enabled.</p>
    #   @return [Boolean]
    # @!attribute health_check_interval_seconds
    #   <p>The approximate amount of time, in seconds, between health checks of an individual
    #         target.</p>
    #   @return [Integer]
    # @!attribute health_check_timeout_seconds
    #   <p>The amount of time, in seconds, during which no response means a failed health
    #         check.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive health checks successes required before considering an unhealthy
    #         target healthy.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive health check failures required before considering the target
    #         unhealthy.</p>
    #   @return [Integer]
    # @!attribute health_check_path
    #   <p>The destination for health checks on the targets.</p>
    #   @return [String]
    # @!attribute matcher
    #   <p>The HTTP or gRPC codes to use when checking for a successful response from a
    #         target.</p>
    #   @return [Types::Matcher]
    # @!attribute load_balancer_arns
    #   <p>The Amazon Resource Name (ARN) of the load balancer that routes traffic to this target
    #         group. You can use each target group with only one load balancer.</p>
    #   @return [Array<String>]
    # @!attribute target_type
    #   <p>The type of target that you must specify when registering targets with this target group.
    #         The possible values are <code>instance</code> (register targets by instance ID),
    #           <code>ip</code> (register targets by IP address), <code>lambda</code> (register a single
    #         Lambda function as a target), or <code>alb</code> (register a single Application Load Balancer
    #         as a target).</p>
    #   @return [String]
    # @!attribute protocol_version
    #   <p>[HTTP/HTTPS protocol] The protocol version. The possible values are <code>GRPC</code>,
    #           <code>HTTP1</code>, and <code>HTTP2</code>.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type. The default value is <code>ipv4</code>.</p>
    #   @return [String]
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
      :ip_address_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of load balancers per target group.</p>
    # @!attribute message
    #   @return [String]
    class TargetGroupAssociationLimitException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a target group attribute.</p>
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #            <p>The following attributes are supported by all load balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deregistration_delay.timeout_seconds</code> - The amount of time, in seconds,
    #             for Elastic Load Balancing to wait before changing the state of a deregistering target
    #             from <code>draining</code> to <code>unused</code>. The range is 0-3600 seconds. The
    #             default value is 300 seconds. If the target is a Lambda function, this attribute is not
    #             supported.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.enabled</code> - Indicates whether target stickiness is enabled. The
    #             value is <code>true</code> or <code>false</code>. The default is
    #             <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.type</code> - Indicates the type of stickiness. The possible values are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>lb_cookie</code> and <code>app_cookie</code> for Application Load Balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>source_ip</code> for Network Load Balancers.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>source_ip_dest_ip</code> and <code>source_ip_dest_ip_proto</code> for Gateway Load Balancers.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported by Application Load Balancers and 
    #         Network Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.cross_zone.enabled</code> - Indicates whether cross zone load 
    #             balancing is enabled. The value is <code>true</code>, <code>false</code> or 
    #             <code>use_load_balancer_configuration</code>. The default is 
    #             <code>use_load_balancer_configuration</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_group_health.dns_failover.minimum_healthy_targets.count</code> - 
    #             The minimum number of targets that must be healthy.
    #             If the number of healthy targets is below this value, mark the zone as unhealthy
    #             in DNS, so that traffic is routed only to healthy zones. The possible values are
    #             <code>off</code> or an integer from 1 to the maximum number of targets.
    #             The default is 1.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_group_health.dns_failover.minimum_healthy_targets.percentage</code> - 
    #             The minimum percentage of targets that must be healthy.
    #             If the percentage of healthy targets is below this value, mark the zone as unhealthy
    #             in DNS, so that traffic is routed only to healthy zones. The possible values are
    #             <code>off</code> or an integer from 1 to 100. The default is <code>off</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_group_health.unhealthy_state_routing.minimum_healthy_targets.count</code> - 
    #             The minimum number of targets that must be healthy.  
    #             If the number of healthy targets is below this value, send traffic to all targets, including unhealthy targets.
    #             The possible values are 1 to the maximum number of targets. The default is 1.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_group_health.unhealthy_state_routing.minimum_healthy_targets.percentage</code> - 
    #             The minimum percentage of targets that must be healthy. 
    #             If the percentage of healthy targets is below this value, send traffic to all targets, including unhealthy targets.
    #             The possible values are <code>off</code> or an integer from 1 to 100.
    #             The default is <code>off</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported only if the load balancer is an Application Load
    #         Balancer and the target is an instance or an IP address:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.algorithm.type</code> - The load balancing algorithm determines
    #             how the load balancer selects targets when routing requests. The value is
    #               <code>round_robin</code>, <code>least_outstanding_requests</code>, or <code>weighted_random</code>. The default is
    #               <code>round_robin</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>load_balancing.algorithm.anomaly_mitigation</code> - Only available when <code>load_balancing.algorithm.type</code> 
    #             is <code>weighted_random</code>. Indicates whether anomaly mitigation is enabled. The value is <code>on</code> 
    #             or <code>off</code>. The default is <code>off</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>slow_start.duration_seconds</code> - The time period, in seconds, during which a
    #             newly registered target receives an increasing share of the traffic to the target group.
    #             After this time period ends, the target receives its full share of traffic. The range is
    #             30-900 seconds (15 minutes). The default is 0 seconds (disabled).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.app_cookie.cookie_name</code> - Indicates the name of the
    #             application-based cookie. Names that start with the following prefixes are not allowed:
    #               <code>AWSALB</code>, <code>AWSALBAPP</code>, and <code>AWSALBTG</code>; they're reserved
    #             for use by the load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.app_cookie.duration_seconds</code> - The time period, in seconds,
    #             during which requests from a client should be routed to the same target. After this time
    #             period expires, the application-based cookie is considered stale. The range is 1 second to
    #             1 week (604800 seconds). The default value is 1 day (86400 seconds).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>stickiness.lb_cookie.duration_seconds</code> - The time period, in seconds,
    #             during which requests from a client should be routed to the same target. After this time
    #             period expires, the load balancer-generated cookie is considered stale. The range is 1
    #             second to 1 week (604800 seconds). The default value is 1 day (86400 seconds). </p>
    #               </li>
    #            </ul>
    #            <p>The following attribute is supported only if the load balancer is an Application Load
    #         Balancer and the target is a Lambda function:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>lambda.multi_value_headers.enabled</code> - Indicates whether the request and
    #             response headers that are exchanged between the load balancer and the Lambda function
    #             include arrays of values or strings. The value is <code>true</code> or <code>false</code>.
    #             The default is <code>false</code>. If the value is <code>false</code> and the request
    #             contains a duplicate header field name or query parameter key, the load balancer uses the
    #             last value sent by the client.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported only by Network Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>deregistration_delay.connection_termination.enabled</code> - Indicates whether
    #             the load balancer terminates connections at the end of the deregistration timeout. The
    #             value is <code>true</code> or <code>false</code>. For new UDP/TCP_UDP target groups the 
    #             default is <code>true</code>. Otherwise, the default is <code>false</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>preserve_client_ip.enabled</code> - Indicates whether client IP preservation is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is disabled if
    #             the target group type is IP address and the target group protocol is TCP or TLS.
    #             Otherwise, the default is enabled. Client IP preservation can't be disabled for UDP and
    #             TCP_UDP target groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>proxy_protocol_v2.enabled</code> - Indicates whether Proxy Protocol version 2 is
    #             enabled. The value is <code>true</code> or <code>false</code>. The default is
    #               <code>false</code>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_health_state.unhealthy.connection_termination.enabled</code> - Indicates whether 
    #             the load balancer terminates connections to unhealthy targets. The value is <code>true</code> 
    #             or <code>false</code>. The default is <code>true</code>. This attribute can't be enabled for UDP and
    #             TCP_UDP target groups.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_health_state.unhealthy.draining_interval_seconds</code> - The amount of time 
    #             for Elastic Load Balancing to wait before changing the state of an unhealthy target from 
    #             <code>unhealthy.draining</code> to <code>unhealthy</code>. The range is 0-360000 seconds. 
    #             The default value is 0 seconds.</p>
    #                  <p>Note: This attribute can only be configured when 
    #             <code>target_health_state.unhealthy.connection_termination.enabled</code> is <code>false</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes are supported only by Gateway Load Balancers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>target_failover.on_deregistration</code> - Indicates how the Gateway Load
    #             Balancer handles existing flows when a target is deregistered. The possible values are
    #               <code>rebalance</code> and <code>no_rebalance</code>. The default is
    #               <code>no_rebalance</code>. The two attributes
    #               (<code>target_failover.on_deregistration</code> and
    #               <code>target_failover.on_unhealthy</code>) can't be set independently. The value you set
    #             for both attributes must be the same.  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>target_failover.on_unhealthy</code> - Indicates how the Gateway Load Balancer
    #             handles existing flows when a target is unhealthy. The possible values are
    #               <code>rebalance</code> and <code>no_rebalance</code>. The default is
    #               <code>no_rebalance</code>. The two attributes
    #               (<code>target_failover.on_deregistration</code> and
    #               <code>target_failover.on_unhealthy</code>) can't be set independently. The value you
    #             set for both attributes must be the same.  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class TargetGroupAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified target group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TargetGroupNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the target group stickiness for a rule.</p>
    # @!attribute enabled
    #   <p>Indicates whether target group stickiness is enabled.</p>
    #   @return [Boolean]
    # @!attribute duration_seconds
    #   <p>The time period, in seconds, during which requests from a client should be routed to the
    #         same target group. The range is 1-604800 seconds (7 days). You must specify this value when
    #         enabling target group stickiness.</p>
    #   @return [Integer]
    class TargetGroupStickinessConfig < Struct.new(
      :enabled,
      :duration_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how traffic will be distributed between multiple target groups in a
    #       forward rule.</p>
    # @!attribute target_group_arn
    #   <p>The Amazon Resource Name (ARN) of the target group.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight. The range is 0 to 999.</p>
    #   @return [Integer]
    class TargetGroupTuple < Struct.new(
      :target_group_arn,
      :weight,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the current health of a target.</p>
    # @!attribute state
    #   <p>The state of the target.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason code.</p>
    #            <p>If the target state is <code>healthy</code>, a reason code is not provided.</p>
    #            <p>If the target state is <code>initial</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered
    #             with the load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the
    #             minimum number of health checks required to determine its health status.</p>
    #               </li>
    #            </ul>
    #            <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.ResponseCodeMismatch</code> - The health checks did not return an
    #             expected HTTP code. Applies only to Application Load Balancers and Gateway Load
    #             Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.Timeout</code> - The health check requests timed out. Applies only to
    #             Application Load Balancers and Gateway Load Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.FailedHealthChecks</code> - The load balancer received an error while
    #             establishing a connection to the target or the target response was malformed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InternalError</code> - The health checks failed due to an internal error.
    #             Applies only to Application Load Balancers.</p>
    #               </li>
    #            </ul>
    #            <p>If the target state is <code>unused</code>, the reason code can be one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.NotRegistered</code> - The target is not registered with the target
    #             group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.NotInUse</code> - The target group is not used by any load balancer or
    #             the target is in an Availability Zone that is not enabled for its load balancer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.InvalidState</code> - The target is in the stopped or terminated
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load
    #             balancer.</p>
    #               </li>
    #            </ul>
    #            <p>If the target state is <code>draining</code>, the reason code can be the following
    #         value:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.DeregistrationInProgress</code> - The target is in the process of being
    #             deregistered and the deregistration delay period has not expired.</p>
    #               </li>
    #            </ul>
    #            <p>If the target state is <code>unavailable</code>, the reason code can be the following
    #         value:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target
    #             group. Applies only to Application Load Balancers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Elb.InternalError</code> - Target health is unavailable due to an internal
    #             error. Applies only to Network Load Balancers.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the target health that provides additional details. If the state is
    #           <code>healthy</code>, a description is not provided.</p>
    #   @return [String]
    class TargetHealth < Struct.new(
      :state,
      :reason,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the health of a target.</p>
    # @!attribute target
    #   <p>The description of the target.</p>
    #   @return [Types::TargetDescription]
    # @!attribute health_check_port
    #   <p>The port to use to connect with the target.</p>
    #   @return [String]
    # @!attribute target_health
    #   <p>The health information for the target.</p>
    #   @return [Types::TargetHealth]
    # @!attribute anomaly_detection
    #   <p>The anomaly detection result for the target.</p>
    #            <p>If no anomalies were detected, the result is <code>normal</code>.</p>
    #            <p>If anomalies were detected, the result is <code>anomalous</code>.</p>
    #   @return [Types::AnomalyDetection]
    # @!attribute administrative_override
    #   <p>The administrative override information for the target.</p>
    #   @return [Types::AdministrativeOverride]
    class TargetHealthDescription < Struct.new(
      :target,
      :health_check_port,
      :target_health,
      :anomaly_detection,
      :administrative_override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of actions per rule.</p>
    # @!attribute message
    #   @return [String]
    class TooManyActionsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of certificates per load balancer.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCertificatesException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of listeners per load balancer.</p>
    # @!attribute message
    #   @return [String]
    class TooManyListenersException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of load balancers for your Amazon Web Services
    #       account.</p>
    # @!attribute message
    #   @return [String]
    class TooManyLoadBalancersException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of times a target can be registered with a load
    #       balancer.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRegistrationsForTargetIdException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of rules per load balancer.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRulesException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of tags for this resource.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of target groups for your Amazon Web Services
    #       account.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTargetGroupsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of targets.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTargetsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified trust store has too many revocation entries.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTrustStoreRevocationEntriesException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of trust stores for your Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTrustStoresException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of unique target groups per load balancer across
    #       all listeners. If a target group is used by multiple actions for a load balancer, it is
    #       counted as only one use.</p>
    # @!attribute message
    #   @return [String]
    class TooManyUniqueTargetGroupsPerLoadBalancerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a trust store.</p>
    # @!attribute name
    #   <p>The name of the trust store.</p>
    #   @return [String]
    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the trust store.</p>
    #   @return [String]
    # @!attribute number_of_ca_certificates
    #   <p>The number of ca certificates in the trust store.</p>
    #   @return [Integer]
    # @!attribute total_revoked_entries
    #   <p>The number of revoked certificates in the trust store.</p>
    #   @return [Integer]
    class TrustStore < Struct.new(
      :name,
      :trust_store_arn,
      :status,
      :number_of_ca_certificates,
      :total_revoked_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the resources a trust store is associated with.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class TrustStoreAssociation < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified association does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TrustStoreAssociationNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified trust store is currently in use.</p>
    # @!attribute message
    #   @return [String]
    class TrustStoreInUseException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified trust store does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TrustStoreNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified trust store is not active.</p>
    # @!attribute message
    #   @return [String]
    class TrustStoreNotReadyException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a revocation file in use by a trust store.</p>
    # @!attribute trust_store_arn
    #   <p>The Amazon Resource Name (ARN) of the trust store.</p>
    #   @return [String]
    # @!attribute revocation_id
    #   <p>The revocation ID of the revocation file.</p>
    #   @return [Integer]
    # @!attribute revocation_type
    #   <p>The type of revocation file.</p>
    #   @return [String]
    # @!attribute number_of_revoked_entries
    #   <p>The number of revoked certificates.</p>
    #   @return [Integer]
    class TrustStoreRevocation < Struct.new(
      :trust_store_arn,
      :revocation_id,
      :revocation_type,
      :number_of_revoked_entries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified protocol is not supported.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedProtocolException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The capacity reservation status for each Availability Zone.</p>
    # @!attribute state
    #   <p>The state of the capacity reservation.</p>
    #   @return [Types::CapacityReservationStatus]
    # @!attribute availability_zone
    #   <p>Information about the Availability Zone.</p>
    #   @return [String]
    # @!attribute effective_capacity_units
    #   <p>The number of effective capacity units.</p>
    #   @return [Float]
    class ZonalCapacityReservationState < Struct.new(
      :state,
      :availability_zone,
      :effective_capacity_units,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
