# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::NetworkManager
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::NetworkManager::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::NetworkManager::EndpointParameters`'
      ) do |cfg|
        Aws::NetworkManager::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :accept_attachment
            Aws::NetworkManager::Endpoints::AcceptAttachment.build(context)
          when :associate_connect_peer
            Aws::NetworkManager::Endpoints::AssociateConnectPeer.build(context)
          when :associate_customer_gateway
            Aws::NetworkManager::Endpoints::AssociateCustomerGateway.build(context)
          when :associate_link
            Aws::NetworkManager::Endpoints::AssociateLink.build(context)
          when :associate_transit_gateway_connect_peer
            Aws::NetworkManager::Endpoints::AssociateTransitGatewayConnectPeer.build(context)
          when :create_connect_attachment
            Aws::NetworkManager::Endpoints::CreateConnectAttachment.build(context)
          when :create_connect_peer
            Aws::NetworkManager::Endpoints::CreateConnectPeer.build(context)
          when :create_connection
            Aws::NetworkManager::Endpoints::CreateConnection.build(context)
          when :create_core_network
            Aws::NetworkManager::Endpoints::CreateCoreNetwork.build(context)
          when :create_device
            Aws::NetworkManager::Endpoints::CreateDevice.build(context)
          when :create_global_network
            Aws::NetworkManager::Endpoints::CreateGlobalNetwork.build(context)
          when :create_link
            Aws::NetworkManager::Endpoints::CreateLink.build(context)
          when :create_site
            Aws::NetworkManager::Endpoints::CreateSite.build(context)
          when :create_site_to_site_vpn_attachment
            Aws::NetworkManager::Endpoints::CreateSiteToSiteVpnAttachment.build(context)
          when :create_transit_gateway_peering
            Aws::NetworkManager::Endpoints::CreateTransitGatewayPeering.build(context)
          when :create_transit_gateway_route_table_attachment
            Aws::NetworkManager::Endpoints::CreateTransitGatewayRouteTableAttachment.build(context)
          when :create_vpc_attachment
            Aws::NetworkManager::Endpoints::CreateVpcAttachment.build(context)
          when :delete_attachment
            Aws::NetworkManager::Endpoints::DeleteAttachment.build(context)
          when :delete_connect_peer
            Aws::NetworkManager::Endpoints::DeleteConnectPeer.build(context)
          when :delete_connection
            Aws::NetworkManager::Endpoints::DeleteConnection.build(context)
          when :delete_core_network
            Aws::NetworkManager::Endpoints::DeleteCoreNetwork.build(context)
          when :delete_core_network_policy_version
            Aws::NetworkManager::Endpoints::DeleteCoreNetworkPolicyVersion.build(context)
          when :delete_device
            Aws::NetworkManager::Endpoints::DeleteDevice.build(context)
          when :delete_global_network
            Aws::NetworkManager::Endpoints::DeleteGlobalNetwork.build(context)
          when :delete_link
            Aws::NetworkManager::Endpoints::DeleteLink.build(context)
          when :delete_peering
            Aws::NetworkManager::Endpoints::DeletePeering.build(context)
          when :delete_resource_policy
            Aws::NetworkManager::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_site
            Aws::NetworkManager::Endpoints::DeleteSite.build(context)
          when :deregister_transit_gateway
            Aws::NetworkManager::Endpoints::DeregisterTransitGateway.build(context)
          when :describe_global_networks
            Aws::NetworkManager::Endpoints::DescribeGlobalNetworks.build(context)
          when :disassociate_connect_peer
            Aws::NetworkManager::Endpoints::DisassociateConnectPeer.build(context)
          when :disassociate_customer_gateway
            Aws::NetworkManager::Endpoints::DisassociateCustomerGateway.build(context)
          when :disassociate_link
            Aws::NetworkManager::Endpoints::DisassociateLink.build(context)
          when :disassociate_transit_gateway_connect_peer
            Aws::NetworkManager::Endpoints::DisassociateTransitGatewayConnectPeer.build(context)
          when :execute_core_network_change_set
            Aws::NetworkManager::Endpoints::ExecuteCoreNetworkChangeSet.build(context)
          when :get_connect_attachment
            Aws::NetworkManager::Endpoints::GetConnectAttachment.build(context)
          when :get_connect_peer
            Aws::NetworkManager::Endpoints::GetConnectPeer.build(context)
          when :get_connect_peer_associations
            Aws::NetworkManager::Endpoints::GetConnectPeerAssociations.build(context)
          when :get_connections
            Aws::NetworkManager::Endpoints::GetConnections.build(context)
          when :get_core_network
            Aws::NetworkManager::Endpoints::GetCoreNetwork.build(context)
          when :get_core_network_change_events
            Aws::NetworkManager::Endpoints::GetCoreNetworkChangeEvents.build(context)
          when :get_core_network_change_set
            Aws::NetworkManager::Endpoints::GetCoreNetworkChangeSet.build(context)
          when :get_core_network_policy
            Aws::NetworkManager::Endpoints::GetCoreNetworkPolicy.build(context)
          when :get_customer_gateway_associations
            Aws::NetworkManager::Endpoints::GetCustomerGatewayAssociations.build(context)
          when :get_devices
            Aws::NetworkManager::Endpoints::GetDevices.build(context)
          when :get_link_associations
            Aws::NetworkManager::Endpoints::GetLinkAssociations.build(context)
          when :get_links
            Aws::NetworkManager::Endpoints::GetLinks.build(context)
          when :get_network_resource_counts
            Aws::NetworkManager::Endpoints::GetNetworkResourceCounts.build(context)
          when :get_network_resource_relationships
            Aws::NetworkManager::Endpoints::GetNetworkResourceRelationships.build(context)
          when :get_network_resources
            Aws::NetworkManager::Endpoints::GetNetworkResources.build(context)
          when :get_network_routes
            Aws::NetworkManager::Endpoints::GetNetworkRoutes.build(context)
          when :get_network_telemetry
            Aws::NetworkManager::Endpoints::GetNetworkTelemetry.build(context)
          when :get_resource_policy
            Aws::NetworkManager::Endpoints::GetResourcePolicy.build(context)
          when :get_route_analysis
            Aws::NetworkManager::Endpoints::GetRouteAnalysis.build(context)
          when :get_site_to_site_vpn_attachment
            Aws::NetworkManager::Endpoints::GetSiteToSiteVpnAttachment.build(context)
          when :get_sites
            Aws::NetworkManager::Endpoints::GetSites.build(context)
          when :get_transit_gateway_connect_peer_associations
            Aws::NetworkManager::Endpoints::GetTransitGatewayConnectPeerAssociations.build(context)
          when :get_transit_gateway_peering
            Aws::NetworkManager::Endpoints::GetTransitGatewayPeering.build(context)
          when :get_transit_gateway_registrations
            Aws::NetworkManager::Endpoints::GetTransitGatewayRegistrations.build(context)
          when :get_transit_gateway_route_table_attachment
            Aws::NetworkManager::Endpoints::GetTransitGatewayRouteTableAttachment.build(context)
          when :get_vpc_attachment
            Aws::NetworkManager::Endpoints::GetVpcAttachment.build(context)
          when :list_attachments
            Aws::NetworkManager::Endpoints::ListAttachments.build(context)
          when :list_connect_peers
            Aws::NetworkManager::Endpoints::ListConnectPeers.build(context)
          when :list_core_network_policy_versions
            Aws::NetworkManager::Endpoints::ListCoreNetworkPolicyVersions.build(context)
          when :list_core_networks
            Aws::NetworkManager::Endpoints::ListCoreNetworks.build(context)
          when :list_organization_service_access_status
            Aws::NetworkManager::Endpoints::ListOrganizationServiceAccessStatus.build(context)
          when :list_peerings
            Aws::NetworkManager::Endpoints::ListPeerings.build(context)
          when :list_tags_for_resource
            Aws::NetworkManager::Endpoints::ListTagsForResource.build(context)
          when :put_core_network_policy
            Aws::NetworkManager::Endpoints::PutCoreNetworkPolicy.build(context)
          when :put_resource_policy
            Aws::NetworkManager::Endpoints::PutResourcePolicy.build(context)
          when :register_transit_gateway
            Aws::NetworkManager::Endpoints::RegisterTransitGateway.build(context)
          when :reject_attachment
            Aws::NetworkManager::Endpoints::RejectAttachment.build(context)
          when :restore_core_network_policy_version
            Aws::NetworkManager::Endpoints::RestoreCoreNetworkPolicyVersion.build(context)
          when :start_organization_service_access_update
            Aws::NetworkManager::Endpoints::StartOrganizationServiceAccessUpdate.build(context)
          when :start_route_analysis
            Aws::NetworkManager::Endpoints::StartRouteAnalysis.build(context)
          when :tag_resource
            Aws::NetworkManager::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::NetworkManager::Endpoints::UntagResource.build(context)
          when :update_connection
            Aws::NetworkManager::Endpoints::UpdateConnection.build(context)
          when :update_core_network
            Aws::NetworkManager::Endpoints::UpdateCoreNetwork.build(context)
          when :update_device
            Aws::NetworkManager::Endpoints::UpdateDevice.build(context)
          when :update_global_network
            Aws::NetworkManager::Endpoints::UpdateGlobalNetwork.build(context)
          when :update_link
            Aws::NetworkManager::Endpoints::UpdateLink.build(context)
          when :update_network_resource_metadata
            Aws::NetworkManager::Endpoints::UpdateNetworkResourceMetadata.build(context)
          when :update_site
            Aws::NetworkManager::Endpoints::UpdateSite.build(context)
          when :update_vpc_attachment
            Aws::NetworkManager::Endpoints::UpdateVpcAttachment.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
