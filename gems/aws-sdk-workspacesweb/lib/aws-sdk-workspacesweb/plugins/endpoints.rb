# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkSpacesWeb
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkSpacesWeb::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkSpacesWeb::EndpointParameters`'
      ) do |cfg|
        Aws::WorkSpacesWeb::EndpointProvider.new
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
          when :associate_browser_settings
            Aws::WorkSpacesWeb::Endpoints::AssociateBrowserSettings.build(context)
          when :associate_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::AssociateIpAccessSettings.build(context)
          when :associate_network_settings
            Aws::WorkSpacesWeb::Endpoints::AssociateNetworkSettings.build(context)
          when :associate_trust_store
            Aws::WorkSpacesWeb::Endpoints::AssociateTrustStore.build(context)
          when :associate_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::AssociateUserAccessLoggingSettings.build(context)
          when :associate_user_settings
            Aws::WorkSpacesWeb::Endpoints::AssociateUserSettings.build(context)
          when :create_browser_settings
            Aws::WorkSpacesWeb::Endpoints::CreateBrowserSettings.build(context)
          when :create_identity_provider
            Aws::WorkSpacesWeb::Endpoints::CreateIdentityProvider.build(context)
          when :create_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::CreateIpAccessSettings.build(context)
          when :create_network_settings
            Aws::WorkSpacesWeb::Endpoints::CreateNetworkSettings.build(context)
          when :create_portal
            Aws::WorkSpacesWeb::Endpoints::CreatePortal.build(context)
          when :create_trust_store
            Aws::WorkSpacesWeb::Endpoints::CreateTrustStore.build(context)
          when :create_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::CreateUserAccessLoggingSettings.build(context)
          when :create_user_settings
            Aws::WorkSpacesWeb::Endpoints::CreateUserSettings.build(context)
          when :delete_browser_settings
            Aws::WorkSpacesWeb::Endpoints::DeleteBrowserSettings.build(context)
          when :delete_identity_provider
            Aws::WorkSpacesWeb::Endpoints::DeleteIdentityProvider.build(context)
          when :delete_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::DeleteIpAccessSettings.build(context)
          when :delete_network_settings
            Aws::WorkSpacesWeb::Endpoints::DeleteNetworkSettings.build(context)
          when :delete_portal
            Aws::WorkSpacesWeb::Endpoints::DeletePortal.build(context)
          when :delete_trust_store
            Aws::WorkSpacesWeb::Endpoints::DeleteTrustStore.build(context)
          when :delete_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::DeleteUserAccessLoggingSettings.build(context)
          when :delete_user_settings
            Aws::WorkSpacesWeb::Endpoints::DeleteUserSettings.build(context)
          when :disassociate_browser_settings
            Aws::WorkSpacesWeb::Endpoints::DisassociateBrowserSettings.build(context)
          when :disassociate_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::DisassociateIpAccessSettings.build(context)
          when :disassociate_network_settings
            Aws::WorkSpacesWeb::Endpoints::DisassociateNetworkSettings.build(context)
          when :disassociate_trust_store
            Aws::WorkSpacesWeb::Endpoints::DisassociateTrustStore.build(context)
          when :disassociate_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::DisassociateUserAccessLoggingSettings.build(context)
          when :disassociate_user_settings
            Aws::WorkSpacesWeb::Endpoints::DisassociateUserSettings.build(context)
          when :get_browser_settings
            Aws::WorkSpacesWeb::Endpoints::GetBrowserSettings.build(context)
          when :get_identity_provider
            Aws::WorkSpacesWeb::Endpoints::GetIdentityProvider.build(context)
          when :get_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::GetIpAccessSettings.build(context)
          when :get_network_settings
            Aws::WorkSpacesWeb::Endpoints::GetNetworkSettings.build(context)
          when :get_portal
            Aws::WorkSpacesWeb::Endpoints::GetPortal.build(context)
          when :get_portal_service_provider_metadata
            Aws::WorkSpacesWeb::Endpoints::GetPortalServiceProviderMetadata.build(context)
          when :get_trust_store
            Aws::WorkSpacesWeb::Endpoints::GetTrustStore.build(context)
          when :get_trust_store_certificate
            Aws::WorkSpacesWeb::Endpoints::GetTrustStoreCertificate.build(context)
          when :get_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::GetUserAccessLoggingSettings.build(context)
          when :get_user_settings
            Aws::WorkSpacesWeb::Endpoints::GetUserSettings.build(context)
          when :list_browser_settings
            Aws::WorkSpacesWeb::Endpoints::ListBrowserSettings.build(context)
          when :list_identity_providers
            Aws::WorkSpacesWeb::Endpoints::ListIdentityProviders.build(context)
          when :list_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::ListIpAccessSettings.build(context)
          when :list_network_settings
            Aws::WorkSpacesWeb::Endpoints::ListNetworkSettings.build(context)
          when :list_portals
            Aws::WorkSpacesWeb::Endpoints::ListPortals.build(context)
          when :list_tags_for_resource
            Aws::WorkSpacesWeb::Endpoints::ListTagsForResource.build(context)
          when :list_trust_store_certificates
            Aws::WorkSpacesWeb::Endpoints::ListTrustStoreCertificates.build(context)
          when :list_trust_stores
            Aws::WorkSpacesWeb::Endpoints::ListTrustStores.build(context)
          when :list_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::ListUserAccessLoggingSettings.build(context)
          when :list_user_settings
            Aws::WorkSpacesWeb::Endpoints::ListUserSettings.build(context)
          when :tag_resource
            Aws::WorkSpacesWeb::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WorkSpacesWeb::Endpoints::UntagResource.build(context)
          when :update_browser_settings
            Aws::WorkSpacesWeb::Endpoints::UpdateBrowserSettings.build(context)
          when :update_identity_provider
            Aws::WorkSpacesWeb::Endpoints::UpdateIdentityProvider.build(context)
          when :update_ip_access_settings
            Aws::WorkSpacesWeb::Endpoints::UpdateIpAccessSettings.build(context)
          when :update_network_settings
            Aws::WorkSpacesWeb::Endpoints::UpdateNetworkSettings.build(context)
          when :update_portal
            Aws::WorkSpacesWeb::Endpoints::UpdatePortal.build(context)
          when :update_trust_store
            Aws::WorkSpacesWeb::Endpoints::UpdateTrustStore.build(context)
          when :update_user_access_logging_settings
            Aws::WorkSpacesWeb::Endpoints::UpdateUserAccessLoggingSettings.build(context)
          when :update_user_settings
            Aws::WorkSpacesWeb::Endpoints::UpdateUserSettings.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
