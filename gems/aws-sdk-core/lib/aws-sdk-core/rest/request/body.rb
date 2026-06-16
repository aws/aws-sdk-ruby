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

          def initialize(codec, shape)
            @codec = codec
            @shape = shape
          end

          def apply(request_or_response, params)
            body = build_body(params)
            # For JSON requests, default the body to an empty json if it's not a streaming payload
            # and there's at least one modeled body member.
            body = '{}' if json? && body.nil? && modeled_body_member? && !string_or_blob_payload? && !union_payload?
            request_or_response.body = body
          end

          private

          def json?
            defined?(Smithy::Json::Codec) && @codec.is_a?(Smithy::Json::Codec)
          end

          def xml?
            defined?(Smithy::Xml::Codec) && @codec.is_a?(Smithy::Xml::Codec)
          end

          def build_body(params)
            # When string, blob, or enum as a payload, use value directly
            if string_or_blob_payload?
              params[@shape.target[:http_payload]]
            # Otherwise, build the payload member
            elsif (payload_member = @shape.target[:http_payload_member])
              params = params[@shape.target[:http_payload]]
              return unless params

              # TODO: revisit during SERDE optimization
              # Serializing the payload member name for rest-xml is as follows:
              # 1. Use the value of the xmlName trait on the member if present
              # 2. Use the value of the xmlName trait on the member's target if present
              # 3. Use the shape name of the member's target
              build(payload_member, params)
            else
              params = body_members(params)
              build(@shape, params) unless params.empty?
            end
          end

          def string_or_blob_payload?
            return false unless @shape.target[:http_payload_member]

            payload = @shape.target[:http_payload_member].target
            payload.is_a?(StringShape) || payload.is_a?(BlobShape) || payload.is_a?(EnumShape)
          end

          def union_payload?
            return false unless @shape.target[:http_payload_member]

            payload = @shape.target[:http_payload_member].target
            payload.is_a?(UnionShape)
          end

          def payload_location_name(shape)
            shape.traits['smithy.api#xmlName'] || shape.target.traits['smithy.api#xmlName'] || shape.target.name
          end

          def body_members(params)
            @shape.members.each_with_object({}) do |(member_name, member_ref), hash|
              next if NON_BODY_TRAITS.any? { |trait| member_ref.traits.key?(trait) }

              hash[member_name] = params[member_name]
            end
          end

          def modeled_body_member?
            return true if @shape.target[:http_payload_member]

            @shape.target.members.each_value do |member_ref|
              return true unless NON_BODY_TRAITS.any? { |trait| member_ref.traits.key?(trait) }
            end
            false
          end

          def build(ref, params)
            @codec.build(ref, params)
          end
        end
      end
    end
  end
end
