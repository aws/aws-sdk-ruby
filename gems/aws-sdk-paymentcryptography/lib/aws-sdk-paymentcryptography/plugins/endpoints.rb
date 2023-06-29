# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PaymentCryptography
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PaymentCryptography::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PaymentCryptography::EndpointParameters`'
      ) do |cfg|
        Aws::PaymentCryptography::EndpointProvider.new
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
          when :create_alias
            Aws::PaymentCryptography::Endpoints::CreateAlias.build(context)
          when :create_key
            Aws::PaymentCryptography::Endpoints::CreateKey.build(context)
          when :delete_alias
            Aws::PaymentCryptography::Endpoints::DeleteAlias.build(context)
          when :delete_key
            Aws::PaymentCryptography::Endpoints::DeleteKey.build(context)
          when :export_key
            Aws::PaymentCryptography::Endpoints::ExportKey.build(context)
          when :get_alias
            Aws::PaymentCryptography::Endpoints::GetAlias.build(context)
          when :get_key
            Aws::PaymentCryptography::Endpoints::GetKey.build(context)
          when :get_parameters_for_export
            Aws::PaymentCryptography::Endpoints::GetParametersForExport.build(context)
          when :get_parameters_for_import
            Aws::PaymentCryptography::Endpoints::GetParametersForImport.build(context)
          when :get_public_key_certificate
            Aws::PaymentCryptography::Endpoints::GetPublicKeyCertificate.build(context)
          when :import_key
            Aws::PaymentCryptography::Endpoints::ImportKey.build(context)
          when :list_aliases
            Aws::PaymentCryptography::Endpoints::ListAliases.build(context)
          when :list_keys
            Aws::PaymentCryptography::Endpoints::ListKeys.build(context)
          when :list_tags_for_resource
            Aws::PaymentCryptography::Endpoints::ListTagsForResource.build(context)
          when :restore_key
            Aws::PaymentCryptography::Endpoints::RestoreKey.build(context)
          when :start_key_usage
            Aws::PaymentCryptography::Endpoints::StartKeyUsage.build(context)
          when :stop_key_usage
            Aws::PaymentCryptography::Endpoints::StopKeyUsage.build(context)
          when :tag_resource
            Aws::PaymentCryptography::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::PaymentCryptography::Endpoints::UntagResource.build(context)
          when :update_alias
            Aws::PaymentCryptography::Endpoints::UpdateAlias.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
