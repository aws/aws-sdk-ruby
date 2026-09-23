# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class Body
          def initialize(codec, shape)
            @codec = codec
            @shape = shape
            @has_members = shape.respond_to?(:members) && !shape.members.empty?
          end

          def apply(body, target)
            name, member, payload_type, = HTTP_EXTENSION.payload_member(@shape)
            # When string, blob, or enum as a payload, use value directly
            if payload_type == :raw
              # Empty blob payloads are omitted
              target[name] = body unless empty_blob_payload?(body, member)
            # Otherwise, parse the payload member
            elsif member
              parsed = parse(member, body.read)
              target[name] = parsed if parsed && !parsed.empty?
            elsif @has_members
              parse(@shape, body.read, target)
            end
          end

          private

          def empty_blob_payload?(body, member)
            member && SCHEMA_EXTENSION.target_shape(member) == SCHEMA_EXTENSION::SHAPE_BLOB &&
              !SCHEMA_EXTENSION.streaming?(member.target) && empty_body?(body)
          end

          def empty_body?(body)
            body.respond_to?(:size) && body.size.zero? # rubocop:disable Style/ZeroLengthPredicate
          end

          def parse(ref, body, target = nil)
            @codec.parse(ref, body, target) if body.size.positive?
          end
        end
      end
    end
  end
end
