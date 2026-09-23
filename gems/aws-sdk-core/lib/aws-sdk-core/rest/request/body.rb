# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Body
          def initialize(codec, shape)
            @codec = codec
            @shape = shape
            @metadata = HTTP_EXTENSION.fetch(shape)
          end

          def apply(request_or_response, params)
            payload_name, payload_member, payload_type, = @metadata[:payload_member]
            body_members = @metadata.fetch(:body_members, [])
            body = build_body(params, payload_name, payload_member, payload_type, body_members)
            # For JSON requests, default the body to an empty json if it's not a streaming payload
            # and there's at least one modeled body member.
            body = '{}' if json? && body.nil? && document_body?(payload_member, payload_type, body_members)
            request_or_response.body = body
          end

          private

          def json?
            defined?(Smithy::Json::Codec) && @codec.is_a?(Smithy::Json::Codec)
          end

          def build_body(params, payload_name, payload_member, payload_type, body_members)
            # When string, blob, or enum as a payload, use value directly
            if payload_type == :raw
              params[payload_name]
            # Otherwise, build the payload member
            elsif payload_member
              params = params[payload_name]
              return unless params

              build(payload_member, params)
            else
              params = body_members.each_with_object({}) { |(name, _), hash| hash[name] = params[name] }
              build(@shape, params) unless params.empty?
            end
          end

          def document_body?(payload_member, payload_type, body_members)
            (payload_member || !body_members.empty?) && !%i[raw union].include?(payload_type)
          end

          def build(ref, params)
            @codec.build(ref, params)
          end
        end
      end
    end
  end
end
