# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Schemas
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Schemas::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Schemas::EndpointParameters`'
      ) do |cfg|
        Aws::Schemas::EndpointProvider.new
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
          when :create_discoverer
            Aws::Schemas::Endpoints::CreateDiscoverer.build(context)
          when :create_registry
            Aws::Schemas::Endpoints::CreateRegistry.build(context)
          when :create_schema
            Aws::Schemas::Endpoints::CreateSchema.build(context)
          when :delete_discoverer
            Aws::Schemas::Endpoints::DeleteDiscoverer.build(context)
          when :delete_registry
            Aws::Schemas::Endpoints::DeleteRegistry.build(context)
          when :delete_resource_policy
            Aws::Schemas::Endpoints::DeleteResourcePolicy.build(context)
          when :delete_schema
            Aws::Schemas::Endpoints::DeleteSchema.build(context)
          when :delete_schema_version
            Aws::Schemas::Endpoints::DeleteSchemaVersion.build(context)
          when :describe_code_binding
            Aws::Schemas::Endpoints::DescribeCodeBinding.build(context)
          when :describe_discoverer
            Aws::Schemas::Endpoints::DescribeDiscoverer.build(context)
          when :describe_registry
            Aws::Schemas::Endpoints::DescribeRegistry.build(context)
          when :describe_schema
            Aws::Schemas::Endpoints::DescribeSchema.build(context)
          when :get_code_binding_source
            Aws::Schemas::Endpoints::GetCodeBindingSource.build(context)
          when :get_discovered_schema
            Aws::Schemas::Endpoints::GetDiscoveredSchema.build(context)
          when :get_resource_policy
            Aws::Schemas::Endpoints::GetResourcePolicy.build(context)
          when :list_discoverers
            Aws::Schemas::Endpoints::ListDiscoverers.build(context)
          when :list_registries
            Aws::Schemas::Endpoints::ListRegistries.build(context)
          when :list_schema_versions
            Aws::Schemas::Endpoints::ListSchemaVersions.build(context)
          when :list_schemas
            Aws::Schemas::Endpoints::ListSchemas.build(context)
          when :list_tags_for_resource
            Aws::Schemas::Endpoints::ListTagsForResource.build(context)
          when :put_code_binding
            Aws::Schemas::Endpoints::PutCodeBinding.build(context)
          when :put_resource_policy
            Aws::Schemas::Endpoints::PutResourcePolicy.build(context)
          when :search_schemas
            Aws::Schemas::Endpoints::SearchSchemas.build(context)
          when :start_discoverer
            Aws::Schemas::Endpoints::StartDiscoverer.build(context)
          when :stop_discoverer
            Aws::Schemas::Endpoints::StopDiscoverer.build(context)
          when :tag_resource
            Aws::Schemas::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::Schemas::Endpoints::UntagResource.build(context)
          when :update_discoverer
            Aws::Schemas::Endpoints::UpdateDiscoverer.build(context)
          when :update_registry
            Aws::Schemas::Endpoints::UpdateRegistry.build(context)
          when :update_schema
            Aws::Schemas::Endpoints::UpdateSchema.build(context)
          when :export_schema
            Aws::Schemas::Endpoints::ExportSchema.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
