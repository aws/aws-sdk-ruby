# frozen_string_literal: true

require 'bigdecimal'
require 'stringio'
require 'set'

module Aws
  module DynamoDBStreams
    # @api private
    class AttributeValue

      def initialize
        @unmarshaler = Unmarshaler.new
      end

      def unmarshal(value)
        @unmarshaler.format(value)
      end

      class Unmarshaler

        def format(obj)
          type, value = extract_type_and_value(obj)
          case type
          when :m
            value.each.with_object({}) do |(k, v), map|
              map[k] = format(v)
            end
          when :l then value.map { |v| format(v) }
          when :s then value
          when :n then BigDecimal(value)
          when :b then StringIO.new(value)
          when :null then nil
          when :bool then value
          when :ss then Set.new(value)
          when :ns then Set.new(value.map { |n| BigDecimal(n) })
          when :bs then Set.new(value.map { |b| StringIO.new(b) })
          else
            raise ArgumentError, "unhandled type #{type.inspect}"
          end
        end

        private

        def extract_type_and_value(obj)
          case obj
          when Hash then obj.to_a.first
          when Struct
            obj.members.each do |key|
              value = obj[key]
              return [key, value] unless value.nil?
            end
          else
            raise ArgumentError, "unhandled type #{obj.inspect}"
          end
        end

      end
    end
  end
end
