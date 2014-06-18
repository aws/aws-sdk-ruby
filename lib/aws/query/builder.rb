require 'base64'

module Aws
  module Query
    class Builder

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [ParamList]
      def to_query_params(params)
        param_list = ParamList.new
        structure(param_list, @rules, nil, params)
        param_list
      end

      # @param [Seahorse::Model::Shapes::Shape] rules
      # @param [Hash] params
      # @return [ParamList]
      def self.to_query_params(rules, params)
        new(rules).to_query_params(params)
      end

      private

      def structure(param_list, shape, prefix, values)
        values.each do |name, value|
          member_shape = shape.members[name]
          param_name = member_shape.serialized_name
          param_name = "#{prefix}.#{param_name}" if prefix
          member(param_list, member_shape, param_name, value)
        end
      end

      def list(param_list, shape, prefix, values)
        if values.empty?
          param_list.set(prefix, '')
          return
        end
        member_shape = shape.members
        if flat?(shape)
          if member_shape.serialized_name
            parts = prefix.split('.')
            parts.pop
            parts.push(member_shape.serialized_name)
            prefix = parts.join('.')
          end
        else
          prefix += '.member'
        end
        values.each_with_index do |value, n|
          member(param_list, member_shape, "#{prefix}.#{n+1}", value)
        end
      end

      def map(param_list, shape, prefix, values)
        key_shape = shape.keys
        value_shape = shape.members
        prefix += '.entry' unless flat?(shape)
        key_name = "%s.%d.#{key_shape.serialized_name || 'key'}"
        value_name  = "%s.%d.#{value_shape.serialized_name || 'value'}"
        n = 1
        values.each_pair do |key, value|
          member(param_list, key_shape, key_name % [prefix, n], key)
          member(param_list, value_shape, value_name % [prefix, n], value)
          n += 1
        end
      end

      def member(param_list, shape, prefix, value)
        case shape
        when StructureShape then structure(param_list, shape, prefix, value)
        when ListShape then list(param_list, shape, prefix, value)
        when MapShape then map(param_list, shape, prefix, value)
        when TimestampShape then timestamp(param_list, shape, prefix, value.utc)
        when BlobShape then blob(param_list, shape, prefix, value)
        else param_list.set(prefix, value.to_s)
        end
      end

      def timestamp(param_list, shape, prefix, value)
        value = case shape
          when Iso8601TimestampShape then value.iso8601
          when Rfc822TimestampShape then value.rfc822
          when UnixTimestampShape then value.to_i.to_s
          else raise "invalid timestamp format `#{shape.class.name}'"
        end
        param_list.set(prefix, value)
      end

      def blob(param_list, shape, prefix, value)
        param_list.set(prefix, Base64.strict_encode64(value))
      end

      def flat?(shape)
        FlatListShape === shape || FlatMapShape === shape
      end

    end
  end
end
