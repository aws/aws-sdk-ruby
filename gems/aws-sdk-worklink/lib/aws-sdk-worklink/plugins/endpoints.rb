# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkLink
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkLink::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkLink::EndpointParameters`'
      ) do |cfg|
        Aws::WorkLink::EndpointProvider.new
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
          when :associate_domain
            Aws::WorkLink::Endpoints::AssociateDomain.build(context)
          when :associate_website_authorization_provider
            Aws::WorkLink::Endpoints::AssociateWebsiteAuthorizationProvider.build(context)
          when :associate_website_certificate_authority
            Aws::WorkLink::Endpoints::AssociateWebsiteCertificateAuthority.build(context)
          when :create_fleet
            Aws::WorkLink::Endpoints::CreateFleet.build(context)
          when :delete_fleet
            Aws::WorkLink::Endpoints::DeleteFleet.build(context)
          when :describe_audit_stream_configuration
            Aws::WorkLink::Endpoints::DescribeAuditStreamConfiguration.build(context)
          when :describe_company_network_configuration
            Aws::WorkLink::Endpoints::DescribeCompanyNetworkConfiguration.build(context)
          when :describe_device
            Aws::WorkLink::Endpoints::DescribeDevice.build(context)
          when :describe_device_policy_configuration
            Aws::WorkLink::Endpoints::DescribeDevicePolicyConfiguration.build(context)
          when :describe_domain
            Aws::WorkLink::Endpoints::DescribeDomain.build(context)
          when :describe_fleet_metadata
            Aws::WorkLink::Endpoints::DescribeFleetMetadata.build(context)
          when :describe_identity_provider_configuration
            Aws::WorkLink::Endpoints::DescribeIdentityProviderConfiguration.build(context)
          when :describe_website_certificate_authority
            Aws::WorkLink::Endpoints::DescribeWebsiteCertificateAuthority.build(context)
          when :disassociate_domain
            Aws::WorkLink::Endpoints::DisassociateDomain.build(context)
          when :disassociate_website_authorization_provider
            Aws::WorkLink::Endpoints::DisassociateWebsiteAuthorizationProvider.build(context)
          when :disassociate_website_certificate_authority
            Aws::WorkLink::Endpoints::DisassociateWebsiteCertificateAuthority.build(context)
          when :list_devices
            Aws::WorkLink::Endpoints::ListDevices.build(context)
          when :list_domains
            Aws::WorkLink::Endpoints::ListDomains.build(context)
          when :list_fleets
            Aws::WorkLink::Endpoints::ListFleets.build(context)
          when :list_tags_for_resource
            Aws::WorkLink::Endpoints::ListTagsForResource.build(context)
          when :list_website_authorization_providers
            Aws::WorkLink::Endpoints::ListWebsiteAuthorizationProviders.build(context)
          when :list_website_certificate_authorities
            Aws::WorkLink::Endpoints::ListWebsiteCertificateAuthorities.build(context)
          when :restore_domain_access
            Aws::WorkLink::Endpoints::RestoreDomainAccess.build(context)
          when :revoke_domain_access
            Aws::WorkLink::Endpoints::RevokeDomainAccess.build(context)
          when :sign_out_user
            Aws::WorkLink::Endpoints::SignOutUser.build(context)
          when :tag_resource
            Aws::WorkLink::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::WorkLink::Endpoints::UntagResource.build(context)
          when :update_audit_stream_configuration
            Aws::WorkLink::Endpoints::UpdateAuditStreamConfiguration.build(context)
          when :update_company_network_configuration
            Aws::WorkLink::Endpoints::UpdateCompanyNetworkConfiguration.build(context)
          when :update_device_policy_configuration
            Aws::WorkLink::Endpoints::UpdateDevicePolicyConfiguration.build(context)
          when :update_domain_metadata
            Aws::WorkLink::Endpoints::UpdateDomainMetadata.build(context)
          when :update_fleet_metadata
            Aws::WorkLink::Endpoints::UpdateFleetMetadata.build(context)
          when :update_identity_provider_configuration
            Aws::WorkLink::Endpoints::UpdateIdentityProviderConfiguration.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
