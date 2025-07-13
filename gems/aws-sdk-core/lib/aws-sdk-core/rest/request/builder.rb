# frozen_string_literal: true

require_relative 'body'
require_relative 'endpoint'
require_relative 'headers'

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Builder
          def apply(context)
            apply_http_method(context)
            apply_headers(context)
            apply_body(context)
            apply_endpoint(context)
            apply_content_type_header(context)
          end

          private

          def apply_http_method(context)
            context.http_request.http_method = context.operation.traits['smithy.api#http']['method']
          end

          def apply_headers(context)
            Headers.new(context.operation.input).apply(context.http_request, context.params)
          end

          def apply_body(context)
            Body.new(context.config.codec, context.operation.input).apply(context.http_request, context.params)
          end

          def apply_endpoint(context)
            Endpoint.new(context.operation).apply(context.http_request, context.params)
          end

          # Refactor
          def apply_content_type_header(context)
            if (payload_member = context.operation.input.shape[:http_payload_member])
              payload = payload_member.shape
              if (media_type = payload.traits['smithy.api#mediaType'])
                context.http_request.headers['Content-Type'] ||= media_type
              elsif payload.is_a?(Smithy::Schema::Shapes::BlobShape)
                context.http_request.headers['Content-Type'] ||= 'application/octet-stream'
              elsif payload.is_a?(Smithy::Schema::Shapes::StringShape) ||
                    payload.is_a?(Smithy::Schema::Shapes::EnumShape)
                context.http_request.headers['Content-Type'] ||= 'text/plain'
              else
                context.http_request.headers['Content-Type'] ||= 'application/json'
              end
            elsif known_body?(context)
              context.http_request.headers['Content-Type'] ||= 'application/json'
            end
          end

          def known_body?(context)
            body = context.http_request.body
            !body.respond_to?(:size) || (body.respond_to?(:size) && body.size.positive?)
          end
        end
      end
    end
  end
end
