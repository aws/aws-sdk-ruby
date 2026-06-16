# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Builder
          def initialize(codec)
            @codec = codec
          end

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
            Body.new(@codec, context.operation.input).apply(context.http_request, context.params)
          end

          def apply_endpoint(context)
            Endpoint.new(context.operation).apply(context.http_request, context.params)
          end

          def apply_content_type_header(context)
            if (payload_member = context.operation.input[:http_payload_member])
              context.http_request.headers['Content-Type'] ||= payload_content_type(context, payload_member.target)
            elsif known_body?(context)
              context.http_request.headers['Content-Type'] ||= default_content_type(context)
            end
          end

          def payload_content_type(context, payload)
            if (media_type = payload.traits['smithy.api#mediaType'])
              media_type
            elsif payload.is_a?(Smithy::Schema::Shapes::BlobShape)
              'application/octet-stream'
            elsif payload.is_a?(Smithy::Schema::Shapes::StringShape) ||
                  payload.is_a?(Smithy::Schema::Shapes::EnumShape)
              'text/plain'
            else
              default_content_type(context)
            end
          end

          def default_content_type(context)
            protocol = context.config.protocol
            case protocol
            when 'aws.protocols#restJson1' then 'application/json'
            when 'aws.protocols#restXml' then 'application/xml'
            else raise "Unsupported protocol: #{protocol}"
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
