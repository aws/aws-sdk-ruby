# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DirectConnect
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DirectConnect::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DirectConnect::EndpointParameters`'
      ) do |cfg|
        Aws::DirectConnect::EndpointProvider.new
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
          when :accept_direct_connect_gateway_association_proposal
            Aws::DirectConnect::Endpoints::AcceptDirectConnectGatewayAssociationProposal.build(context)
          when :allocate_connection_on_interconnect
            Aws::DirectConnect::Endpoints::AllocateConnectionOnInterconnect.build(context)
          when :allocate_hosted_connection
            Aws::DirectConnect::Endpoints::AllocateHostedConnection.build(context)
          when :allocate_private_virtual_interface
            Aws::DirectConnect::Endpoints::AllocatePrivateVirtualInterface.build(context)
          when :allocate_public_virtual_interface
            Aws::DirectConnect::Endpoints::AllocatePublicVirtualInterface.build(context)
          when :allocate_transit_virtual_interface
            Aws::DirectConnect::Endpoints::AllocateTransitVirtualInterface.build(context)
          when :associate_connection_with_lag
            Aws::DirectConnect::Endpoints::AssociateConnectionWithLag.build(context)
          when :associate_hosted_connection
            Aws::DirectConnect::Endpoints::AssociateHostedConnection.build(context)
          when :associate_mac_sec_key
            Aws::DirectConnect::Endpoints::AssociateMacSecKey.build(context)
          when :associate_virtual_interface
            Aws::DirectConnect::Endpoints::AssociateVirtualInterface.build(context)
          when :confirm_connection
            Aws::DirectConnect::Endpoints::ConfirmConnection.build(context)
          when :confirm_customer_agreement
            Aws::DirectConnect::Endpoints::ConfirmCustomerAgreement.build(context)
          when :confirm_private_virtual_interface
            Aws::DirectConnect::Endpoints::ConfirmPrivateVirtualInterface.build(context)
          when :confirm_public_virtual_interface
            Aws::DirectConnect::Endpoints::ConfirmPublicVirtualInterface.build(context)
          when :confirm_transit_virtual_interface
            Aws::DirectConnect::Endpoints::ConfirmTransitVirtualInterface.build(context)
          when :create_bgp_peer
            Aws::DirectConnect::Endpoints::CreateBGPPeer.build(context)
          when :create_connection
            Aws::DirectConnect::Endpoints::CreateConnection.build(context)
          when :create_direct_connect_gateway
            Aws::DirectConnect::Endpoints::CreateDirectConnectGateway.build(context)
          when :create_direct_connect_gateway_association
            Aws::DirectConnect::Endpoints::CreateDirectConnectGatewayAssociation.build(context)
          when :create_direct_connect_gateway_association_proposal
            Aws::DirectConnect::Endpoints::CreateDirectConnectGatewayAssociationProposal.build(context)
          when :create_interconnect
            Aws::DirectConnect::Endpoints::CreateInterconnect.build(context)
          when :create_lag
            Aws::DirectConnect::Endpoints::CreateLag.build(context)
          when :create_private_virtual_interface
            Aws::DirectConnect::Endpoints::CreatePrivateVirtualInterface.build(context)
          when :create_public_virtual_interface
            Aws::DirectConnect::Endpoints::CreatePublicVirtualInterface.build(context)
          when :create_transit_virtual_interface
            Aws::DirectConnect::Endpoints::CreateTransitVirtualInterface.build(context)
          when :delete_bgp_peer
            Aws::DirectConnect::Endpoints::DeleteBGPPeer.build(context)
          when :delete_connection
            Aws::DirectConnect::Endpoints::DeleteConnection.build(context)
          when :delete_direct_connect_gateway
            Aws::DirectConnect::Endpoints::DeleteDirectConnectGateway.build(context)
          when :delete_direct_connect_gateway_association
            Aws::DirectConnect::Endpoints::DeleteDirectConnectGatewayAssociation.build(context)
          when :delete_direct_connect_gateway_association_proposal
            Aws::DirectConnect::Endpoints::DeleteDirectConnectGatewayAssociationProposal.build(context)
          when :delete_interconnect
            Aws::DirectConnect::Endpoints::DeleteInterconnect.build(context)
          when :delete_lag
            Aws::DirectConnect::Endpoints::DeleteLag.build(context)
          when :delete_virtual_interface
            Aws::DirectConnect::Endpoints::DeleteVirtualInterface.build(context)
          when :describe_connection_loa
            Aws::DirectConnect::Endpoints::DescribeConnectionLoa.build(context)
          when :describe_connections
            Aws::DirectConnect::Endpoints::DescribeConnections.build(context)
          when :describe_connections_on_interconnect
            Aws::DirectConnect::Endpoints::DescribeConnectionsOnInterconnect.build(context)
          when :describe_customer_metadata
            Aws::DirectConnect::Endpoints::DescribeCustomerMetadata.build(context)
          when :describe_direct_connect_gateway_association_proposals
            Aws::DirectConnect::Endpoints::DescribeDirectConnectGatewayAssociationProposals.build(context)
          when :describe_direct_connect_gateway_associations
            Aws::DirectConnect::Endpoints::DescribeDirectConnectGatewayAssociations.build(context)
          when :describe_direct_connect_gateway_attachments
            Aws::DirectConnect::Endpoints::DescribeDirectConnectGatewayAttachments.build(context)
          when :describe_direct_connect_gateways
            Aws::DirectConnect::Endpoints::DescribeDirectConnectGateways.build(context)
          when :describe_hosted_connections
            Aws::DirectConnect::Endpoints::DescribeHostedConnections.build(context)
          when :describe_interconnect_loa
            Aws::DirectConnect::Endpoints::DescribeInterconnectLoa.build(context)
          when :describe_interconnects
            Aws::DirectConnect::Endpoints::DescribeInterconnects.build(context)
          when :describe_lags
            Aws::DirectConnect::Endpoints::DescribeLags.build(context)
          when :describe_loa
            Aws::DirectConnect::Endpoints::DescribeLoa.build(context)
          when :describe_locations
            Aws::DirectConnect::Endpoints::DescribeLocations.build(context)
          when :describe_router_configuration
            Aws::DirectConnect::Endpoints::DescribeRouterConfiguration.build(context)
          when :describe_tags
            Aws::DirectConnect::Endpoints::DescribeTags.build(context)
          when :describe_virtual_gateways
            Aws::DirectConnect::Endpoints::DescribeVirtualGateways.build(context)
          when :describe_virtual_interfaces
            Aws::DirectConnect::Endpoints::DescribeVirtualInterfaces.build(context)
          when :disassociate_connection_from_lag
            Aws::DirectConnect::Endpoints::DisassociateConnectionFromLag.build(context)
          when :disassociate_mac_sec_key
            Aws::DirectConnect::Endpoints::DisassociateMacSecKey.build(context)
          when :list_virtual_interface_test_history
            Aws::DirectConnect::Endpoints::ListVirtualInterfaceTestHistory.build(context)
          when :start_bgp_failover_test
            Aws::DirectConnect::Endpoints::StartBgpFailoverTest.build(context)
          when :stop_bgp_failover_test
            Aws::DirectConnect::Endpoints::StopBgpFailoverTest.build(context)
          when :tag_resource
            Aws::DirectConnect::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::DirectConnect::Endpoints::UntagResource.build(context)
          when :update_connection
            Aws::DirectConnect::Endpoints::UpdateConnection.build(context)
          when :update_direct_connect_gateway
            Aws::DirectConnect::Endpoints::UpdateDirectConnectGateway.build(context)
          when :update_direct_connect_gateway_association
            Aws::DirectConnect::Endpoints::UpdateDirectConnectGatewayAssociation.build(context)
          when :update_lag
            Aws::DirectConnect::Endpoints::UpdateLag.build(context)
          when :update_virtual_interface_attributes
            Aws::DirectConnect::Endpoints::UpdateVirtualInterfaceAttributes.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
