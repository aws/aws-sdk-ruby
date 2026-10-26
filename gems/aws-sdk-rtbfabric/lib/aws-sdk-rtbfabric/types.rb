# frozen_string_literal: true

# This is generated code!

module Aws::RTBFabric
  # This module contains the types returned by client operations.
  module Types

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    #   @return [Integer]
    class AcceptLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :attributes,
      :log_settings,
      :timeout_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the link.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the link was updated.</p>
    #   @return [Time]
    # @!attribute direction
    #   <p>The direction of the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Describes the settings for a link log.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class AcceptLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :log_settings,
      :connectivity_type,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because you do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a bid action.</p>
    # @!attribute no_bid
    #   <p>Describes a no bid action.</p>
    #   @return [Types::NoBidAction]
    # @!attribute header_tag
    #   <p>Describes the header tag for a bid action.</p>
    #   @return [Types::HeaderTagAction]
    class Action < Struct.new(
      :no_bid,
      :header_tag,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class NoBid < Action; end
      class HeaderTag < Action; end
      class Unknown < Action; end
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate to associate.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    class AssociateCertificateRequest < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate association.</p>
    #   @return [String]
    class AssociateCertificateResponse < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of an auto scaling group.</p>
    # @!attribute auto_scaling_group_names
    #   <p>The names of the auto scaling group.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The role ARN of the auto scaling group.</p>
    #   @return [String]
    # @!attribute health_check_config
    #   <p>The health check configuration for the Auto Scaling group managed endpoint.</p>
    #   @return [Types::HealthCheckConfig]
    class AutoScalingGroupsConfiguration < Struct.new(
      nil,
      :auto_scaling_group_names,
      :role_arn,
      :health_check_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a summary of a certificate association.</p>
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate association.</p>
    #   @return [String]
    # @!attribute associated_at
    #   <p>The timestamp of when the certificate was associated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the certificate association was last updated.</p>
    #   @return [Time]
    class CertificateAssociationSummary < Struct.new(
      nil,
      :acm_certificate_arn,
      :status,
      :associated_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because of a conflict in the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class CreateInboundExternalLinkRequest < Struct.new(
      nil,
      :client_token,
      :gateway_id,
      :attributes,
      :log_settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class CreateInboundExternalLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :status,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute http_responder_allowed
    #   <p>Boolean to specify if an HTTP responder is allowed.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_settings
    #   <p>Application log settings for the link. This value is required. Under <code>applicationLogs.sampling</code>, the <code>errorLog</code> and <code>filterLog</code> fields set the percentage of eligible events to log. Valid values range from <code>0</code> through <code>100</code>. To turn off application logs, set both fields to <code>0</code>, as in <code>{"applicationLogs":{"sampling":{"errorLog":0,"filterLog":0}}}</code>.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    #   @return [Integer]
    class CreateLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :attributes,
      :http_responder_allowed,
      :tags,
      :log_settings,
      :timeout_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the link was updated.</p>
    #   @return [Time]
    # @!attribute direction
    #   <p>The direction of the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Describes the settings for a link log.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute customer_provided_id
    #   <p>The customer-provided unique identifier of the link.</p>
    #   @return [String]
    class CreateLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :log_settings,
      :connectivity_type,
      :link_id,
      :customer_provided_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the routing rule. Lower numbers are evaluated first. Valid values are 1 to 1000. Priority must be unique among non-deleted rules within a link.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions for the routing rule. All specified fields must match for the rule to apply. At least one condition field must be set.</p>
    #   @return [Types::RuleCondition]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class CreateLinkRoutingRuleRequest < Struct.new(
      nil,
      :client_token,
      :gateway_id,
      :link_id,
      :priority,
      :conditions,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the routing rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the routing rule was created.</p>
    #   @return [Time]
    class CreateLinkRoutingRuleResponse < Struct.new(
      nil,
      :rule_id,
      :status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute public_endpoint
    #   <p>The public endpoint of the link.</p>
    #   @return [String]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class CreateOutboundExternalLinkRequest < Struct.new(
      nil,
      :client_token,
      :gateway_id,
      :attributes,
      :public_endpoint,
      :log_settings,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class CreateOutboundExternalLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifiers of the subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the requester gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class CreateRequesterGatewayRequest < Struct.new(
      nil,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :client_token,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the requester gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class CreateRequesterGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :domain_name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Unique identifiers of the subnets. A service quota for your account sets the number of Availability Zones that your subnets can span. By default, this quota is one Availability Zone. To span more Availability Zones, request a quota increase.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>The domain name for the responder gateway.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The networking port to use.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The networking protocol to use.</p>
    #   @return [String]
    # @!attribute listener_config
    #   <p>Listener configuration for the protocols (HTTP, HTTPS, or both) accepted by the gateway.</p>
    #   @return [Types::ListenerConfig]
    # @!attribute trust_store_configuration
    #   <p>The configuration of the trust store.</p>
    #   @return [Types::TrustStoreConfiguration]
    # @!attribute managed_endpoint_configuration
    #   <p>The configuration for the managed endpoint.</p>
    #   @return [Types::ManagedEndpointConfiguration]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the responder gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute gateway_type
    #   <p>The type of gateway. Valid values are <code>EXTERNAL</code> or <code>INTERNAL</code>.</p>
    #   @return [String]
    # @!attribute client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. Valid values are the following:</p> <ul> <li> <p> <code>AVAILABILITY_ZONE_AFFINITY</code>: RTB Fabric routes each requester's traffic to gateway capacity in the requester's own Availability Zone when the gateway has capacity available there. Otherwise, RTB Fabric routes the traffic to gateway capacity in the other Availability Zones of the gateway.</p> </li> <li> <p> <code>ANY_AVAILABILITY_ZONE</code>: RTB Fabric routes each requester's traffic to gateway capacity in every Availability Zone that the subnets of the gateway span. The Availability Zone that the requester is in does not change this.</p> </li> </ul> <p>If you don't specify a value, RTB Fabric uses <code>AVAILABILITY_ZONE_AFFINITY</code>. To get the behavior of <code>ANY_AVAILABILITY_ZONE</code>, create the gateway with subnets in more than one Availability Zone. RTB Fabric does not support partial Availability Zone affinity, so <code>PARTIAL_AVAILABILITY_ZONE_AFFINITY</code> is not a valid value. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    #   @return [String]
    class CreateResponderGatewayRequest < Struct.new(
      nil,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :domain_name,
      :port,
      :protocol,
      :listener_config,
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :client_token,
      :description,
      :tags,
      :gateway_type,
      :client_routing_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute listener_config
    #   <p>The listener configuration for the responder gateway.</p>
    #   @return [Types::ListenerConfig]
    # @!attribute external_inbound_endpoint
    #   <p>The external inbound endpoint for the responder gateway.</p>
    #   @return [String]
    # @!attribute client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    #   @return [String]
    class CreateResponderGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      :listener_config,
      :external_inbound_endpoint,
      :client_routing_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class DeleteInboundExternalLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class DeleteInboundExternalLinkResponse < Struct.new(
      nil,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class DeleteLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the link.</p>
    #   @return [String]
    class DeleteLinkResponse < Struct.new(
      nil,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    class DeleteLinkRoutingRuleRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the routing rule.</p>
    #   @return [String]
    class DeleteLinkRoutingRuleResponse < Struct.new(
      nil,
      :rule_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class DeleteOutboundExternalLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class DeleteOutboundExternalLinkResponse < Struct.new(
      nil,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    class DeleteRequesterGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class DeleteRequesterGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    class DeleteResponderGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class DeleteResponderGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate to disassociate.</p>
    #   @return [String]
    class DisassociateCertificateRequest < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate association.</p>
    #   @return [String]
    class DisassociateCertificateResponse < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of an Amazon Elastic Kubernetes Service endpoint.</p>
    # @!attribute endpoints_resource_name
    #   <p>The name of the endpoint resource.</p>
    #   @return [String]
    # @!attribute endpoints_resource_namespace
    #   <p>The namespace of the endpoint resource.</p>
    #   @return [String]
    # @!attribute cluster_api_server_endpoint_uri
    #   <p>The URI of the cluster API server endpoint.</p>
    #   @return [String]
    # @!attribute cluster_api_server_ca_certificate_chain
    #   <p>The CA certificate chain of the cluster API server.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The role ARN for the cluster.</p>
    #   @return [String]
    class EksEndpointsConfiguration < Struct.new(
      nil,
      :endpoints_resource_name,
      :endpoints_resource_namespace,
      :cluster_api_server_endpoint_uri,
      :cluster_api_server_ca_certificate_chain,
      :cluster_name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a filter.</p>
    # @!attribute criteria
    #   <p>Describes the criteria for a filter.</p>
    #   @return [Array<Types::FilterCriterion>]
    class Filter < Struct.new(
      nil,
      :criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the criteria for a filter.</p>
    # @!attribute path
    #   <p>The path to filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The value to filter.</p>
    #   @return [Array<String>]
    class FilterCriterion < Struct.new(
      nil,
      :path,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    class GetCertificateAssociationRequest < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the certificate association.</p>
    #   @return [String]
    # @!attribute associated_at
    #   <p>The timestamp of when the certificate was associated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the certificate association was last updated.</p>
    #   @return [Time]
    class GetCertificateAssociationResponse < Struct.new(
      nil,
      :gateway_id,
      :acm_certificate_arn,
      :status,
      :associated_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class GetInboundExternalLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute created_at
    #   <p>The timestamp of when the inbound external link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the inbound external link was updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    class GetInboundExternalLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :status,
      :domain_name,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :created_at,
      :updated_at,
      :tags,
      :log_settings,
      :connectivity_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class GetLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the link.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the link was updated.</p>
    #   @return [Time]
    # @!attribute direction
    #   <p>The direction of the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute http_responder_allowed
    #   <p>Boolean to specify if an HTTP responder is allowed.</p>
    #   @return [Boolean]
    # @!attribute timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    #   @return [Integer]
    class GetLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :log_settings,
      :connectivity_type,
      :link_id,
      :tags,
      :http_responder_allowed,
      :timeout_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    class GetLinkRoutingRuleRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the routing rule.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions for the routing rule.</p>
    #   @return [Types::RuleCondition]
    # @!attribute status
    #   <p>The status of the routing rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the routing rule was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the routing rule was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    class GetLinkRoutingRuleResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :rule_id,
      :priority,
      :conditions,
      :status,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class GetOutboundExternalLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute public_endpoint
    #   <p>The public endpoint for the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Describes the attributes of a link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute created_at
    #   <p>The timestamp of when the outbound external link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the outbound external link was updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    class GetOutboundExternalLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :status,
      :public_endpoint,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :created_at,
      :updated_at,
      :tags,
      :log_settings,
      :connectivity_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    class GetRequesterGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the requester gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the requester gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the requester gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the requester gateway was updated.</p>
    #   @return [Time]
    # @!attribute vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifiers of the subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute active_links_count
    #   <p>The count of active links for the requester gateway.</p>
    #   @return [Integer]
    # @!attribute total_links_count
    #   <p>The total count of links for the requester gateway.</p>
    #   @return [Integer]
    class GetRequesterGatewayResponse < Struct.new(
      nil,
      :status,
      :domain_name,
      :description,
      :created_at,
      :updated_at,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :gateway_id,
      :tags,
      :active_links_count,
      :total_links_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    class GetResponderGatewayRequest < Struct.new(
      nil,
      :gateway_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The unique identifier of the Virtual Private Cloud (VPC).</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifiers of the subnets.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the responder gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the responder gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the responder gateway was updated.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>The domain name of the responder gateway.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The networking port.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The networking protocol.</p>
    #   @return [String]
    # @!attribute listener_config
    #   <p>The listener configuration for the responder gateway.</p>
    #   @return [Types::ListenerConfig]
    # @!attribute trust_store_configuration
    #   <p>The configuration of the trust store.</p>
    #   @return [Types::TrustStoreConfiguration]
    # @!attribute managed_endpoint_configuration
    #   <p>The configuration of the managed endpoint.</p>
    #   @return [Types::ManagedEndpointConfiguration]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute active_links_count
    #   <p>The count of active links for the responder gateway.</p>
    #   @return [Integer]
    # @!attribute total_links_count
    #   <p>The total count of links for the responder gateway.</p>
    #   @return [Integer]
    # @!attribute links_requested_count
    #   <p>The count of requested links waiting for the responder gateway to accept or reject.</p>
    #   @return [Integer]
    # @!attribute gateway_type
    #   <p>The type of gateway. Valid values are <code>EXTERNAL</code> or <code>INTERNAL</code>.</p>
    #   @return [String]
    # @!attribute external_inbound_endpoint
    #   <p>The external inbound endpoint for the responder gateway.</p>
    #   @return [String]
    # @!attribute client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. RTB Fabric omits this member if the gateway has never had a client routing policy. An omitted value means that the gateway uses <code>AVAILABILITY_ZONE_AFFINITY</code>. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    #   @return [String]
    class GetResponderGatewayResponse < Struct.new(
      nil,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :status,
      :description,
      :created_at,
      :updated_at,
      :domain_name,
      :port,
      :protocol,
      :listener_config,
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :gateway_id,
      :tags,
      :active_links_count,
      :total_links_count,
      :links_requested_count,
      :gateway_type,
      :external_inbound_endpoint,
      :client_routing_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the header tag for a bid action.</p>
    # @!attribute name
    #   <p>The name of the bid action.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the bid action.</p>
    #   @return [String]
    class HeaderTagAction < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The health check configuration for a managed endpoint. Defines how the service probes instances in the Auto Scaling group to determine their health status.</p>
    # @!attribute port
    #   <p>The port to use for health check probes. Valid range is 80 to 65535.</p>
    #   @return [Integer]
    # @!attribute path
    #   <p>The destination path for the health check request. Must start with <code>/</code>.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol to use for health check probes.</p>
    #   @return [String]
    # @!attribute timeout_ms
    #   <p>The timeout for each health check probe, in milliseconds. Valid range is 100 to 5000.</p>
    #   @return [Integer]
    # @!attribute interval_seconds
    #   <p>The interval between health check probes, in seconds. Valid range is 5 to 60.</p>
    #   @return [Integer]
    # @!attribute status_code_matcher
    #   <p>The expected HTTP status code or status code pattern from healthy instances. Supports a single code (for example, <code>200</code>), a range (for example, <code>200-299</code>), or a comma-separated list (for example, <code>200,204</code>).</p>
    #   @return [String]
    # @!attribute healthy_threshold_count
    #   <p>The number of consecutive successful health checks required before an instance is considered healthy. Valid range is 2 to 10.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold_count
    #   <p>The number of consecutive failed health checks required before an instance is considered unhealthy. Valid range is 2 to 10.</p>
    #   @return [Integer]
    class HealthCheckConfig < Struct.new(
      nil,
      :port,
      :path,
      :protocol,
      :timeout_ms,
      :interval_seconds,
      :status_code_matcher,
      :healthy_threshold_count,
      :unhealthy_threshold_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because of an internal server error. Try your call again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a link application log.</p>
    # @!attribute sampling
    #   <p>Describes a link application log sample.</p>
    #   @return [Types::LinkApplicationLogSampling]
    class LinkApplicationLogConfiguration < Struct.new(
      nil,
      :sampling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a link application log sample.</p>
    # @!attribute error_log
    #   <p>An error log entry.</p>
    #   @return [Float]
    # @!attribute filter_log
    #   <p>A filter log entry.</p>
    #   @return [Float]
    class LinkApplicationLogSampling < Struct.new(
      nil,
      :error_log,
      :filter_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the attributes of a link.</p>
    # @!attribute responder_error_masking
    #   <p>Describes the masking for HTTP error codes.</p>
    #   @return [Array<Types::ResponderErrorMaskingForHttpCode>]
    # @!attribute customer_provided_id
    #   <p>The customer-provided unique identifier of the link.</p>
    #   @return [String]
    class LinkAttributes < Struct.new(
      nil,
      :responder_error_masking,
      :customer_provided_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the settings for a link log.</p>
    # @!attribute application_logs
    #   <p>Describes the configuration of a link application log.</p>
    #   @return [Types::LinkApplicationLogConfiguration]
    class LinkLogSettings < Struct.new(
      nil,
      :application_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a link routing rule.</p>
    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the routing rule.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions for the routing rule.</p>
    #   @return [Types::RuleCondition]
    # @!attribute status
    #   <p>The status of the routing rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the routing rule was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the routing rule was last updated.</p>
    #   @return [Time]
    class LinkRoutingRuleSummary < Struct.new(
      nil,
      :rule_id,
      :priority,
      :conditions,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListCertificateAssociationsRequest < Struct.new(
      nil,
      :gateway_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute certificate_associations
    #   <p>The list of certificate associations for the gateway.</p>
    #   @return [Array<Types::CertificateAssociationSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListCertificateAssociationsResponse < Struct.new(
      nil,
      :certificate_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListLinkRoutingRulesRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>The list of routing rules for the link.</p>
    #   @return [Array<Types::LinkRoutingRuleSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListLinkRoutingRulesResponse < Struct.new(
      nil,
      :rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListLinksRequest < Struct.new(
      nil,
      :gateway_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute links
    #   <p>Information about created links.</p>
    #   @return [Array<Types::ListLinksResponseStructure>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListLinksResponse < Struct.new(
      nil,
      :links,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a link.</p>
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the link.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the link was updated.</p>
    #   @return [Time]
    # @!attribute direction
    #   <p>The direction of the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>Describes the configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>Describes the configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Describes attributes of a link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Describes the settings for a link log.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute public_endpoint
    #   <p>The public endpoint of the outbound link.</p>
    #   @return [String]
    class ListLinksResponseStructure < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :log_settings,
      :connectivity_type,
      :link_id,
      :tags,
      :public_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListRequesterGatewaysRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_ids
    #   <p>The unique identifier of the gateways.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListRequesterGatewaysResponse < Struct.new(
      nil,
      :gateway_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListResponderGatewaysRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_ids
    #   <p>The unique identifier of the gateways.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListResponderGatewaysResponse < Struct.new(
      nil,
      :gateway_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Listener configuration for the protocols (HTTP, HTTPS, or both) accepted by the gateway.</p>
    # @!attribute protocols
    #   <p>The protocol for connections from clients to the gateway</p>
    #   @return [Array<String>]
    class ListenerConfig < Struct.new(
      nil,
      :protocols,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a managed endpoint.</p>
    # @!attribute auto_scaling_groups
    #   <p>Describes the configuration of an auto scaling group.</p>
    #   @return [Types::AutoScalingGroupsConfiguration]
    # @!attribute eks_endpoints
    #   <p>Describes the configuration of an Amazon Elastic Kubernetes Service endpoint.</p>
    #   @return [Types::EksEndpointsConfiguration]
    class ManagedEndpointConfiguration < Struct.new(
      :auto_scaling_groups,
      :eks_endpoints,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AutoScalingGroups < ManagedEndpointConfiguration; end
      class EksEndpoints < ManagedEndpointConfiguration; end
      class Unknown < ManagedEndpointConfiguration; end
    end

    # <p>Describes the configuration of a module.</p>
    # @!attribute version
    #   <p>The version of the module.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the module.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>The dependencies of the module.</p>
    #   @return [Array<String>]
    # @!attribute module_parameters
    #   <p>Describes the parameters of a module.</p>
    #   @return [Types::ModuleParameters]
    class ModuleConfiguration < Struct.new(
      nil,
      :version,
      :name,
      :depends_on,
      :module_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of a module.</p>
    # @!attribute no_bid
    #   <p>Describes the parameters of a no bid module.</p>
    #   @return [Types::NoBidModuleParameters]
    # @!attribute open_rtb_attribute
    #   <p>Describes the parameters of an open RTB attribute module.</p>
    #   @return [Types::OpenRtbAttributeModuleParameters]
    # @!attribute rate_limiter
    #   <p>Describes the parameters of a rate limit.</p>
    #   @return [Types::RateLimiterModuleParameters]
    class ModuleParameters < Struct.new(
      :no_bid,
      :open_rtb_attribute,
      :rate_limiter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class NoBid < ModuleParameters; end
      class OpenRtbAttribute < ModuleParameters; end
      class RateLimiter < ModuleParameters; end
      class Unknown < ModuleParameters; end
    end

    # <p>Describes a no bid action.</p>
    # @!attribute no_bid_reason_code
    #   <p>The reason code for the no bid action.</p>
    #   @return [Integer]
    class NoBidAction < Struct.new(
      nil,
      :no_bid_reason_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of a no bid module.</p>
    # @!attribute reason
    #   <p>The reason description.</p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>The reason code.</p>
    #   @return [Integer]
    # @!attribute pass_through_percentage
    #   <p>The pass through percentage.</p>
    #   @return [Float]
    class NoBidModuleParameters < Struct.new(
      nil,
      :reason,
      :reason_code,
      :pass_through_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of an open RTB attribute module.</p>
    # @!attribute filter_type
    #   <p>The filter type.</p>
    #   @return [String]
    # @!attribute filter_configuration
    #   <p>Describes the configuration of a filter.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute action
    #   <p>Describes a bid action.</p>
    #   @return [Types::Action]
    # @!attribute holdback_percentage
    #   <p>The hold back percentage.</p>
    #   @return [Float]
    class OpenRtbAttributeModuleParameters < Struct.new(
      nil,
      :filter_type,
      :filter_configuration,
      :action,
      :holdback_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair for query string matching in a routing rule condition.</p>
    # @!attribute key
    #   <p>The key of the query string parameter to match. Must contain only RFC 3986 unreserved characters.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the query string parameter to match. Must contain only RFC 3986 unreserved characters.</p>
    #   @return [String]
    class QueryStringKeyValuePair < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the parameters of a rate limit.</p>
    # @!attribute tps
    #   <p>The transactions per second rate limit.</p>
    #   @return [Float]
    class RateLimiterModuleParameters < Struct.new(
      nil,
      :tps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class RejectLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute peer_gateway_id
    #   <p>The unique identifier of the peer gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the link.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the link was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the link was updated.</p>
    #   @return [Time]
    # @!attribute direction
    #   <p>The direction of the link.</p>
    #   @return [String]
    # @!attribute flow_modules
    #   <p>The configuration of flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute pending_flow_modules
    #   <p>The configuration of pending flow modules.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    # @!attribute attributes
    #   <p>Attributes of the link.</p>
    #   @return [Types::LinkAttributes]
    # @!attribute log_settings
    #   <p>Describes the settings for a link log.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute connectivity_type
    #   <p>The connectivity type of the link.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    class RejectLinkResponse < Struct.new(
      nil,
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :log_settings,
      :connectivity_type,
      :link_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because the resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the masking for HTTP error codes.</p>
    # @!attribute http_code
    #   <p>The HTTP error code.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the error..</p>
    #   @return [String]
    # @!attribute logging_types
    #   <p>The error log type.</p>
    #   @return [Array<String>]
    # @!attribute response_logging_percentage
    #   <p>The percentage of response logging.</p>
    #   @return [Float]
    class ResponderErrorMaskingForHttpCode < Struct.new(
      nil,
      :http_code,
      :action,
      :logging_types,
      :response_logging_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conditions for a routing rule. All specified fields must match for the rule to apply (AND logic). At least one condition field must be set.</p>
    # @!attribute host_header
    #   <p>The exact host header value to match.</p>
    #   @return [String]
    # @!attribute host_header_wildcard
    #   <p>A wildcard pattern for host header matching (for example, <code>*.example.com</code>).</p>
    #   @return [String]
    # @!attribute path_prefix
    #   <p>The path prefix to match. The request path must start with this value. Must start with <code>/</code>.</p>
    #   @return [String]
    # @!attribute path_exact
    #   <p>The exact path to match. Must start with <code>/</code>.</p>
    #   @return [String]
    # @!attribute query_string_equals
    #   <p>A query string key-value pair that must be present and match exactly.</p>
    #   @return [Types::QueryStringKeyValuePair]
    # @!attribute query_string_exists
    #   <p>A query string key that must be present in the request (any value is accepted).</p>
    #   @return [String]
    class RuleCondition < Struct.new(
      nil,
      :host_header,
      :host_header_wildcard,
      :path_prefix,
      :path_exact,
      :query_string_equals,
      :query_string_exists,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because you exceeded a service quota.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a trust store.</p>
    # @!attribute certificate_authority_certificates
    #   <p>The certificate authority certificate.</p>
    #   @return [Array<String>]
    class TrustStoreConfiguration < Struct.new(
      nil,
      :certificate_authority_certificates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute modules
    #   <p>The configuration of a module.</p>
    #   @return [Array<Types::ModuleConfiguration>]
    class UpdateLinkModuleFlowRequest < Struct.new(
      nil,
      :client_token,
      :gateway_id,
      :link_id,
      :modules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class UpdateLinkModuleFlowResponse < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute log_settings
    #   <p>Settings for the application logs.</p>
    #   @return [Types::LinkLogSettings]
    # @!attribute timeout_in_millis
    #   <p>The timeout value in milliseconds.</p>
    #   @return [Integer]
    class UpdateLinkRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :log_settings,
      :timeout_in_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class UpdateLinkResponse < Struct.new(
      nil,
      :link_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute link_id
    #   <p>The unique identifier of the link.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The updated priority of the routing rule. Lower numbers are evaluated first. Valid values are 1 to 1000. Priority must be unique among non-deleted rules within a link.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The updated conditions for the routing rule. All specified fields must match for the rule to apply. At least one condition field must be set.</p>
    #   @return [Types::RuleCondition]
    class UpdateLinkRoutingRuleRequest < Struct.new(
      nil,
      :gateway_id,
      :link_id,
      :rule_id,
      :priority,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The unique identifier of the routing rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the routing rule.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the routing rule was last updated.</p>
    #   @return [Time]
    class UpdateLinkRoutingRuleResponse < Struct.new(
      nil,
      :rule_id,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the requester gateway.</p>
    #   @return [String]
    class UpdateRequesterGatewayRequest < Struct.new(
      nil,
      :client_token,
      :gateway_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    class UpdateRequesterGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>Domain name for the responder gateway. This operation does not change the domain name of an existing gateway. To use a different domain name, delete the gateway and create a new one.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Networking port to use. This operation does not change the port of an existing gateway. To use a different port, delete the gateway and create a new one.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>Networking protocol to use. This operation does not change the protocol of an existing gateway. To use a different protocol, delete the gateway and create a new one.</p>
    #   @return [String]
    # @!attribute listener_config
    #   <p>The listener configuration for the responder gateway.</p>
    #   @return [Types::ListenerConfig]
    # @!attribute trust_store_configuration
    #   <p>The configuration of the trust store.</p>
    #   @return [Types::TrustStoreConfiguration]
    # @!attribute managed_endpoint_configuration
    #   <p>The configuration for the managed endpoint.</p>
    #   @return [Types::ManagedEndpointConfiguration]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>clientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description for the responder gateway.</p>
    #   @return [String]
    # @!attribute client_routing_policy
    #   <p>The client routing policy of the gateway. This policy controls which Availability Zones RTB Fabric uses to reach the gateway for the requester gateways that send traffic to it. Valid values are the following:</p> <ul> <li> <p> <code>AVAILABILITY_ZONE_AFFINITY</code>: RTB Fabric routes each requester's traffic to gateway capacity in the requester's own Availability Zone when the gateway has capacity available there. Otherwise, RTB Fabric routes the traffic to gateway capacity in the other Availability Zones of the gateway.</p> </li> <li> <p> <code>ANY_AVAILABILITY_ZONE</code>: RTB Fabric routes each requester's traffic to gateway capacity in every Availability Zone that the subnets of the gateway span. The Availability Zone that the requester is in does not change this.</p> </li> </ul> <p>If you don't specify a value, the gateway keeps its current client routing policy. Changing the policy sets the gateway status to <code>PENDING_UPDATE</code> until the change is complete. RTB Fabric does not support partial Availability Zone affinity, so <code>PARTIAL_AVAILABILITY_ZONE_AFFINITY</code> is not a valid value. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    #   @return [String]
    class UpdateResponderGatewayRequest < Struct.new(
      nil,
      :domain_name,
      :port,
      :protocol,
      :listener_config,
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :client_token,
      :gateway_id,
      :description,
      :client_routing_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the request.</p>
    #   @return [String]
    # @!attribute client_routing_policy
    #   <p>The client routing policy of the gateway. If the operation changed this policy, the gateway uses the new policy after its status returns to <code>ACTIVE</code>. For more information, see <a href="https://docs.aws.amazon.com/rtb-fabric/latest/userguide/working-with-responder-gateways.html#configuring-availability-zone-affinity">Configuring Availability Zone affinity</a> in the <i>Amazon Web Services RTB Fabric User Guide</i>.</p>
    #   @return [String]
    class UpdateResponderGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      :client_routing_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed because it fails satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
