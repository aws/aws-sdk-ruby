require 'base64'

module Aws
  module Json
    class Builder

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Hash] params
      # @return [String<JSON>]
      def to_json(shape, params)
        MultiJson.dump(format(shape, params))
      end

      private

      # @param [Seahorse::Model::Shapes::Structure] structure
      # @param [Hash] values
      # @return [Hash]
      def structure(structure, values)
        values.each.with_object({}) do |(key, value), data|
          if structure.member?(key) && !value.nil?
            member_shape = structure.member(key)
            name = member_shape.location_name || key
            data[name] = format(member_shape, value)
          end
        end
      end

      # @param [Seahorse::Model::Shapes::List] list
      # @param [Array] values
      # @return [Array]
      def list(list, values)
        values.collect { |value| format(list.member, value) }
      end

      # @param [Seahorse::Model::Shapes::Map] map
      # @param [Hash] values
      # @return [Hash]
      def map(map, values)
        values.each.with_object({}) do |(key, value), data|
          data[key] = format(map.value, value)
        end
      end

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Object] value
      # @return [Object]
      def format(shape, value)
        case shape.type
        when 'structure' then structure(shape, value)
        when 'list'      then list(shape, value)
        when 'map'       then map(shape, value)
        when 'timestamp' then shape.format_time(value, 'unixTimestamp')
        when 'blob'      then Base64.strict_encode64(value.read)
        else value
        end
      end

    end
  end
end
