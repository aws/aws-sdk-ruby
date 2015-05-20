require 'base64'
require 'time'

module Aws
  module Json
    class Parser

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [String<JSON>] json
      # @param [Hash, Array, nil] target
      # @return [Hash]
      def parse(shape, json, target = nil)
        parse_shape(shape, MultiJson.load(json, max_nesting: false), target)
      end

      private

      # @param [Seahorse::Model::Shapes::Structure] structure
      # @param [Hash] values
      # @param [Hash, nil] target
      # @return [Struct]
      def structure(structure, values, target = nil)
        target = Structure.new(structure.member_names) if target.nil?
        values.each do |serialized_name, value|
          member_name, shape = structure.member_by_location_name(serialized_name)
          if shape
            target[member_name] = parse_shape(shape, value)
          end
        end
        target
      end

      # @param [Seahorse::Model::Shapes::List] list
      # @param [Array] values
      # @param [Array, nil] target
      # @return [Array]
      def list(list, values, target = nil)
        target = [] if target.nil?
        values.each { |value| target << parse_shape(list.member, value) }
        target
      end

      # @param [Seahorse::Model::Shapes::Map] map
      # @param [Hash] values
      # @return [Hash]
      def map(map, values, target = nil)
        target = {} if target.nil?
        values.each do |key, value|
          target[key] = parse_shape(map.value, value)
        end
        target
      end

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Object] value
      # @param [Hash, Array, nil] target
      # @return [Object]
      def parse_shape(shape, value, target = nil)
        if value.nil?
          nil
        else
          case shape
          when Seahorse::Model::Shapes::Structure then structure(shape, value, target)
          when Seahorse::Model::Shapes::List then list(shape, value, target)
          when Seahorse::Model::Shapes::Map then map(shape, value, target)
          when Seahorse::Model::Shapes::Timestamp then time(value)
          when Seahorse::Model::Shapes::Blob then Base64.decode64(value)
          when Seahorse::Model::Shapes::Boolean then value.to_s == 'true'
          else value
          end
        end
      end

      # @param [String, Integer] value
      # @return [Time]
      def time(value)
        value.is_a?(Numeric) ? Time.at(value) : Time.parse(value)
      end

    end
  end
end
