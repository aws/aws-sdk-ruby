require 'bigdecimal'
require 'stringio'
require 'set'

module Aws
  module DynamoDB
    # @api private
    class AttributeValue

      def initialize
        @marshaler = Marshaler.new
        @unmarshaler = Unmarshaler.new
      end

      def marshal(value)
        @marshaler.format(value)
      end

      def unmarshal(value)
        @unmarshaler.format(value)
      end

      class Marshaler

        def format(obj)
          case obj
          when String then { s: obj }
          when Numeric then { n: obj.to_s }
          when StringIO, IO then { b: obj.read }
          when Set then format_set(obj)
          else
            msg = "unsupported type, expected Set, String, Numeric, or "
            msg << "IO object, got #{obj.class.name}"
            raise ArgumentError, msg
          end
        end

        private

        def format_set(set)
          case set.first
          when String then { ss: set.map(&:to_s) }
          when Numeric then { ns: set.map(&:to_s) }
          when StringIO, IO then { bs: set.map(&:read) }
          else
            msg = "set types only support String, Numeric, or IO objects"
            raise ArgumentError, msg
          end
        end

      end

      class Unmarshaler

        def format(obj)
          type, value = extract_type_and_value(obj)
          case type
          when :s then value
          when :n then BigDecimal.new(value)
          when :b then StringIO.new(value)
          when :ss then Set.new(value)
          when :ns then Set.new(value.map { |n| BigDecimal.new(n) })
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
