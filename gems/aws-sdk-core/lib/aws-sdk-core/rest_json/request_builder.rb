# frozen_string_literal: true

require_relative '../rest/request/body'
require_relative '../rest/request/headers'
require_relative '../rest/request/endpoint'

module Aws
  module Core
    module RestJson
      # @api private
      class RequestBuilder
        def initialize(options = {})
          @codec = Smithy::JSON::Codec.new(options)
        end

        def build(context)
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
          Rest::Request::Headers.new(context.operation.input).apply(context.http_request, context.params)
        end

        def apply_body(context)
          Rest::Request::Body.new(@codec, context.operation.input).apply(context.http_request, context.params)
        end

        def apply_endpoint(context)
          uri = context.operation.traits['smithy.api#http']['uri']
          Rest::Request::Endpoint.new(uri, context.operation.input).apply(context.http_request, context.params)
        end

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
