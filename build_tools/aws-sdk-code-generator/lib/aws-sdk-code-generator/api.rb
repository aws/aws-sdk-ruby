module AwsSdkCodeGenerator
  module Api
    class << self

      # @param [Hash, String] shape_or_shape_ref
      # @param [Hash, String] api
      # @return [String, nil]
      def docstring(shape_or_shape_ref, api)
        ref, shape = resolve(shape_or_shape_ref, api)
        ref['documentation'] || shape['documentation']
      end

      # @param [Hash, String] shape_or_shape_ref
      # @param [Hash, String] api
      # @return [Hash<ShapeRef>, Hash<Shape>]
      def resolve(shape_or_shape_ref, api)
        if String === shape_or_shape_ref
          [{}, api['shapes'][shape_or_shape_ref]]
        elsif shape_or_shape_ref['type']
          [{}, shape_or_shape_ref]
        else
          [shape_or_shape_ref, api['shapes'][shape_or_shape_ref['shape']]]
        end
      end

      def shape(shape_ref, api)
        if shape_ref
          api.fetch('shapes').fetch(shape_ref.fetch('shape'))
        end
      end

      def ruby_input_type(shape_ref, api, options = {})
        nested = options.fetch(:nested, false)
        _, shape = resolve(shape_ref, api)
        case shape['type']
        when 'byte' then 'Integer<byte>'
        when 'blob' then 'String, IO'
        when 'boolean' then 'Boolean'
        when 'character' then 'String<character>'
        when 'double' then 'Float'
        when 'float' then 'Float'
        when 'integer' then 'Integer'
        when 'list'
          if nested
            "Array"
          else
            "Array<#{ruby_input_type(shape['member'], api, nested: true)}>"
          end
        when 'long' then 'Integer'
        when 'map'
          if nested
            "Hash"
          else
            "Hash<String,#{ruby_input_type(shape['value'], api, nested: true)}>"
          end
        when 'string' then 'String'
        when 'structure' then "Types::#{shape_ref['shape']}"
        when 'timestamp' then 'Time,DateTime,Date,Integer,String'
        else
          raise "unhandled type #{shape.type}.inspect"
        end
      end

      def ruby_type(shape_ref, api)
        _, shape = resolve(shape_ref, api)
        case shape['type']
        when 'blob' then streaming?(shape_ref, api) ? 'IO' : 'String'
        when 'boolean' then 'Boolean'
        when 'byte' then 'Integer<byte>'
        when 'character' then 'String<character>'
        when 'double' then 'Float'
        when 'float' then 'Float'
        when 'integer' then 'Integer'
        when 'list' then "Array<#{ruby_type(shape['member'], api)}>"
        when 'long' then 'Integer'
        when 'map' then "Hash<String,#{ruby_type(shape['value'], api)}>"
        when 'string' then 'String'
        when 'structure' then "Types::#{shape_ref['shape']}"
        when 'timestamp' then 'Time'
        else
          raise "unhandled type #{shape['type'].inspect}"
        end
      end

      # @return [Boolean]
      def streaming?(shape_or_shape_ref, api)
        ref, shape = resolve(shape_or_shape_ref, api)
        ref['streaming'] || shape['streaming']
      end

    end
  end
end
