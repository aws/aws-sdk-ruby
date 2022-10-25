# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppMesh
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppMesh::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppMesh::EndpointParameters`'
      ) do |cfg|
        Aws::AppMesh::EndpointProvider.new
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
          when :create_gateway_route
            Aws::AppMesh::Endpoints::CreateGatewayRoute.build(context)
          when :create_mesh
            Aws::AppMesh::Endpoints::CreateMesh.build(context)
          when :create_route
            Aws::AppMesh::Endpoints::CreateRoute.build(context)
          when :create_virtual_gateway
            Aws::AppMesh::Endpoints::CreateVirtualGateway.build(context)
          when :create_virtual_node
            Aws::AppMesh::Endpoints::CreateVirtualNode.build(context)
          when :create_virtual_router
            Aws::AppMesh::Endpoints::CreateVirtualRouter.build(context)
          when :create_virtual_service
            Aws::AppMesh::Endpoints::CreateVirtualService.build(context)
          when :delete_gateway_route
            Aws::AppMesh::Endpoints::DeleteGatewayRoute.build(context)
          when :delete_mesh
            Aws::AppMesh::Endpoints::DeleteMesh.build(context)
          when :delete_route
            Aws::AppMesh::Endpoints::DeleteRoute.build(context)
          when :delete_virtual_gateway
            Aws::AppMesh::Endpoints::DeleteVirtualGateway.build(context)
          when :delete_virtual_node
            Aws::AppMesh::Endpoints::DeleteVirtualNode.build(context)
          when :delete_virtual_router
            Aws::AppMesh::Endpoints::DeleteVirtualRouter.build(context)
          when :delete_virtual_service
            Aws::AppMesh::Endpoints::DeleteVirtualService.build(context)
          when :describe_gateway_route
            Aws::AppMesh::Endpoints::DescribeGatewayRoute.build(context)
          when :describe_mesh
            Aws::AppMesh::Endpoints::DescribeMesh.build(context)
          when :describe_route
            Aws::AppMesh::Endpoints::DescribeRoute.build(context)
          when :describe_virtual_gateway
            Aws::AppMesh::Endpoints::DescribeVirtualGateway.build(context)
          when :describe_virtual_node
            Aws::AppMesh::Endpoints::DescribeVirtualNode.build(context)
          when :describe_virtual_router
            Aws::AppMesh::Endpoints::DescribeVirtualRouter.build(context)
          when :describe_virtual_service
            Aws::AppMesh::Endpoints::DescribeVirtualService.build(context)
          when :list_gateway_routes
            Aws::AppMesh::Endpoints::ListGatewayRoutes.build(context)
          when :list_meshes
            Aws::AppMesh::Endpoints::ListMeshes.build(context)
          when :list_routes
            Aws::AppMesh::Endpoints::ListRoutes.build(context)
          when :list_tags_for_resource
            Aws::AppMesh::Endpoints::ListTagsForResource.build(context)
          when :list_virtual_gateways
            Aws::AppMesh::Endpoints::ListVirtualGateways.build(context)
          when :list_virtual_nodes
            Aws::AppMesh::Endpoints::ListVirtualNodes.build(context)
          when :list_virtual_routers
            Aws::AppMesh::Endpoints::ListVirtualRouters.build(context)
          when :list_virtual_services
            Aws::AppMesh::Endpoints::ListVirtualServices.build(context)
          when :tag_resource
            Aws::AppMesh::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppMesh::Endpoints::UntagResource.build(context)
          when :update_gateway_route
            Aws::AppMesh::Endpoints::UpdateGatewayRoute.build(context)
          when :update_mesh
            Aws::AppMesh::Endpoints::UpdateMesh.build(context)
          when :update_route
            Aws::AppMesh::Endpoints::UpdateRoute.build(context)
          when :update_virtual_gateway
            Aws::AppMesh::Endpoints::UpdateVirtualGateway.build(context)
          when :update_virtual_node
            Aws::AppMesh::Endpoints::UpdateVirtualNode.build(context)
          when :update_virtual_router
            Aws::AppMesh::Endpoints::UpdateVirtualRouter.build(context)
          when :update_virtual_service
            Aws::AppMesh::Endpoints::UpdateVirtualService.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
