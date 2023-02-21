# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Tnb
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Tnb::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Tnb::EndpointParameters`'
      ) do |cfg|
        Aws::Tnb::EndpointProvider.new
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
          when :cancel_sol_network_operation
            Aws::Tnb::Endpoints::CancelSolNetworkOperation.build(context)
          when :create_sol_function_package
            Aws::Tnb::Endpoints::CreateSolFunctionPackage.build(context)
          when :create_sol_network_instance
            Aws::Tnb::Endpoints::CreateSolNetworkInstance.build(context)
          when :create_sol_network_package
            Aws::Tnb::Endpoints::CreateSolNetworkPackage.build(context)
          when :delete_sol_function_package
            Aws::Tnb::Endpoints::DeleteSolFunctionPackage.build(context)
          when :delete_sol_network_instance
            Aws::Tnb::Endpoints::DeleteSolNetworkInstance.build(context)
          when :delete_sol_network_package
            Aws::Tnb::Endpoints::DeleteSolNetworkPackage.build(context)
          when :get_sol_function_instance
            Aws::Tnb::Endpoints::GetSolFunctionInstance.build(context)
          when :get_sol_function_package
            Aws::Tnb::Endpoints::GetSolFunctionPackage.build(context)
          when :get_sol_function_package_content
            Aws::Tnb::Endpoints::GetSolFunctionPackageContent.build(context)
          when :get_sol_function_package_descriptor
            Aws::Tnb::Endpoints::GetSolFunctionPackageDescriptor.build(context)
          when :get_sol_network_instance
            Aws::Tnb::Endpoints::GetSolNetworkInstance.build(context)
          when :get_sol_network_operation
            Aws::Tnb::Endpoints::GetSolNetworkOperation.build(context)
          when :get_sol_network_package
            Aws::Tnb::Endpoints::GetSolNetworkPackage.build(context)
          when :get_sol_network_package_content
            Aws::Tnb::Endpoints::GetSolNetworkPackageContent.build(context)
          when :get_sol_network_package_descriptor
            Aws::Tnb::Endpoints::GetSolNetworkPackageDescriptor.build(context)
          when :instantiate_sol_network_instance
            Aws::Tnb::Endpoints::InstantiateSolNetworkInstance.build(context)
          when :list_sol_function_instances
            Aws::Tnb::Endpoints::ListSolFunctionInstances.build(context)
          when :list_sol_function_packages
            Aws::Tnb::Endpoints::ListSolFunctionPackages.build(context)
          when :list_sol_network_instances
            Aws::Tnb::Endpoints::ListSolNetworkInstances.build(context)
          when :list_sol_network_operations
            Aws::Tnb::Endpoints::ListSolNetworkOperations.build(context)
          when :list_sol_network_packages
            Aws::Tnb::Endpoints::ListSolNetworkPackages.build(context)
          when :list_tags_for_resource
            Aws::Tnb::Endpoints::ListTagsForResource.build(context)
          when :put_sol_function_package_content
            Aws::Tnb::Endpoints::PutSolFunctionPackageContent.build(context)
          when :put_sol_network_package_content
            Aws::Tnb::Endpoints::PutSolNetworkPackageContent.build(context)
          when :tag_resource
            Aws::Tnb::Endpoints::TagResource.build(context)
          when :terminate_sol_network_instance
            Aws::Tnb::Endpoints::TerminateSolNetworkInstance.build(context)
          when :untag_resource
            Aws::Tnb::Endpoints::UntagResource.build(context)
          when :update_sol_function_package
            Aws::Tnb::Endpoints::UpdateSolFunctionPackage.build(context)
          when :update_sol_network_instance
            Aws::Tnb::Endpoints::UpdateSolNetworkInstance.build(context)
          when :update_sol_network_package
            Aws::Tnb::Endpoints::UpdateSolNetworkPackage.build(context)
          when :validate_sol_function_package_content
            Aws::Tnb::Endpoints::ValidateSolFunctionPackageContent.build(context)
          when :validate_sol_network_package_content
            Aws::Tnb::Endpoints::ValidateSolNetworkPackageContent.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
