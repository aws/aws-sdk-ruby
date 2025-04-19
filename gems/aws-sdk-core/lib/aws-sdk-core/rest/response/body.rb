# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class Body
          include Smithy::Schema::Shapes

          def initialize(codec, output_shape)
            @codec = codec
            @output_shape = output_shape
          end

          def apply(body, data)
            # When string, blob, or enum as a payload, use value directly
            if string_or_blob_payload?
              # Empty blob payloads are omitted
              data[@output_shape[:http_payload]] = body unless empty_blob_payload?(body)
            # Otherwise, deserialize the payload member
            elsif @output_shape[:http_payload_member]
              data[@output_shape[:http_payload]] = parse(@output_shape[:http_payload_member].shape, body.read)
            elsif !@output_shape.members.empty?
              parse(@output_shape, body.read, data)
            end
          end

          private

          def string_or_blob_payload?
            return false unless @output_shape[:http_payload_member]
            payload_member = @output_shape[:http_payload_member].shape

            payload_member.is_a?(StringShape) ||
              payload_member.is_a?(BlobShape) ||
              payload_member.is_a?(EnumShape)
          end

          def empty_blob_payload?(body)
            non_streaming_blob_payload? && empty_body?(body)
          end

          def non_streaming_blob_payload?
            return false unless @output_shape[:http_payload_member]
            payload = @output_shape[:http_payload_member].shape

            payload.is_a?(BlobShape) && !payload.traits.include?('smithy.api#streaming')
          end

          def empty_body?(body)
            body.respond_to?(:size) && body.size.zero?
          end

          def parse(shape, body, target = nil)
            @codec.deserialize(shape, body, target) if body.size > 0
          end
        end
      end
    end
  end
end
