# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RTBFabric
  module Types

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] log_settings
    #   Settings for the application logs.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/AcceptLinkRequest AWS API Documentation
    #
    class AcceptLinkRequest < Struct.new(
      :gateway_id,
      :link_id,
      :attributes,
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] direction
    #   The direction of the link.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   The configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   The configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/AcceptLinkResponse AWS API Documentation
    #
    class AcceptLinkResponse < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because you do not have sufficient
    # access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a bid action.
    #
    # @note Action is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Action is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Action corresponding to the set member.
    #
    # @!attribute [rw] no_bid
    #   Describes a no bid action.
    #   @return [Types::NoBidAction]
    #
    # @!attribute [rw] header_tag
    #   Describes the header tag for a bid action.
    #   @return [Types::HeaderTagAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/Action AWS API Documentation
    #
    class Action < Struct.new(
      :no_bid,
      :header_tag,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NoBid < Action; end
      class HeaderTag < Action; end
      class Unknown < Action; end
    end

    # Describes the configuration of an auto scaling group.
    #
    # @!attribute [rw] auto_scaling_group_names
    #   The names of the auto scaling group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The role ARN of the auto scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/AutoScalingGroupsConfiguration AWS API Documentation
    #
    class AutoScalingGroupsConfiguration < Struct.new(
      :auto_scaling_group_names,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because of a conflict in the
    # current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] log_settings
    #   Describes the settings for a link log.
    #   @return [Types::LinkLogSettings]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateInboundExternalLinkRequest AWS API Documentation
    #
    class CreateInboundExternalLinkRequest < Struct.new(
      :client_token,
      :gateway_id,
      :attributes,
      :log_settings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateInboundExternalLinkResponse AWS API Documentation
    #
    class CreateInboundExternalLinkResponse < Struct.new(
      :gateway_id,
      :link_id,
      :status,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] http_responder_allowed
    #   Boolean to specify if an HTTP responder is allowed.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_settings
    #   Settings for the application logs.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateLinkRequest AWS API Documentation
    #
    class CreateLinkRequest < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :attributes,
      :http_responder_allowed,
      :tags,
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] direction
    #   The direction of the link.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   The configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   The configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] customer_provided_id
    #   The customer-provided unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateLinkResponse AWS API Documentation
    #
    class CreateLinkResponse < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :link_id,
      :customer_provided_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Describes the attributes of a link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] public_endpoint
    #   The public endpoint of the link.
    #   @return [String]
    #
    # @!attribute [rw] log_settings
    #   Describes the settings for a link log.
    #   @return [Types::LinkLogSettings]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateOutboundExternalLinkRequest AWS API Documentation
    #
    class CreateOutboundExternalLinkRequest < Struct.new(
      :client_token,
      :gateway_id,
      :attributes,
      :public_endpoint,
      :log_settings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateOutboundExternalLinkResponse AWS API Documentation
    #
    class CreateOutboundExternalLinkResponse < Struct.new(
      :gateway_id,
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers of the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the requester gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateRequesterGatewayRequest AWS API Documentation
    #
    class CreateRequesterGatewayRequest < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the requester gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateRequesterGatewayResponse AWS API Documentation
    #
    class CreateRequesterGatewayResponse < Struct.new(
      :gateway_id,
      :domain_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers of the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The domain name for the responder gateway.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The networking port to use.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The networking protocol to use.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_configuration
    #   The configuration of the trust store.
    #   @return [Types::TrustStoreConfiguration]
    #
    # @!attribute [rw] managed_endpoint_configuration
    #   The configuration for the managed endpoint.
    #   @return [Types::ManagedEndpointConfiguration]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the responder gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateResponderGatewayRequest AWS API Documentation
    #
    class CreateResponderGatewayRequest < Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :domain_name,
      :port,
      :protocol,
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :client_token,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/CreateResponderGatewayResponse AWS API Documentation
    #
    class CreateResponderGatewayResponse < Struct.new(
      :gateway_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteInboundExternalLinkRequest AWS API Documentation
    #
    class DeleteInboundExternalLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteInboundExternalLinkResponse AWS API Documentation
    #
    class DeleteInboundExternalLinkResponse < Struct.new(
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteLinkRequest AWS API Documentation
    #
    class DeleteLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteLinkResponse AWS API Documentation
    #
    class DeleteLinkResponse < Struct.new(
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteOutboundExternalLinkRequest AWS API Documentation
    #
    class DeleteOutboundExternalLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteOutboundExternalLinkResponse AWS API Documentation
    #
    class DeleteOutboundExternalLinkResponse < Struct.new(
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteRequesterGatewayRequest AWS API Documentation
    #
    class DeleteRequesterGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteRequesterGatewayResponse AWS API Documentation
    #
    class DeleteRequesterGatewayResponse < Struct.new(
      :gateway_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteResponderGatewayRequest AWS API Documentation
    #
    class DeleteResponderGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/DeleteResponderGatewayResponse AWS API Documentation
    #
    class DeleteResponderGatewayResponse < Struct.new(
      :gateway_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of an Amazon Elastic Kubernetes Service
    # endpoint.
    #
    # @!attribute [rw] endpoints_resource_name
    #   The name of the endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] endpoints_resource_namespace
    #   The namespace of the endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] cluster_api_server_endpoint_uri
    #   The URI of the cluster API server endpoint.
    #   @return [String]
    #
    # @!attribute [rw] cluster_api_server_ca_certificate_chain
    #   The CA certificate chain of the cluster API server.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The role ARN for the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/EksEndpointsConfiguration AWS API Documentation
    #
    class EksEndpointsConfiguration < Struct.new(
      :endpoints_resource_name,
      :endpoints_resource_namespace,
      :cluster_api_server_endpoint_uri,
      :cluster_api_server_ca_certificate_chain,
      :cluster_name,
      :role_arn)
      SENSITIVE = [:cluster_api_server_ca_certificate_chain]
      include Aws::Structure
    end

    # Describes the configuration of a filter.
    #
    # @!attribute [rw] criteria
    #   Describes the criteria for a filter.
    #   @return [Array<Types::FilterCriterion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the criteria for a filter.
    #
    # @!attribute [rw] path
    #   The path to filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/FilterCriterion AWS API Documentation
    #
    class FilterCriterion < Struct.new(
      :path,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetInboundExternalLinkRequest AWS API Documentation
    #
    class GetInboundExternalLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   The configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   The configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the inbound external link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the inbound external link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_settings
    #   Describes the settings for a link log.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetInboundExternalLinkResponse AWS API Documentation
    #
    class GetInboundExternalLinkResponse < Struct.new(
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
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetLinkRequest AWS API Documentation
    #
    class GetLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] direction
    #   The direction of the link.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   The configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   The configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_settings
    #   Settings for the application logs.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetLinkResponse AWS API Documentation
    #
    class GetLinkResponse < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :link_id,
      :tags,
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetOutboundExternalLinkRequest AWS API Documentation
    #
    class GetOutboundExternalLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] public_endpoint
    #   The public endpoint for the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the outbound external link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the outbound external link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] log_settings
    #   Describes the settings for a link log.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetOutboundExternalLinkResponse AWS API Documentation
    #
    class GetOutboundExternalLinkResponse < Struct.new(
      :gateway_id,
      :link_id,
      :status,
      :public_endpoint,
      :created_at,
      :updated_at,
      :tags,
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetRequesterGatewayRequest AWS API Documentation
    #
    class GetRequesterGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the requester gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the requester gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the requester gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the requester gateway was updated.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers of the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] active_links_count
    #   The count of active links for the requester gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] total_links_count
    #   The total count of links for the requester gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetRequesterGatewayResponse AWS API Documentation
    #
    class GetRequesterGatewayResponse < Struct.new(
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
      :total_links_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetResponderGatewayRequest AWS API Documentation
    #
    class GetResponderGatewayRequest < Struct.new(
      :gateway_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The unique identifier of the Virtual Private Cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers of the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the responder gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the responder gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the responder gateway was updated.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the responder gateway.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The networking port.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The networking protocol.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_configuration
    #   The configuration of the trust store.
    #   @return [Types::TrustStoreConfiguration]
    #
    # @!attribute [rw] managed_endpoint_configuration
    #   The configuration of the managed endpoint.
    #   @return [Types::ManagedEndpointConfiguration]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] active_links_count
    #   The count of active links for the responder gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] total_links_count
    #   The total count of links for the responder gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] inbound_links_count
    #   The count of inbound links for the responder gateway.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/GetResponderGatewayResponse AWS API Documentation
    #
    class GetResponderGatewayResponse < Struct.new(
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
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :gateway_id,
      :tags,
      :active_links_count,
      :total_links_count,
      :inbound_links_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the header tag for a bid action.
    #
    # @!attribute [rw] name
    #   The name of the bid action.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the bid action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/HeaderTagAction AWS API Documentation
    #
    class HeaderTagAction < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because of an internal server
    # error. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a link application log.
    #
    # @!attribute [rw] sampling
    #   Describes a link application log sample.
    #   @return [Types::LinkApplicationLogSampling]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/LinkApplicationLogConfiguration AWS API Documentation
    #
    class LinkApplicationLogConfiguration < Struct.new(
      :sampling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a link application log sample.
    #
    # @!attribute [rw] error_log
    #   An error log entry.
    #   @return [Float]
    #
    # @!attribute [rw] filter_log
    #   A filter log entry.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/LinkApplicationLogSampling AWS API Documentation
    #
    class LinkApplicationLogSampling < Struct.new(
      :error_log,
      :filter_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the attributes of a link.
    #
    # @!attribute [rw] responder_error_masking
    #   Describes the masking for HTTP error codes.
    #   @return [Array<Types::ResponderErrorMaskingForHttpCode>]
    #
    # @!attribute [rw] customer_provided_id
    #   The customer-provided unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/LinkAttributes AWS API Documentation
    #
    class LinkAttributes < Struct.new(
      :responder_error_masking,
      :customer_provided_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the settings for a link log.
    #
    # @!attribute [rw] application_logs
    #   Describes the configuration of a link application log.
    #   @return [Types::LinkApplicationLogConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/LinkLogSettings AWS API Documentation
    #
    class LinkLogSettings < Struct.new(
      :application_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListLinksRequest AWS API Documentation
    #
    class ListLinksRequest < Struct.new(
      :gateway_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] links
    #   Information about created links.
    #   @return [Array<Types::ListLinksResponseStructure>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListLinksResponse AWS API Documentation
    #
    class ListLinksResponse < Struct.new(
      :links,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a link.
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] direction
    #   The direction of the link.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   Describes the configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   Describes the configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Describes attributes of a link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListLinksResponseStructure AWS API Documentation
    #
    class ListLinksResponseStructure < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :link_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListRequesterGatewaysRequest AWS API Documentation
    #
    class ListRequesterGatewaysRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_ids
    #   The unique identifier of the gateways.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListRequesterGatewaysResponse AWS API Documentation
    #
    class ListRequesterGatewaysResponse < Struct.new(
      :gateway_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListResponderGatewaysRequest AWS API Documentation
    #
    class ListResponderGatewaysRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_ids
    #   The unique identifier of the gateways.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListResponderGatewaysResponse AWS API Documentation
    #
    class ListResponderGatewaysResponse < Struct.new(
      :gateway_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a managed endpoint.
    #
    # @note ManagedEndpointConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ManagedEndpointConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ManagedEndpointConfiguration corresponding to the set member.
    #
    # @!attribute [rw] auto_scaling_groups
    #   Describes the configuration of an auto scaling group.
    #   @return [Types::AutoScalingGroupsConfiguration]
    #
    # @!attribute [rw] eks_endpoints
    #   Describes the configuration of an Amazon Elastic Kubernetes Service
    #   endpoint.
    #   @return [Types::EksEndpointsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ManagedEndpointConfiguration AWS API Documentation
    #
    class ManagedEndpointConfiguration < Struct.new(
      :auto_scaling_groups,
      :eks_endpoints,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AutoScalingGroups < ManagedEndpointConfiguration; end
      class EksEndpoints < ManagedEndpointConfiguration; end
      class Unknown < ManagedEndpointConfiguration; end
    end

    # Describes the configuration of a module.
    #
    # @!attribute [rw] version
    #   The version of the module.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the module.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   The dependencies of the module.
    #   @return [Array<String>]
    #
    # @!attribute [rw] module_parameters
    #   Describes the parameters of a module.
    #   @return [Types::ModuleParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ModuleConfiguration AWS API Documentation
    #
    class ModuleConfiguration < Struct.new(
      :version,
      :name,
      :depends_on,
      :module_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a module.
    #
    # @note ModuleParameters is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ModuleParameters is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ModuleParameters corresponding to the set member.
    #
    # @!attribute [rw] no_bid
    #   Describes the parameters of a no bid module.
    #   @return [Types::NoBidModuleParameters]
    #
    # @!attribute [rw] open_rtb_attribute
    #   Describes the parameters of an open RTB attribute module.
    #   @return [Types::OpenRtbAttributeModuleParameters]
    #
    # @!attribute [rw] rate_limiter
    #   Describes the parameters of a rate limit.
    #   @return [Types::RateLimiterModuleParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ModuleParameters AWS API Documentation
    #
    class ModuleParameters < Struct.new(
      :no_bid,
      :open_rtb_attribute,
      :rate_limiter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NoBid < ModuleParameters; end
      class OpenRtbAttribute < ModuleParameters; end
      class RateLimiter < ModuleParameters; end
      class Unknown < ModuleParameters; end
    end

    # Describes a no bid action.
    #
    # @!attribute [rw] no_bid_reason_code
    #   The reason code for the no bid action.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/NoBidAction AWS API Documentation
    #
    class NoBidAction < Struct.new(
      :no_bid_reason_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a no bid module.
    #
    # @!attribute [rw] reason
    #   The reason description.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   The reason code.
    #   @return [Integer]
    #
    # @!attribute [rw] pass_through_percentage
    #   The pass through percentage.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/NoBidModuleParameters AWS API Documentation
    #
    class NoBidModuleParameters < Struct.new(
      :reason,
      :reason_code,
      :pass_through_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of an open RTB attribute module.
    #
    # @!attribute [rw] filter_type
    #   The filter type.
    #   @return [String]
    #
    # @!attribute [rw] filter_configuration
    #   Describes the configuration of a filter.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] action
    #   Describes a bid action.
    #   @return [Types::Action]
    #
    # @!attribute [rw] holdback_percentage
    #   The hold back percentage.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/OpenRtbAttributeModuleParameters AWS API Documentation
    #
    class OpenRtbAttributeModuleParameters < Struct.new(
      :filter_type,
      :filter_configuration,
      :action,
      :holdback_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the parameters of a rate limit.
    #
    # @!attribute [rw] tps
    #   The transactions per second rate limit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/RateLimiterModuleParameters AWS API Documentation
    #
    class RateLimiterModuleParameters < Struct.new(
      :tps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/RejectLinkRequest AWS API Documentation
    #
    class RejectLinkRequest < Struct.new(
      :gateway_id,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] peer_gateway_id
    #   The unique identifier of the peer gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the link.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the link was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the link was updated.
    #   @return [Time]
    #
    # @!attribute [rw] direction
    #   The direction of the link.
    #   @return [String]
    #
    # @!attribute [rw] flow_modules
    #   The configuration of flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] pending_flow_modules
    #   The configuration of pending flow modules.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @!attribute [rw] attributes
    #   Attributes of the link.
    #   @return [Types::LinkAttributes]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/RejectLinkResponse AWS API Documentation
    #
    class RejectLinkResponse < Struct.new(
      :gateway_id,
      :peer_gateway_id,
      :status,
      :created_at,
      :updated_at,
      :direction,
      :flow_modules,
      :pending_flow_modules,
      :attributes,
      :link_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because the resource does not
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the masking for HTTP error codes.
    #
    # @!attribute [rw] http_code
    #   The HTTP error code.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action for the error..
    #   @return [String]
    #
    # @!attribute [rw] logging_types
    #   The error log type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] response_logging_percentage
    #   The percentage of response logging.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ResponderErrorMaskingForHttpCode AWS API Documentation
    #
    class ResponderErrorMaskingForHttpCode < Struct.new(
      :http_code,
      :action,
      :logging_types,
      :response_logging_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because you exceeded a service
    # quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a trust store.
    #
    # @!attribute [rw] certificate_authority_certificates
    #   The certificate authority certificate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/TrustStoreConfiguration AWS API Documentation
    #
    class TrustStoreConfiguration < Struct.new(
      :certificate_authority_certificates)
      SENSITIVE = [:certificate_authority_certificates]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to
    #   remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] modules
    #   The configuration of a module.
    #   @return [Array<Types::ModuleConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLinkModuleFlowRequest AWS API Documentation
    #
    class UpdateLinkModuleFlowRequest < Struct.new(
      :client_token,
      :gateway_id,
      :link_id,
      :modules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLinkModuleFlowResponse AWS API Documentation
    #
    class UpdateLinkModuleFlowResponse < Struct.new(
      :gateway_id,
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] log_settings
    #   Settings for the application logs.
    #   @return [Types::LinkLogSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLinkRequest AWS API Documentation
    #
    class UpdateLinkRequest < Struct.new(
      :gateway_id,
      :link_id,
      :log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] link_id
    #   The unique identifier of the link.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateLinkResponse AWS API Documentation
    #
    class UpdateLinkResponse < Struct.new(
      :link_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the requester gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateRequesterGatewayRequest AWS API Documentation
    #
    class UpdateRequesterGatewayRequest < Struct.new(
      :client_token,
      :gateway_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateRequesterGatewayResponse AWS API Documentation
    #
    class UpdateRequesterGatewayResponse < Struct.new(
      :gateway_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name for the responder gateway.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The networking port to use.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The networking protocol to use.
    #   @return [String]
    #
    # @!attribute [rw] trust_store_configuration
    #   The configuration of the trust store.
    #   @return [Types::TrustStoreConfiguration]
    #
    # @!attribute [rw] managed_endpoint_configuration
    #   The configuration for the managed endpoint.
    #   @return [Types::ManagedEndpointConfiguration]
    #
    # @!attribute [rw] client_token
    #   The unique client token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the responder gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateResponderGatewayRequest AWS API Documentation
    #
    class UpdateResponderGatewayRequest < Struct.new(
      :domain_name,
      :port,
      :protocol,
      :trust_store_configuration,
      :managed_endpoint_configuration,
      :client_token,
      :gateway_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/UpdateResponderGatewayResponse AWS API Documentation
    #
    class UpdateResponderGatewayResponse < Struct.new(
      :gateway_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed because it fails satisfy the
    # constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/rtbfabric-2023-05-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

