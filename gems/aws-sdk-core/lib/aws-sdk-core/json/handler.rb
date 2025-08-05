# frozen_string_literal: true

module Aws
  module Core
    module Json
      # @api private
      class Handler < Smithy::Client::Handler
        def call(context)
          build_request(context)
          response = @handler.call(context)
          response.on_done(200..299) { |resp| resp.data = parse_body(context) }
          response.on_done(200..599) { apply_request_id(context) }
        end

        private

        def build_request(context)
          context.http_request.http_method = 'POST'
          apply_headers(context)
          apply_endpoint_path(context)
          context.http_request.body = build_body(context)
        end

        def apply_headers(context)
          context.http_request.headers['Content-Type'] = content_type(context.config.service.traits)
          context.http_request.headers['X-Amz-Target'] = target(context)
          context.http_request.headers['X-Amzn-Query-Mode'] = 'true' if query_compatible?(context)
        end

        def content_type(traits)
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
          path = context.http_request.endpoint.path
          return path if path.end_with?('/')

          context.http_request.endpoint.path += '/'
        end

        def build_body(context)
          context.config.json_codec.build(context.operation.input, context.params)
        end

        def parse_body(context)
          context.config.json_codec.parse(context.operation.output, context.http_response.body.read)
        end

        def apply_request_id(context)
          context[:request_id] = context.http_response.headers['X-Amzn-RequestId']
        end
      end
    end
  end
end
