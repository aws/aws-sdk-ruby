module Aws
  module Api
    class Documentor

      include Seahorse::Model::Shapes

      def initialize(obj_name, method_name, operation)
        @operation = operation
        @example = DocExample.new(obj_name, method_name, operation)
      end

      def input
        params('') do
          structure(@operation.input)
        end.join
      end

      def output
        params('') do
          structure(@operation.output)
        end.join
      end

      def example
        @example
      end

      def api_ref(shape)
        docs = shape.is_a?(String) ? shape : shape.documentation
        if docs
          docs = docs.strip if docs
          "<div class=\"api-ref\">#{docs}</div>" unless docs.empty?
        end
      end

      private

      def params(shape, &block)
        ['<div class="params">', api_ref(shape)] + yield + ['</div>']
      end

      def param(shape, key_name, value_type, &block)
        lines = []
        lines << '<div class="param">'
        lines << entry(shape, key_name, value_type)
        yield(lines) if block_given?
        lines += nested_params(shape)
        lines << '</div>'
        lines
      end

      def nested_params(shape)
        if leaf?(shape)
          nested(shape)
        else
          params(shape) { nested(shape) }
        end
      end

      def nested(shape)
        case shape
        when StructureShape then structure(shape)
        when MapShape then map(shape)
        when ListShape then list(shape)
        else [api_ref(shape)]
        end
      end

      def structure(shape)
        shape.members.inject([]) do |lines, (member_name, member_shape)|
          lines += param(member_shape, member_name, shape_type(member_shape))
        end
      end

      def map(shape)
        param(shape.members, key_name(shape), value_type(shape))
      end

      def list(shape)
        case shape.members
        when StructureShape then structure(shape.members)
        when MapShape then map(shape.members)
        when ListShape then raise NotImplementedError
        else [api_ref(shape)]
        end
      end

      def entry(shape, key_name, value_type)
        classes = ['key']
        classes << 'required' if shape.required
        line = '<div class="entry">'
        line << "<span class=\"#{classes.join(' ')}\">#{key_name.inspect}</span>"
        line << " => #{value_type}"
        line << '</div>'
        line
      end

      def shape_type(shape)
        case shape
        when StructureShape then 'Hash'
        when MapShape then 'Hash'
        when ListShape then "Array&lt;#{value_type(shape)}&gt;"
        when StringShape then 'String'
        when TimestampShape then 'Time'
        when IntegerShape then 'Integer'
        when FloatShape then 'Number'
        when BooleanShape then 'Boolean'
        when BlobShape then 'String,IO'
        else raise "unhandled type #{shape.type}"
        end
      end

      def key_type(shape)
        shape_type(shape.keys)
      end

      def value_type(shape)
        shape_type(shape.members)
      end

      def key_name(shape)
        shape.keys.metadata['shape_name']
      end

      def value_name(shape)
        shape.members.metadata['shape_name']
      end

      def leaf?(shape)
        case shape
        when StructureShape then false
        when MapShape then false
        when ListShape then leaf?(shape.members)
        else true
        end
      end

    end
  end
end
