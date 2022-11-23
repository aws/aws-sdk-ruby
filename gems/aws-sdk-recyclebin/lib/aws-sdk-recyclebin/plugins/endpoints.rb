# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::RecycleBin
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::RecycleBin::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::RecycleBin::EndpointParameters`'
      ) do |cfg|
        Aws::RecycleBin::EndpointProvider.new
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
          when :create_rule
            Aws::RecycleBin::Endpoints::CreateRule.build(context)
          when :delete_rule
            Aws::RecycleBin::Endpoints::DeleteRule.build(context)
          when :get_rule
            Aws::RecycleBin::Endpoints::GetRule.build(context)
          when :list_rules
            Aws::RecycleBin::Endpoints::ListRules.build(context)
          when :list_tags_for_resource
            Aws::RecycleBin::Endpoints::ListTagsForResource.build(context)
          when :lock_rule
            Aws::RecycleBin::Endpoints::LockRule.build(context)
          when :tag_resource
            Aws::RecycleBin::Endpoints::TagResource.build(context)
          when :unlock_rule
            Aws::RecycleBin::Endpoints::UnlockRule.build(context)
          when :untag_resource
            Aws::RecycleBin::Endpoints::UntagResource.build(context)
          when :update_rule
            Aws::RecycleBin::Endpoints::UpdateRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
