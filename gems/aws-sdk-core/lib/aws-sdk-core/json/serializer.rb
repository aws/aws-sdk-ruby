# frozen_string_literal: true

module Aws
  module Core
    module JSON
      # @api private
      class Serializer
        include Smithy::Schema::Shapes

        def initialize(options = {})
          @options = options
        end

        def serialize(shape, data)
          return nil if shape == Prelude::Unit

          shape = MemberShape.new('Dummy', shape) # TODO: this is pretty bad probably
          ::JSON.dump(shape(shape, data))
        end

        private

        def shape(member_shape, value)
          shape = member_shape.shape
          case shape
          when BlobShape then blob(value)
          when FloatShape then float(value)
          when ListShape then list(shape, value)
          when MapShape then map(shape, value)
          when StructureShape then structure(shape, value)
          when TimestampShape then timestamp(member_shape, shape, value)
          when UnionShape then union(shape, value)
          else value
          end
        end

        def blob(value)
          Base64.strict_encode64(value.is_a?(String) ? value : value.read)
        end

        def float(value)
          if value == ::Float::INFINITY
            'Infinity'
          elsif value == -::Float::INFINITY
            '-Infinity'
          elsif value.nan?
            'NaN'
          else
            value
          end
        end

        def list(shape, values)
          values.collect do |value|
            next if value.nil? && !sparse?(shape)

            if value.nil? && sparse?(shape)
              nil
            else
              shape(shape.member, value)
            end
          end
        end

        def map(shape, values)
          values.each.with_object({}) do |(key, value), data|
            next if value.nil? && !sparse?(shape)

            data[key] =
              if value.nil? && sparse?(shape)
                nil
              else
                shape(shape.value, value)
              end
          end
        end

        def structure(shape, values)
          return nil if values.nil?

          values.each_pair.with_object({}) do |(key, value), data|
            if shape.member?(key) && !value.nil?
              member_shape = shape.member(key)
              member_name = member_shape.traits['smithy.api#jsonName'] || member_shape.name
              data[member_name] = shape(member_shape, value)
            end
          end
        end

        def timestamp(member_shape, shape, value)
          trait = 'smithy.api#timestampFormat'
          case member_shape.traits[trait] || shape.traits[trait]
          when 'date-time' then value.utc.iso8601
          when 'http-date' then value.utc.httpdate
          else
            # default to epoch-seconds
            value.to_i
          end
        end

        def union(shape, values)
          data = {}
          if values.is_a?(Smithy::Schema::Union)
            member_shape = shape.member_by_type(values.class)
            member_name = member_shape.traits['smithy.api#jsonName'] || member_shape.name
            data[member_name] = shape(member_shape, values)
          else
            key, value = values.first
            if shape.member?(key)
              member_shape = shape.member(key)
              member_name = member_shape.traits['smithy.api#jsonName'] || member_shape.name
              data[member_name] = shape(member_shape, value)
            end
          end
          data
        end

        def sparse?(shape)
          shape.traits.include?('smithy.api#sparse')
        end
      end
    end
  end
end
