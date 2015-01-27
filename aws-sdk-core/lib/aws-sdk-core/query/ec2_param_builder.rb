require 'base64'

module Aws
  module Query
    class EC2ParamBuilder

      # @param [ParamList] param_list
      def initialize(param_list)
        @params = param_list
      end

      # @return [ParamList]
      attr_reader :params

      # Serializes the `params` hash onto {#param_list} following the rules
      # provided by `shape`.
      # rules provided by `shape`.
      # @param [Seahorse::Model::Shapes::Structure] shape
      # @param [Hash] params
      # @return [void]
      def apply(shape, params)
        structure(shape, params, '')
      end

      private

      # @param [Seahorse::Model::Shapes::Structure] structure
      # @param [Hash] values
      # @param [String, nil] prefix
      def structure(structure, values, prefix)
        values.each do |name, value|
          unless value.nil?
            member_shape = structure.member(name)
            format(member_shape, value, prefix + query_name(member_shape))
          end
        end
      end

      # @param [Seahorse::Model::Shapes::List] list
      # @param [Array] values
      # @param [String] prefix
      def list(list, values, prefix)
        if values.empty?
          set(prefix, '')
        else
          values.each.with_index do |value, n|
            format(list.member, value, "#{prefix}.#{n+1}")
          end
        end
      end

      # @param [Seahorse::Model::Shapes::Shape] shape
      # @param [Object] value
      # @param [String] prefix
      def format(shape, value, prefix)
        case shape.type
        when 'structure' then structure(shape, value, prefix + '.')
        when 'list'      then list(shape, value, prefix)
        when 'map'       then raise NotImplementedError
        when 'blob'      then set(prefix, Base64.strict_encode64(value.read))
        when 'timestamp'
          set(prefix, shape.format_time(value, 'iso8601').to_s)
        else
          set(prefix, value.to_s)
        end
      end

      def query_name(shape)
        shape.metadata('queryName') || ucfirst(shape.location_name)
      end

      def set(name, value)
        params.set(name, value)
      end

      def ucfirst(str)
        str[0].upcase + str[1..-1]
      end

    end
  end
end
