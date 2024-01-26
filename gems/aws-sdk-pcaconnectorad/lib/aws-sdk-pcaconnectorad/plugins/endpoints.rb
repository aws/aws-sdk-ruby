# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PcaConnectorAd
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PcaConnectorAd::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PcaConnectorAd::EndpointParameters`'
      ) do |cfg|
        Aws::PcaConnectorAd::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :create_connector
            Aws::PcaConnectorAd::Endpoints::CreateConnector.build(context)
          when :create_directory_registration
            Aws::PcaConnectorAd::Endpoints::CreateDirectoryRegistration.build(context)
          when :create_service_principal_name
            Aws::PcaConnectorAd::Endpoints::CreateServicePrincipalName.build(context)
          when :create_template
            Aws::PcaConnectorAd::Endpoints::CreateTemplate.build(context)
          when :create_template_group_access_control_entry
            Aws::PcaConnectorAd::Endpoints::CreateTemplateGroupAccessControlEntry.build(context)
          when :delete_connector
            Aws::PcaConnectorAd::Endpoints::DeleteConnector.build(context)
          when :delete_directory_registration
            Aws::PcaConnectorAd::Endpoints::DeleteDirectoryRegistration.build(context)
          when :delete_service_principal_name
            Aws::PcaConnectorAd::Endpoints::DeleteServicePrincipalName.build(context)
          when :delete_template
            Aws::PcaConnectorAd::Endpoints::DeleteTemplate.build(context)
          when :delete_template_group_access_control_entry
            Aws::PcaConnectorAd::Endpoints::DeleteTemplateGroupAccessControlEntry.build(context)
          when :get_connector
            Aws::PcaConnectorAd::Endpoints::GetConnector.build(context)
          when :get_directory_registration
            Aws::PcaConnectorAd::Endpoints::GetDirectoryRegistration.build(context)
          when :get_service_principal_name
            Aws::PcaConnectorAd::Endpoints::GetServicePrincipalName.build(context)
          when :get_template
            Aws::PcaConnectorAd::Endpoints::GetTemplate.build(context)
          when :get_template_group_access_control_entry
            Aws::PcaConnectorAd::Endpoints::GetTemplateGroupAccessControlEntry.build(context)
          when :list_connectors
            Aws::PcaConnectorAd::Endpoints::ListConnectors.build(context)
          when :list_directory_registrations
            Aws::PcaConnectorAd::Endpoints::ListDirectoryRegistrations.build(context)
          when :list_service_principal_names
            Aws::PcaConnectorAd::Endpoints::ListServicePrincipalNames.build(context)
          when :list_tags_for_resource
            Aws::PcaConnectorAd::Endpoints::ListTagsForResource.build(context)
          when :list_template_group_access_control_entries
            Aws::PcaConnectorAd::Endpoints::ListTemplateGroupAccessControlEntries.build(context)
          when :list_templates
            Aws::PcaConnectorAd::Endpoints::ListTemplates.build(context)
          when :tag_resource
            Aws::PcaConnectorAd::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PcaConnectorAd::Endpoints::UntagResource.build(context)
          when :update_template
            Aws::PcaConnectorAd::Endpoints::UpdateTemplate.build(context)
          when :update_template_group_access_control_entry
            Aws::PcaConnectorAd::Endpoints::UpdateTemplateGroupAccessControlEntry.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
