# frozen_string_literal: true

# This is generated code!

module Aws::ControlTower
  module Plugins
    # @api private
    class Endpoint < Smithy::Client::Plugin
      option(
        :endpoint,
        doc_type: 'String',
        docstring: <<~DOCS
          The endpoint to send requests to.
          The endpoint should be a URI formatted like "http://example.com:123"'
        DOCS
      )

      option(
        :endpoint_provider,
        doc_type: '#resolve(parameters)',
        doc_default: 'Aws::ControlTower::EndpointProvider',
        rbs_type: 'Aws::ControlTower::EndpointProvider',
        docstring: 'An object that provides an endpoint to use for the request.'
      ) do |_config|
        EndpointProvider.new
      end

      option(:endpoint_auth_schemes) do
        {"bearer" => "smithy.api#httpBearerAuth", "none" => "smithy.api#noAuth", "sigv4a" => "aws.auth#sigv4a", "sigv4" => "aws.auth#sigv4"}
      end

      def before_initialize(_client_class, options)
        return unless options[:stub_responses]

        options[:endpoint] = 'http://stubbed-endpoint' unless options.key?(:endpoint)
      end

      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          params = EndpointParameters.create(context)
          context[:endpoint_params] = params
          endpoint = context.config.endpoint_provider.resolve(params)
          context[:resolved_endpoint] = endpoint

          apply_endpoint(context, endpoint)
          @handler.call(context)
        end

        private

        def apply_endpoint(context, endpoint)
          context.http_request.endpoint = endpoint.url
          endpoint.headers.each do |key, value|
            context.http_request.headers[key] = value
          end
        end
      end

      handler(Handler, priority: 75)
    end
  end
end
