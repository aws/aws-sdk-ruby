# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ACMPCA
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ACMPCA::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ACMPCA::EndpointParameters`'
      ) do |cfg|
        Aws::ACMPCA::EndpointProvider.new
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
          when :create_certificate_authority
            Aws::ACMPCA::Endpoints::CreateCertificateAuthority.build(context)
          when :create_certificate_authority_audit_report
            Aws::ACMPCA::Endpoints::CreateCertificateAuthorityAuditReport.build(context)
          when :create_permission
            Aws::ACMPCA::Endpoints::CreatePermission.build(context)
          when :delete_certificate_authority
            Aws::ACMPCA::Endpoints::DeleteCertificateAuthority.build(context)
          when :delete_permission
            Aws::ACMPCA::Endpoints::DeletePermission.build(context)
          when :delete_policy
            Aws::ACMPCA::Endpoints::DeletePolicy.build(context)
          when :describe_certificate_authority
            Aws::ACMPCA::Endpoints::DescribeCertificateAuthority.build(context)
          when :describe_certificate_authority_audit_report
            Aws::ACMPCA::Endpoints::DescribeCertificateAuthorityAuditReport.build(context)
          when :get_certificate
            Aws::ACMPCA::Endpoints::GetCertificate.build(context)
          when :get_certificate_authority_certificate
            Aws::ACMPCA::Endpoints::GetCertificateAuthorityCertificate.build(context)
          when :get_certificate_authority_csr
            Aws::ACMPCA::Endpoints::GetCertificateAuthorityCsr.build(context)
          when :get_policy
            Aws::ACMPCA::Endpoints::GetPolicy.build(context)
          when :import_certificate_authority_certificate
            Aws::ACMPCA::Endpoints::ImportCertificateAuthorityCertificate.build(context)
          when :issue_certificate
            Aws::ACMPCA::Endpoints::IssueCertificate.build(context)
          when :list_certificate_authorities
            Aws::ACMPCA::Endpoints::ListCertificateAuthorities.build(context)
          when :list_permissions
            Aws::ACMPCA::Endpoints::ListPermissions.build(context)
          when :list_tags
            Aws::ACMPCA::Endpoints::ListTags.build(context)
          when :put_policy
            Aws::ACMPCA::Endpoints::PutPolicy.build(context)
          when :restore_certificate_authority
            Aws::ACMPCA::Endpoints::RestoreCertificateAuthority.build(context)
          when :revoke_certificate
            Aws::ACMPCA::Endpoints::RevokeCertificate.build(context)
          when :tag_certificate_authority
            Aws::ACMPCA::Endpoints::TagCertificateAuthority.build(context)
          when :untag_certificate_authority
            Aws::ACMPCA::Endpoints::UntagCertificateAuthority.build(context)
          when :update_certificate_authority
            Aws::ACMPCA::Endpoints::UpdateCertificateAuthority.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
