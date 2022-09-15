# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::STS
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::STS::EndpointProvider, nil',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::STS::EndpointParameters`'
      ) do |cfg|
        Aws::Endpoints::StaticProvider.new(cfg.endpoint)
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          params = Aws::STS::EndpointParameters.new
          endpoint = context.config.endpoint_provider.resolve_endpoint(params)

          context.http_request.endpoint = endpoint.url
          apply_endpoint_headers(context, endpoint.headers)

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, val|
            joined = val
                       .compact
                       .map do |s|
                         (s.include?('"') || s.include?(",")) ?
                           "\"#{s.gsub('"', '\"')}\"" : s
                       end
                       .join(',')
            context.http_request.headers[key] = joined
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 60)
      end
    end
  end
end
