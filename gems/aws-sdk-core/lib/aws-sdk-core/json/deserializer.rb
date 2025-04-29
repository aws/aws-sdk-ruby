# frozen_string_literal: true

module Aws
  module Core
    module JSON
      # @api private
      class Deserializer
        include Smithy::Schema::Shapes

        def initialize(options = {})
          @options = options
        end

        def deserialize(shape, bytes, target)
          return {} if bytes.empty?

          shape(shape, ::JSON.parse(bytes), target)
        end

        private

        def shape(shape, value, target = nil)
          return nil if value.nil?

          case shape
          when BlobShape then Base64.decode64(value)
          when BooleanShape then value.to_s == 'true'
          when FloatShape then float(value)
          when ListShape then list(shape, value, target)
          when MapShape then map(shape, value, target)
          when StructureShape then structure(shape, value, target)
          when TimestampShape then timestamp(value)
          when UnionShape then union(shape, value, target)
          else value
          end
        end

        def float(value)
          case value
          when 'Infinity' then ::Float::INFINITY
          when '-Infinity' then -::Float::INFINITY
          when 'NaN' then ::Float::NAN
          when nil then nil
          else value.to_f
          end
        end

        def list(shape, values, target = nil)
          target = [] if target.nil?
          values.each do |value|
            next if value.nil? && !sparse?(shape)

            target <<
              if value.nil?
                nil
              else
                shape(shape.member.shape, value)
              end
          end
          target
        end

        def map(shape, values, target = nil)
          target = {} if target.nil?
          values.each do |key, value|
            next if value.nil? && !sparse?(shape)

            target[key] =
              if value.nil?
                nil
              else
                shape(shape.value.shape, value)
              end
          end
          target
        end

        def structure(shape, values, target = nil)
          return Smithy::Schema::EmptyStructure.new if shape == Prelude::Unit

          target = shape.type.new if target.nil?
          shape.members.each do |member_name, member_shape|
            key = member_shape.traits['smithy.api#jsonName'] || member_shape.name
            next unless values.key?(key)

            target[member_name] = shape(member_shape.shape, values[key])
          end
          target
        end

        def timestamp(value)
          case value
          when nil then nil
          when Numeric then Time.at(value)
          when /^[\d.]+$/ then Time.at(value.to_f)
          else
            begin
              fractional_time = Time.parse(value).to_f
              Time.at(fractional_time).utc
            rescue ArgumentError
              raise "unhandled timestamp format `#{value}'"
            end
          end
        end

        def union(shape, values, target = nil)
          values.delete('__type') # TODO: probably not correct
          key, value = values.flatten
          return nil if key.nil?

          shape.members.each do |member_name, member_shape|
            key = member_shape.traits['smithy.api#jsonName'] || member_shape.name
            next unless values.key?(key)

            target = shape.member_type(member_name) if target.nil?
            return target.new(shape(member_shape.shape, values[key]))
          end
          shape.member_type(:unknown).new(key, value)
        end

        def sparse?(shape)
          shape.traits.include?('smithy.api#sparse')
        end
      end
    end
  end
end
