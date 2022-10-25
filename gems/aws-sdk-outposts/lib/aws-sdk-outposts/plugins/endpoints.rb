# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Outposts
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Outposts::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Outposts::EndpointParameters`'
      ) do |cfg|
        Aws::Outposts::EndpointProvider.new
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
          when :cancel_order
            Aws::Outposts::Endpoints::CancelOrder.build(context)
          when :create_order
            Aws::Outposts::Endpoints::CreateOrder.build(context)
          when :create_outpost
            Aws::Outposts::Endpoints::CreateOutpost.build(context)
          when :create_site
            Aws::Outposts::Endpoints::CreateSite.build(context)
          when :delete_outpost
            Aws::Outposts::Endpoints::DeleteOutpost.build(context)
          when :delete_site
            Aws::Outposts::Endpoints::DeleteSite.build(context)
          when :get_catalog_item
            Aws::Outposts::Endpoints::GetCatalogItem.build(context)
          when :get_connection
            Aws::Outposts::Endpoints::GetConnection.build(context)
          when :get_order
            Aws::Outposts::Endpoints::GetOrder.build(context)
          when :get_outpost
            Aws::Outposts::Endpoints::GetOutpost.build(context)
          when :get_outpost_instance_types
            Aws::Outposts::Endpoints::GetOutpostInstanceTypes.build(context)
          when :get_site
            Aws::Outposts::Endpoints::GetSite.build(context)
          when :get_site_address
            Aws::Outposts::Endpoints::GetSiteAddress.build(context)
          when :list_assets
            Aws::Outposts::Endpoints::ListAssets.build(context)
          when :list_catalog_items
            Aws::Outposts::Endpoints::ListCatalogItems.build(context)
          when :list_orders
            Aws::Outposts::Endpoints::ListOrders.build(context)
          when :list_outposts
            Aws::Outposts::Endpoints::ListOutposts.build(context)
          when :list_sites
            Aws::Outposts::Endpoints::ListSites.build(context)
          when :list_tags_for_resource
            Aws::Outposts::Endpoints::ListTagsForResource.build(context)
          when :start_connection
            Aws::Outposts::Endpoints::StartConnection.build(context)
          when :tag_resource
            Aws::Outposts::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Outposts::Endpoints::UntagResource.build(context)
          when :update_outpost
            Aws::Outposts::Endpoints::UpdateOutpost.build(context)
          when :update_site
            Aws::Outposts::Endpoints::UpdateSite.build(context)
          when :update_site_address
            Aws::Outposts::Endpoints::UpdateSiteAddress.build(context)
          when :update_site_rack_physical_properties
            Aws::Outposts::Endpoints::UpdateSiteRackPhysicalProperties.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
