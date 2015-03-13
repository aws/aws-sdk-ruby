require 'multi_xml'
require 'time'
require 'base64'

module Aws
  module Xml
    class Parser

      # @param [Seahorse::Model::Shapes::Structure] shape
      def initialize(shape)
        @shape = shape
      end

      # @param [String<xml>] xml
      # @param [Hash, nil] target
      # @return [Structure]
      def parse(xml, target = nil, &block)
        xml = MultiXml.parse(xml).values.first || {}
        yield(xml) if block_given?
        structure(@shape, xml, target)
      end

      private

      # @param [Seahorse::Model::Shapes::Structure] structure
      # @param [Hash] values
      # @param [Hash, nil] target
      # @return [Structure]
      def structure(structure, values, target = nil)
        target = Structure.new(structure.member_names) if target.nil?
        structure.members.each do |member_name, member_shape|
          value_key = member_key(member_shape) || member_name.to_s
          if values.key?(value_key)
            target[member_name] = parse_shape(member_shape, values[value_key])
          elsif member_shape.is_a?(Seahorse::Model::Shapes::List)
            target[member_name] = DefaultList.new
          elsif member_shape.is_a?(Seahorse::Model::Shapes::Map)
            target[member_name] = {}
          end
        end
        target
      end

      def member_key(shape)
        if Seahorse::Model::Shapes::List === shape && flat?(shape)
          shape.member.location_name || shape.location_name
        else
          shape.location_name
        end
      end

      # @param [Seahorse::Model::Shapes::List] list
      # @param [Array] values
      # @return [Array]
      def list(list, values)
        unless flat?(list)
          values = values[list.member.location_name || 'member']
        end
        values = [values] unless values.is_a?(Array)
        values.collect { |value| parse_shape(list.member, value) }
      end

      # @param [Seahorse::Model::Shapes::Map] map
      # @param [Hash] entries
      # @return [Hash]
      def map(map, entries)
        data = {}
        entries = entries['entry'] unless flat?(map)
        entries = [entries] unless entries.is_a?(Array)
        entries.each do |entry|
          key = entry[map.key.location_name || 'key']
          value = entry[map.value.location_name || 'value']
          data[parse_shape(map.key, key)] = parse_shape(map.value, value)
        end
        data
      end

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Object] value
      # @return [Object]
      def parse_shape(shape, value)
        if value.nil?
          case shape
          when Seahorse::Model::Shapes::Structure then structure(shape, {})
          when Seahorse::Model::Shapes::Map then {}
          when Seahorse::Model::Shapes::List then []
          when Seahorse::Model::Shapes::String then ''
          else nil
          end
        else
          case shape
          when Seahorse::Model::Shapes::String then string(shape, value)
          when Seahorse::Model::Shapes::Structure then structure(shape, value)
          when Seahorse::Model::Shapes::List then list(shape, value)
          when Seahorse::Model::Shapes::Map then map(shape, value)
          when Seahorse::Model::Shapes::Boolean then value == 'true'
          when Seahorse::Model::Shapes::Integer then value.to_i
          when Seahorse::Model::Shapes::Float then value.to_f
          when Seahorse::Model::Shapes::Timestamp then timestamp(value)
          when Seahorse::Model::Shapes::Blob then Base64.decode64(value)
          else
            raise "unhandled shape type: `#{shape.type}'"
          end
        end
      end

      def string(shape, value)
        if value.is_a?(Hash)
          decode_string(value)
        else
          value
        end
      end

      def decode_string(value)
        case value['encoding']
        when 'base64' then Base64.decode64(value['__content__'])
        else value['__content__']
        end
      end

      def timestamp(value)
        case value
        when nil then nil
        when /^\d+$/ then Time.at(value.to_i)
        else
          begin
            Time.parse(value)
          rescue ArgumentError
            raise "unhandled timestamp format `#{value}'"
          end
        end
      end

      def flat?(shape)
        !!shape.metadata('flattened')
      end

    end
  end
end
