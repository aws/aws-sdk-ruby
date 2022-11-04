# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ACM
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ACM::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ACM::EndpointParameters`'
      ) do |cfg|
        Aws::ACM::EndpointProvider.new
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
          when :add_tags_to_certificate
            Aws::ACM::Endpoints::AddTagsToCertificate.build(context)
          when :delete_certificate
            Aws::ACM::Endpoints::DeleteCertificate.build(context)
          when :describe_certificate
            Aws::ACM::Endpoints::DescribeCertificate.build(context)
          when :export_certificate
            Aws::ACM::Endpoints::ExportCertificate.build(context)
          when :get_account_configuration
            Aws::ACM::Endpoints::GetAccountConfiguration.build(context)
          when :get_certificate
            Aws::ACM::Endpoints::GetCertificate.build(context)
          when :import_certificate
            Aws::ACM::Endpoints::ImportCertificate.build(context)
          when :list_certificates
            Aws::ACM::Endpoints::ListCertificates.build(context)
          when :list_tags_for_certificate
            Aws::ACM::Endpoints::ListTagsForCertificate.build(context)
          when :put_account_configuration
            Aws::ACM::Endpoints::PutAccountConfiguration.build(context)
          when :remove_tags_from_certificate
            Aws::ACM::Endpoints::RemoveTagsFromCertificate.build(context)
          when :renew_certificate
            Aws::ACM::Endpoints::RenewCertificate.build(context)
          when :request_certificate
            Aws::ACM::Endpoints::RequestCertificate.build(context)
          when :resend_validation_email
            Aws::ACM::Endpoints::ResendValidationEmail.build(context)
          when :update_certificate_options
            Aws::ACM::Endpoints::UpdateCertificateOptions.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
