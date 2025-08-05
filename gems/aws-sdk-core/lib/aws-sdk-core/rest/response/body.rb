# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class Body
          include Smithy::Schema::Shapes

          def initialize(codec, ref)
            @codec = codec
            @ref = ref
          end

          def apply(body, target) # rubocop:disable Metrics/AbcSize
            # When string, blob, or enum as a payload, use value directly
            if string_or_blob_payload?
              # Empty blob payloads are omitted
              target[@ref.shape[:http_payload]] = body unless empty_blob_payload?(body)
            # Otherwise, parse the payload member
            elsif @ref.shape[:http_payload_member]
              parsed = parse(@ref.shape[:http_payload_member].shape, body.read)
              target[@ref.shape[:http_payload]] = parsed unless parsed&.empty?
            elsif !@ref.shape.members.empty?
              parse(@ref, body.read, target)
            end
          end

          private

          def string_or_blob_payload?
            return false unless @ref.shape[:http_payload_member]

            payload_member = @ref.shape[:http_payload_member].shape
            payload_member.is_a?(StringShape) ||
              payload_member.is_a?(BlobShape) ||
              payload_member.is_a?(EnumShape)
          end

          def empty_blob_payload?(body)
            non_streaming_blob_payload? && empty_body?(body)
          end

          def non_streaming_blob_payload?
            return false unless @ref.shape[:http_payload_member]

            payload = @ref.shape[:http_payload_member].shape
            payload.is_a?(BlobShape) && !payload.traits.key?('smithy.api#streaming')
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
