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
            @payload_member = HTTP_EXTENSION.payload_member(shape)
            @body_members = HTTP_EXTENSION.body_members(shape)
          end

          def apply(request_or_response, params)
            payload_name, payload_member, payload_type, = @payload_member
            body = build_body(params, payload_name, payload_member, payload_type, @body_members)
            # For JSON requests, default the body to an empty json if it's not a streaming payload
            # and there's at least one modeled body member.
            body = '{}' if json? && body.nil? && document_body?(payload_member, payload_type, @body_members)
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
              values = params
              params = {}
              body_members.each do |member|
                name = member[0]
                params[name] = values[name]
              end
              build(@shape, params) unless params.empty?
            end
          end

          def document_body?(payload_member, payload_type, body_members)
            (payload_member || !body_members.empty?) && !%i[raw union].include?(payload_type)
          end

          def build(shape, params)
            @codec.build(shape, params)
          end
        end
      end
    end
  end
end
