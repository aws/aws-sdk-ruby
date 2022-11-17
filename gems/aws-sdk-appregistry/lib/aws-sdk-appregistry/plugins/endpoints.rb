# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppRegistry
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppRegistry::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppRegistry::EndpointParameters`'
      ) do |cfg|
        Aws::AppRegistry::EndpointProvider.new
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
          when :associate_attribute_group
            Aws::AppRegistry::Endpoints::AssociateAttributeGroup.build(context)
          when :associate_resource
            Aws::AppRegistry::Endpoints::AssociateResource.build(context)
          when :create_application
            Aws::AppRegistry::Endpoints::CreateApplication.build(context)
          when :create_attribute_group
            Aws::AppRegistry::Endpoints::CreateAttributeGroup.build(context)
          when :delete_application
            Aws::AppRegistry::Endpoints::DeleteApplication.build(context)
          when :delete_attribute_group
            Aws::AppRegistry::Endpoints::DeleteAttributeGroup.build(context)
          when :disassociate_attribute_group
            Aws::AppRegistry::Endpoints::DisassociateAttributeGroup.build(context)
          when :disassociate_resource
            Aws::AppRegistry::Endpoints::DisassociateResource.build(context)
          when :get_application
            Aws::AppRegistry::Endpoints::GetApplication.build(context)
          when :get_associated_resource
            Aws::AppRegistry::Endpoints::GetAssociatedResource.build(context)
          when :get_attribute_group
            Aws::AppRegistry::Endpoints::GetAttributeGroup.build(context)
          when :get_configuration
            Aws::AppRegistry::Endpoints::GetConfiguration.build(context)
          when :list_applications
            Aws::AppRegistry::Endpoints::ListApplications.build(context)
          when :list_associated_attribute_groups
            Aws::AppRegistry::Endpoints::ListAssociatedAttributeGroups.build(context)
          when :list_associated_resources
            Aws::AppRegistry::Endpoints::ListAssociatedResources.build(context)
          when :list_attribute_groups
            Aws::AppRegistry::Endpoints::ListAttributeGroups.build(context)
          when :list_attribute_groups_for_application
            Aws::AppRegistry::Endpoints::ListAttributeGroupsForApplication.build(context)
          when :list_tags_for_resource
            Aws::AppRegistry::Endpoints::ListTagsForResource.build(context)
          when :put_configuration
            Aws::AppRegistry::Endpoints::PutConfiguration.build(context)
          when :sync_resource
            Aws::AppRegistry::Endpoints::SyncResource.build(context)
          when :tag_resource
            Aws::AppRegistry::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppRegistry::Endpoints::UntagResource.build(context)
          when :update_application
            Aws::AppRegistry::Endpoints::UpdateApplication.build(context)
          when :update_attribute_group
            Aws::AppRegistry::Endpoints::UpdateAttributeGroup.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
