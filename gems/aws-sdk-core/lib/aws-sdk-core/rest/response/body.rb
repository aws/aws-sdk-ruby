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
              target[@ref.target[:http_payload]] = body unless empty_blob_payload?(body)
            # Otherwise, parse the payload member
            elsif @ref.target[:http_payload_member]
              parsed = parse(@ref.target[:http_payload_member], body.read)
              target[@ref.target[:http_payload]] = parsed if parsed && !parsed.empty?
            elsif !@ref.target.members.empty?
              parse(@ref, body.read, target)
            end
          end

          private

          def string_or_blob_payload?
            return false unless @ref.target[:http_payload_member]

            payload = @ref.target[:http_payload_member].target
            payload.is_a?(StringShape) || payload.is_a?(BlobShape) || payload.is_a?(EnumShape)
          end

          def empty_blob_payload?(body)
            non_streaming_blob_payload? && empty_body?(body)
          end

          def non_streaming_blob_payload?
            return false unless @ref.target[:http_payload_member]

            payload = @ref.target[:http_payload_member].target
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
