# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SsmSap
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::SsmSap::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::SsmSap::EndpointParameters`'
      ) do |cfg|
        Aws::SsmSap::EndpointProvider.new
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
          when :delete_resource_permission
            Aws::SsmSap::Endpoints::DeleteResourcePermission.build(context)
          when :deregister_application
            Aws::SsmSap::Endpoints::DeregisterApplication.build(context)
          when :get_application
            Aws::SsmSap::Endpoints::GetApplication.build(context)
          when :get_component
            Aws::SsmSap::Endpoints::GetComponent.build(context)
          when :get_database
            Aws::SsmSap::Endpoints::GetDatabase.build(context)
          when :get_operation
            Aws::SsmSap::Endpoints::GetOperation.build(context)
          when :get_resource_permission
            Aws::SsmSap::Endpoints::GetResourcePermission.build(context)
          when :list_applications
            Aws::SsmSap::Endpoints::ListApplications.build(context)
          when :list_components
            Aws::SsmSap::Endpoints::ListComponents.build(context)
          when :list_databases
            Aws::SsmSap::Endpoints::ListDatabases.build(context)
          when :list_operations
            Aws::SsmSap::Endpoints::ListOperations.build(context)
          when :list_tags_for_resource
            Aws::SsmSap::Endpoints::ListTagsForResource.build(context)
          when :put_resource_permission
            Aws::SsmSap::Endpoints::PutResourcePermission.build(context)
          when :register_application
            Aws::SsmSap::Endpoints::RegisterApplication.build(context)
          when :tag_resource
            Aws::SsmSap::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::SsmSap::Endpoints::UntagResource.build(context)
          when :update_application_settings
            Aws::SsmSap::Endpoints::UpdateApplicationSettings.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
