# frozen_string_literal: true

module Aws
  module Core
    module JsonRpc
      # @api private
      class RequestBuilder
        def initialize(options = {})
          @codec = Smithy::JSON::Codec.new(options)
        end

        def build(context) # rubocop:disable Metrics/AbcSize
          context.request.http_method = 'POST'
          context.request.headers['Content-Type'] = content_type(context.config.service)
          context.request.headers['X-Amz-Target'] = target(context)
          context.request.headers['X-Amzn-Query-Mode'] = 'true' if query_compatible?(context)
          context.request.endpoint.path = apply_endpoint_path(context)
          context.request.body = build_body(context)
        end

        private

        def content_type(service)
          traits = service.traits
          version =
            if traits.key?('aws.protocols#awsJson1_1')
              '1.1'
            elsif traits.key?('aws.protocols#awsJson1_0')
              '1.0'
            end
          "application/x-amz-json-#{version}"
        end

        def target(context)
          "#{context.config.service.name}.#{context.operation.name}"
        end

        def query_compatible?(context)
          context.config.service.traits.key?('aws.protocols#awsQueryCompatible')
        end

        def apply_endpoint_path(context)
          path = context.request.endpoint.path
          return path if path.end_with?('/')

          "#{path}/"
        end

        def build_body(context)
          @codec.serialize(context.operation.input, context.params)
        end
      end
    end
  end
end
