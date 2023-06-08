# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PaymentCryptographyData
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::PaymentCryptographyData::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::PaymentCryptographyData::EndpointParameters`'
      ) do |cfg|
        Aws::PaymentCryptographyData::EndpointProvider.new
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
          when :decrypt_data
            Aws::PaymentCryptographyData::Endpoints::DecryptData.build(context)
          when :encrypt_data
            Aws::PaymentCryptographyData::Endpoints::EncryptData.build(context)
          when :generate_card_validation_data
            Aws::PaymentCryptographyData::Endpoints::GenerateCardValidationData.build(context)
          when :generate_mac
            Aws::PaymentCryptographyData::Endpoints::GenerateMac.build(context)
          when :generate_pin_data
            Aws::PaymentCryptographyData::Endpoints::GeneratePinData.build(context)
          when :re_encrypt_data
            Aws::PaymentCryptographyData::Endpoints::ReEncryptData.build(context)
          when :translate_pin_data
            Aws::PaymentCryptographyData::Endpoints::TranslatePinData.build(context)
          when :verify_auth_request_cryptogram
            Aws::PaymentCryptographyData::Endpoints::VerifyAuthRequestCryptogram.build(context)
          when :verify_card_validation_data
            Aws::PaymentCryptographyData::Endpoints::VerifyCardValidationData.build(context)
          when :verify_mac
            Aws::PaymentCryptographyData::Endpoints::VerifyMac.build(context)
          when :verify_pin_data
            Aws::PaymentCryptographyData::Endpoints::VerifyPinData.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
