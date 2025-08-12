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

          def build_body(params) # rubocop:disable Metrics/AbcSize
            # When string, blob, or enum as a payload, use value directly
            if string_or_blob_payload?
              params[@ref.shape[:http_payload]]
            # Otherwise, build the payload member
            elsif @ref.shape[:http_payload_member]
              params = params[@ref.shape[:http_payload]]
              return unless params

              if xml?
                location_name = payload_location_name(@ref.shape[:http_payload_member])
                ref = ShapeRef.new(shape: @ref.shape[:http_payload_member].shape, location_name: location_name)
                build(ref, params)
              else
                build(@ref.shape[:http_payload_member], params)
              end
            else
              params = body_members(params)
              build(@ref, params) unless params.empty?
            end
          end

          def string_or_blob_payload?
            return false unless @ref.shape[:http_payload_member]

            payload = @ref.shape[:http_payload_member].shape
            payload.is_a?(StringShape) || payload.is_a?(BlobShape) || payload.is_a?(EnumShape)
          end

          def union_payload?
            return false unless @ref.shape[:http_payload_member]

            payload = @ref.shape[:http_payload_member].shape
            payload.is_a?(UnionShape)
          end

          def payload_location_name(ref)
            ref.traits['smithy.api#xmlName'] || ref.shape.traits['smithy.api#xmlName']
          end

          def body_members(params)
            @ref.shape.members.each_with_object({}) do |(member_name, member_ref), hash|
              next if NON_BODY_TRAITS.any? { |trait| member_ref.traits.key?(trait) }

              hash[member_name] = params[member_name]
            end
          end

          def modeled_body_member?
            return true if @ref.shape[:http_payload_member]

            @ref.shape.members.each_value do |member_ref|
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
