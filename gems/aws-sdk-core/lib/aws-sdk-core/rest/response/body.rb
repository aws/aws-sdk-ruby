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
            @payload_member = HTTP_EXTENSION.payload_member(shape)
            @has_members = shape.respond_to?(:members) && !shape.members.empty?
          end

          def apply(body, target)
            name, member, payload_type, = @payload_member
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
            return false unless member

            target_shape = member.target
            target_shape.is_a?(Smithy::Schema::Shapes::BlobShape) &&
              !SCHEMA_EXTENSION.streaming?(target_shape) && empty_body?(body)
          end

          def empty_body?(body)
            body.respond_to?(:size) && body.size.zero? # rubocop:disable Style/ZeroLengthPredicate
          end

          def parse(shape, body, target = nil)
            @codec.parse(shape, body, target) if body.size.positive?
          end
        end
      end
    end
  end
end
