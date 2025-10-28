# frozen_string_literal: true

# This is generated code!

module Aws::SQS
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
        doc_default: 'Aws::SQS::EndpointProvider',
        rbs_type: 'Aws::SQS::EndpointProvider',
        docstring: 'An object that provides an endpoint to use for the request.'
      ) do |_config|
        EndpointProvider.new
      end

      option(:endpoint_auth_schemes) do
        {"bearer" => "smithy.api#httpBearerAuth", "none" => "smithy.api#noAuth", "sigv4a" => "aws.auth#sigv4a", "sigv4" => "aws.auth#sigv4"}
      end

      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          context[:endpoint_params] ||= EndpointParameters.create(context)
          context[:resolved_endpoint] ||= context.config.endpoint_provider.resolve(context[:endpoint_params])

          apply_endpoint(context.http_request, context[:resolved_endpoint])
          @handler.call(context)
        end

        private

        def apply_endpoint(http_request, endpoint)
          http_request.endpoint = endpoint.url
          endpoint.headers.each do |key, value|
            http_request.headers[key] = value
          end
        end
      end

      handler(Handler, priority: 75)
    end
  end
end
