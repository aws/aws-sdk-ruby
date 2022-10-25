# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ServiceDiscovery
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ServiceDiscovery::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ServiceDiscovery::EndpointParameters`'
      ) do |cfg|
        Aws::ServiceDiscovery::EndpointProvider.new
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
          when :create_http_namespace
            Aws::ServiceDiscovery::Endpoints::CreateHttpNamespace.build(context)
          when :create_private_dns_namespace
            Aws::ServiceDiscovery::Endpoints::CreatePrivateDnsNamespace.build(context)
          when :create_public_dns_namespace
            Aws::ServiceDiscovery::Endpoints::CreatePublicDnsNamespace.build(context)
          when :create_service
            Aws::ServiceDiscovery::Endpoints::CreateService.build(context)
          when :delete_namespace
            Aws::ServiceDiscovery::Endpoints::DeleteNamespace.build(context)
          when :delete_service
            Aws::ServiceDiscovery::Endpoints::DeleteService.build(context)
          when :deregister_instance
            Aws::ServiceDiscovery::Endpoints::DeregisterInstance.build(context)
          when :discover_instances
            Aws::ServiceDiscovery::Endpoints::DiscoverInstances.build(context)
          when :get_instance
            Aws::ServiceDiscovery::Endpoints::GetInstance.build(context)
          when :get_instances_health_status
            Aws::ServiceDiscovery::Endpoints::GetInstancesHealthStatus.build(context)
          when :get_namespace
            Aws::ServiceDiscovery::Endpoints::GetNamespace.build(context)
          when :get_operation
            Aws::ServiceDiscovery::Endpoints::GetOperation.build(context)
          when :get_service
            Aws::ServiceDiscovery::Endpoints::GetService.build(context)
          when :list_instances
            Aws::ServiceDiscovery::Endpoints::ListInstances.build(context)
          when :list_namespaces
            Aws::ServiceDiscovery::Endpoints::ListNamespaces.build(context)
          when :list_operations
            Aws::ServiceDiscovery::Endpoints::ListOperations.build(context)
          when :list_services
            Aws::ServiceDiscovery::Endpoints::ListServices.build(context)
          when :list_tags_for_resource
            Aws::ServiceDiscovery::Endpoints::ListTagsForResource.build(context)
          when :register_instance
            Aws::ServiceDiscovery::Endpoints::RegisterInstance.build(context)
          when :tag_resource
            Aws::ServiceDiscovery::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::ServiceDiscovery::Endpoints::UntagResource.build(context)
          when :update_http_namespace
            Aws::ServiceDiscovery::Endpoints::UpdateHttpNamespace.build(context)
          when :update_instance_custom_health_status
            Aws::ServiceDiscovery::Endpoints::UpdateInstanceCustomHealthStatus.build(context)
          when :update_private_dns_namespace
            Aws::ServiceDiscovery::Endpoints::UpdatePrivateDnsNamespace.build(context)
          when :update_public_dns_namespace
            Aws::ServiceDiscovery::Endpoints::UpdatePublicDnsNamespace.build(context)
          when :update_service
            Aws::ServiceDiscovery::Endpoints::UpdateService.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
