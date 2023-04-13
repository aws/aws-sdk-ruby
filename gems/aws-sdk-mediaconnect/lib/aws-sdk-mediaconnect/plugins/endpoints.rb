# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaConnect
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaConnect::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaConnect::EndpointParameters`'
      ) do |cfg|
        Aws::MediaConnect::EndpointProvider.new
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
          when :add_bridge_outputs
            Aws::MediaConnect::Endpoints::AddBridgeOutputs.build(context)
          when :add_bridge_sources
            Aws::MediaConnect::Endpoints::AddBridgeSources.build(context)
          when :add_flow_media_streams
            Aws::MediaConnect::Endpoints::AddFlowMediaStreams.build(context)
          when :add_flow_outputs
            Aws::MediaConnect::Endpoints::AddFlowOutputs.build(context)
          when :add_flow_sources
            Aws::MediaConnect::Endpoints::AddFlowSources.build(context)
          when :add_flow_vpc_interfaces
            Aws::MediaConnect::Endpoints::AddFlowVpcInterfaces.build(context)
          when :create_bridge
            Aws::MediaConnect::Endpoints::CreateBridge.build(context)
          when :create_flow
            Aws::MediaConnect::Endpoints::CreateFlow.build(context)
          when :create_gateway
            Aws::MediaConnect::Endpoints::CreateGateway.build(context)
          when :delete_bridge
            Aws::MediaConnect::Endpoints::DeleteBridge.build(context)
          when :delete_flow
            Aws::MediaConnect::Endpoints::DeleteFlow.build(context)
          when :delete_gateway
            Aws::MediaConnect::Endpoints::DeleteGateway.build(context)
          when :deregister_gateway_instance
            Aws::MediaConnect::Endpoints::DeregisterGatewayInstance.build(context)
          when :describe_bridge
            Aws::MediaConnect::Endpoints::DescribeBridge.build(context)
          when :describe_flow
            Aws::MediaConnect::Endpoints::DescribeFlow.build(context)
          when :describe_gateway
            Aws::MediaConnect::Endpoints::DescribeGateway.build(context)
          when :describe_gateway_instance
            Aws::MediaConnect::Endpoints::DescribeGatewayInstance.build(context)
          when :describe_offering
            Aws::MediaConnect::Endpoints::DescribeOffering.build(context)
          when :describe_reservation
            Aws::MediaConnect::Endpoints::DescribeReservation.build(context)
          when :grant_flow_entitlements
            Aws::MediaConnect::Endpoints::GrantFlowEntitlements.build(context)
          when :list_bridges
            Aws::MediaConnect::Endpoints::ListBridges.build(context)
          when :list_entitlements
            Aws::MediaConnect::Endpoints::ListEntitlements.build(context)
          when :list_flows
            Aws::MediaConnect::Endpoints::ListFlows.build(context)
          when :list_gateway_instances
            Aws::MediaConnect::Endpoints::ListGatewayInstances.build(context)
          when :list_gateways
            Aws::MediaConnect::Endpoints::ListGateways.build(context)
          when :list_offerings
            Aws::MediaConnect::Endpoints::ListOfferings.build(context)
          when :list_reservations
            Aws::MediaConnect::Endpoints::ListReservations.build(context)
          when :list_tags_for_resource
            Aws::MediaConnect::Endpoints::ListTagsForResource.build(context)
          when :purchase_offering
            Aws::MediaConnect::Endpoints::PurchaseOffering.build(context)
          when :remove_bridge_output
            Aws::MediaConnect::Endpoints::RemoveBridgeOutput.build(context)
          when :remove_bridge_source
            Aws::MediaConnect::Endpoints::RemoveBridgeSource.build(context)
          when :remove_flow_media_stream
            Aws::MediaConnect::Endpoints::RemoveFlowMediaStream.build(context)
          when :remove_flow_output
            Aws::MediaConnect::Endpoints::RemoveFlowOutput.build(context)
          when :remove_flow_source
            Aws::MediaConnect::Endpoints::RemoveFlowSource.build(context)
          when :remove_flow_vpc_interface
            Aws::MediaConnect::Endpoints::RemoveFlowVpcInterface.build(context)
          when :revoke_flow_entitlement
            Aws::MediaConnect::Endpoints::RevokeFlowEntitlement.build(context)
          when :start_flow
            Aws::MediaConnect::Endpoints::StartFlow.build(context)
          when :stop_flow
            Aws::MediaConnect::Endpoints::StopFlow.build(context)
          when :tag_resource
            Aws::MediaConnect::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::MediaConnect::Endpoints::UntagResource.build(context)
          when :update_bridge
            Aws::MediaConnect::Endpoints::UpdateBridge.build(context)
          when :update_bridge_output
            Aws::MediaConnect::Endpoints::UpdateBridgeOutput.build(context)
          when :update_bridge_source
            Aws::MediaConnect::Endpoints::UpdateBridgeSource.build(context)
          when :update_bridge_state
            Aws::MediaConnect::Endpoints::UpdateBridgeState.build(context)
          when :update_flow
            Aws::MediaConnect::Endpoints::UpdateFlow.build(context)
          when :update_flow_entitlement
            Aws::MediaConnect::Endpoints::UpdateFlowEntitlement.build(context)
          when :update_flow_media_stream
            Aws::MediaConnect::Endpoints::UpdateFlowMediaStream.build(context)
          when :update_flow_output
            Aws::MediaConnect::Endpoints::UpdateFlowOutput.build(context)
          when :update_flow_source
            Aws::MediaConnect::Endpoints::UpdateFlowSource.build(context)
          when :update_gateway_instance
            Aws::MediaConnect::Endpoints::UpdateGatewayInstance.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
