# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PrivateNetworks
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PrivateNetworks::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PrivateNetworks::EndpointParameters`'
      ) do |cfg|
        Aws::PrivateNetworks::EndpointProvider.new
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
          when :acknowledge_order_receipt
            Aws::PrivateNetworks::Endpoints::AcknowledgeOrderReceipt.build(context)
          when :activate_device_identifier
            Aws::PrivateNetworks::Endpoints::ActivateDeviceIdentifier.build(context)
          when :activate_network_site
            Aws::PrivateNetworks::Endpoints::ActivateNetworkSite.build(context)
          when :configure_access_point
            Aws::PrivateNetworks::Endpoints::ConfigureAccessPoint.build(context)
          when :create_network
            Aws::PrivateNetworks::Endpoints::CreateNetwork.build(context)
          when :create_network_site
            Aws::PrivateNetworks::Endpoints::CreateNetworkSite.build(context)
          when :deactivate_device_identifier
            Aws::PrivateNetworks::Endpoints::DeactivateDeviceIdentifier.build(context)
          when :delete_network
            Aws::PrivateNetworks::Endpoints::DeleteNetwork.build(context)
          when :delete_network_site
            Aws::PrivateNetworks::Endpoints::DeleteNetworkSite.build(context)
          when :get_device_identifier
            Aws::PrivateNetworks::Endpoints::GetDeviceIdentifier.build(context)
          when :get_network
            Aws::PrivateNetworks::Endpoints::GetNetwork.build(context)
          when :get_network_resource
            Aws::PrivateNetworks::Endpoints::GetNetworkResource.build(context)
          when :get_network_site
            Aws::PrivateNetworks::Endpoints::GetNetworkSite.build(context)
          when :get_order
            Aws::PrivateNetworks::Endpoints::GetOrder.build(context)
          when :list_device_identifiers
            Aws::PrivateNetworks::Endpoints::ListDeviceIdentifiers.build(context)
          when :list_network_resources
            Aws::PrivateNetworks::Endpoints::ListNetworkResources.build(context)
          when :list_network_sites
            Aws::PrivateNetworks::Endpoints::ListNetworkSites.build(context)
          when :list_networks
            Aws::PrivateNetworks::Endpoints::ListNetworks.build(context)
          when :list_orders
            Aws::PrivateNetworks::Endpoints::ListOrders.build(context)
          when :list_tags_for_resource
            Aws::PrivateNetworks::Endpoints::ListTagsForResource.build(context)
          when :ping
            Aws::PrivateNetworks::Endpoints::Ping.build(context)
          when :start_network_resource_update
            Aws::PrivateNetworks::Endpoints::StartNetworkResourceUpdate.build(context)
          when :tag_resource
            Aws::PrivateNetworks::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PrivateNetworks::Endpoints::UntagResource.build(context)
          when :update_network_site
            Aws::PrivateNetworks::Endpoints::UpdateNetworkSite.build(context)
          when :update_network_site_plan
            Aws::PrivateNetworks::Endpoints::UpdateNetworkSitePlan.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
