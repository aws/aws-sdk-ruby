# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Body
          include Smithy::Schema::Shapes

          NON_BODY_TRAITS = %w[
            smithy.api#httpHeader
            smithy.api#httpLabel
            smithy.api#httpPrefixHeaders
            smithy.api#httpQuery
            smithy.api#httpQueryParams
          ].freeze

          def initialize(codec, ref)
            @codec = codec
            @ref = ref
          end

          def apply(request_or_response, input)
            body = build_body(input)
            # TODO: this is terrible
            if body.nil? && modeled_body_member? && !string_or_blob_payload? && !union_payload?
              body = '{}'
            end
            request_or_response.body = body
          end

          private

          def build_body(input)
            # When string, blob, or enum as a payload, use value directly
            if string_or_blob_payload?
              input[@ref.shape[:http_payload]]
            # Otherwise, build the payload member
            elsif @ref.shape[:http_payload_member]
              input = input[@ref.shape[:http_payload]]
              @codec.build(@ref.shape[:http_payload_member].shape, input) if input
            else
              input = body_members(input)
              @codec.build(@ref, input) unless input.empty?
            end
          end

          def string_or_blob_payload?
            return false unless @ref.shape[:http_payload_member]

            payload = @ref.shape[:http_payload_member].shape
            payload.is_a?(StringShape) || payload.is_a?(BlobShape) || payload.is_a?(EnumShape)
          end

          def body_members(input)
            @ref.shape.members.each_with_object({}) do |(member_name, member_ref), hash|
              next if NON_BODY_TRAITS.any? { |trait| member_ref.traits.key?(trait) }

              hash[member_name] = input[member_name]
            end
          end

          def modeled_body_member?
            return true if @ref.shape[:http_payload_member]

            @ref.shape.members.each_value do |member_ref|
              return true unless NON_BODY_TRAITS.any? { |trait| member_ref.traits.key?(trait) }
            end
            false
          end

          def union_payload?
            @ref.shape[:http_payload_member] && @ref.shape[:http_payload_member].shape.is_a?(UnionShape)
          end
        end
      end
    end
  end
end
