require 'base64'

module Aws
  module Query
    class ParamBuilder

      # @param [ParamList] param_list
      def initialize(param_list)
        @params = param_list
      end

      # @param [ParamList]
      attr_reader :params

      # Serializes the `params` hash onto {#param_list} following the rules
      # provided by `shape`.
      # rules provided by `shape`.
      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Hash] params
      # @return [void]
      def apply(shape, params)
        structure(shape, params, nil)
      end

      private

      # @param [Seahorse::Model::Shapes::Structure] structure
      # @param [Hash] values
      # @param [String, nil] prefix
      def structure(structure, values, prefix)
        values.each do |name, value|
          member_shape = structure.member(name)
          member_prefix = query_name(member_shape)
          member_prefix = "#{prefix}.#{member_prefix}" if prefix
          format(member_shape, value, member_prefix)
        end
      end

      # @param [Seahorse::Model::Shapes::List] list
      # @param [Array] values
      # @param [String] prefix
      def list(list, values, prefix)
        if values.empty?
          params.set(prefix, '')
          return
        end
        if query_flat?(list)
          # prefix is correct
        elsif flat?(list)
          if name = query_name(list.member)
            parts = prefix.split('.')
            parts.pop
            parts.push(name)
            prefix = parts.join('.')
          end
        else
          prefix += '.member'
        end
        values.each.with_index do |value, n|
          format(list.member, value, "#{prefix}.#{n+1}")
        end
      end

      # @param [Seahorse::Model::Shapes::Map] map
      # @param [Hash] values
      # @param [String] prefix
      def map(map, values, prefix)
        prefix += '.entry' unless flat?(map)
        key_name = "%s.%d.#{query_name(map.key, 'key')}"
        value_name  = "%s.%d.#{query_name(map.value, 'value')}"
        values.each.with_index do |(key, value), n|
          format(map.key, key, key_name % [prefix, n + 1])
          format(map.value, value, value_name % [prefix, n + 1])
        end
      end

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Object] value
      # @param [String] prefix
      def format(shape, value, prefix)
        case shape.type
        when 'structure' then structure(shape, value, prefix)
        when 'list'      then list(shape, value, prefix)
        when 'map'       then map(shape, value, prefix)
        when 'blob'      then params.set(prefix, Base64.strict_encode64(value))
        when 'timestamp'
          params.set(prefix, shape.format_time(value, 'iso8601').to_s)
        else
          params.set(prefix, value.to_s)
        end
      end

      def flat?(shape)
        !!shape.metadata('flattened')
      end

      def query_flat?(shape)
        !!shape.metadata('queryFlattened')
      end

      def query_name(shape, default = nil)
        shape.metadata('queryName') || shape.location_name || default
      end

    end
  end
end
