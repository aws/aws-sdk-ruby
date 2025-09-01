# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  module Plugins
    # @api private
    class Endpoint < Smithy::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Redshift::EndpointProvider',
        docstring: <<~DOCS) do |config|
          The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
        DOCS
        EndpointProvider.new
      end

      option(
        :region,
        doc_type: String,
        docstring: 'TODO'
      )

      option(
        :use_dual_stack_endpoint,
        doc_type: 'Boolean',
        docstring: 'TODO'
      )

      option(
        :use_fips_endpoint,
        doc_type: 'Boolean',
        docstring: 'TODO'
      )

      option(
        :endpoint,
        doc_type: String,
        docstring: 'Custom Endpoint'
      )

      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          params = EndpointParameters.create(context)
          endpoint = context.config.endpoint_provider.resolve(params)

          context.http_request.endpoint = endpoint.uri
          apply_endpoint_headers(context, endpoint.headers)

          context[:endpoint_params] = params
          context[:endpoint_properties] = endpoint.properties
          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, value|
            context.http_request.headers[key] = value
          end
        end
      end

      handler(Handler, priority: 75)
    end
  end
end
