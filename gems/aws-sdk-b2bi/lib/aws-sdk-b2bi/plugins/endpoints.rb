# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::B2bi
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::B2bi::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::B2bi::EndpointParameters`'
      ) do |cfg|
        Aws::B2bi::EndpointProvider.new
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
          when :create_capability
            Aws::B2bi::Endpoints::CreateCapability.build(context)
          when :create_partnership
            Aws::B2bi::Endpoints::CreatePartnership.build(context)
          when :create_profile
            Aws::B2bi::Endpoints::CreateProfile.build(context)
          when :create_transformer
            Aws::B2bi::Endpoints::CreateTransformer.build(context)
          when :delete_capability
            Aws::B2bi::Endpoints::DeleteCapability.build(context)
          when :delete_partnership
            Aws::B2bi::Endpoints::DeletePartnership.build(context)
          when :delete_profile
            Aws::B2bi::Endpoints::DeleteProfile.build(context)
          when :delete_transformer
            Aws::B2bi::Endpoints::DeleteTransformer.build(context)
          when :get_capability
            Aws::B2bi::Endpoints::GetCapability.build(context)
          when :get_partnership
            Aws::B2bi::Endpoints::GetPartnership.build(context)
          when :get_profile
            Aws::B2bi::Endpoints::GetProfile.build(context)
          when :get_transformer
            Aws::B2bi::Endpoints::GetTransformer.build(context)
          when :get_transformer_job
            Aws::B2bi::Endpoints::GetTransformerJob.build(context)
          when :list_capabilities
            Aws::B2bi::Endpoints::ListCapabilities.build(context)
          when :list_partnerships
            Aws::B2bi::Endpoints::ListPartnerships.build(context)
          when :list_profiles
            Aws::B2bi::Endpoints::ListProfiles.build(context)
          when :list_tags_for_resource
            Aws::B2bi::Endpoints::ListTagsForResource.build(context)
          when :list_transformers
            Aws::B2bi::Endpoints::ListTransformers.build(context)
          when :start_transformer_job
            Aws::B2bi::Endpoints::StartTransformerJob.build(context)
          when :tag_resource
            Aws::B2bi::Endpoints::TagResource.build(context)
          when :test_mapping
            Aws::B2bi::Endpoints::TestMapping.build(context)
          when :test_parsing
            Aws::B2bi::Endpoints::TestParsing.build(context)
          when :untag_resource
            Aws::B2bi::Endpoints::UntagResource.build(context)
          when :update_capability
            Aws::B2bi::Endpoints::UpdateCapability.build(context)
          when :update_partnership
            Aws::B2bi::Endpoints::UpdatePartnership.build(context)
          when :update_profile
            Aws::B2bi::Endpoints::UpdateProfile.build(context)
          when :update_transformer
            Aws::B2bi::Endpoints::UpdateTransformer.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
