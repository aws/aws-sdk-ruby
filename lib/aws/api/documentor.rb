module Aws
  module Api
    class Documentor

      def initialize(obj_name, method_name, operation)
        @operation = operation
        @example = DocExample.new(obj_name, method_name, operation)
      end

      def input
        params(nil) do
          if @operation.input
            structure(@operation.input)
          else
            []
          end
        end.join
      end

      def output
        params(nil) do
          if @operation.output
            structure(@operation.output)
          else
            []
          end
        end.join
      end

      def example
        @example
      end

      def clean(docs)
        docs = docs.gsub(/<!--.*?-->/m, '')
        docs = docs.gsub(/<examples?>.+?<\/examples?>/m, '')
        docs = docs.gsub(/<\/?note>/m, '')
        docs = docs.gsub(/\{(\S+)\}/, '`{\1}`')
        docs = docs.gsub(/\s+/, ' ').strip
        docs
      end

      def api_ref(shape)
        docs = shape.nil? ? '' : shape.documentation
        if docs
          "<div class=\"api-ref\">#{clean(docs)}</div>" unless docs.empty?
        end
      end

      private

      def params(shape, &block)
        ['<div class="params">', api_ref(shape)] + yield + ['</div>']
      end

      def param(shape, key_name, value_type, required, &block)
        lines = []
        lines << '<div class="param">'
        lines << entry(shape, key_name, value_type, required)
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
        when Seahorse::Model::Shapes::Structure then structure(shape)
        when Seahorse::Model::Shapes::Map then map(shape)
        when Seahorse::Model::Shapes::List then list(shape)
        else [api_ref(shape)]
        end
      end

      def structure(shape)
        shape.members.inject([]) do |lines, (member_name, member_shape)|
          lines += param(member_shape, member_name, shape_type(member_shape), shape.required.include?(member_name))
        end
      end

      def map(shape)
        param(shape.values, key_name(shape), value_type(shape), false)
      end

      def list(shape)
        case shape.items
        when Seahorse::Model::Shapes::Structure then structure(shape.items)
        when Seahorse::Model::Shapes::Map then map(shape.items)
        when Seahorse::Model::Shapes::List then raise NotImplementedError
        else [api_ref(shape)]
        end
      end

      def entry(shape, key_name, value_type, required)
        classes = ['key']
        classes << 'required' if required
        line = '<div class="entry">'
        line << "<span class=\"#{classes.join(' ')}\">#{key_name.inspect}</span>"
        line << " => #{value_type}"
        line << '</div>'
        line
      end

      def shape_type(shape)
        case shape
        when Seahorse::Model::Shapes::Structure then 'Hash'
        when Seahorse::Model::Shapes::Map then 'Hash'
        when Seahorse::Model::Shapes::List then "Array&lt;#{value_type(shape)}&gt;"
        when Seahorse::Model::Shapes::String then 'String'
        when Seahorse::Model::Shapes::Timestamp then 'Time'
        when Seahorse::Model::Shapes::Integer then 'Integer'
        when Seahorse::Model::Shapes::Float then 'Number'
        when Seahorse::Model::Shapes::Boolean then 'Boolean'
        when Seahorse::Model::Shapes::Blob then 'String,IO'
        else raise "unhandled type #{shape.type}"
        end
      end

      def key_type(shape)
        shape_type(shape.keys)
      end

      def value_type(shape)
        case shape
        when Seahorse::Model::Shapes::List then shape_type(shape.items)
        when Seahorse::Model::Shapes::Map then shape_type(shape.values)
        else raise 'stop'
        end
      end

      def key_name(shape)
        shape.keys.metadata('shape_name')
      end

      def value_name(shape)
        shape.members.metadata('shape_name')
      end

      def leaf?(shape)
        case shape
        when Seahorse::Model::Shapes::Structure then false
        when Seahorse::Model::Shapes::Map then false
        when Seahorse::Model::Shapes::List then leaf?(shape.items)
        else true
        end
      end

    end
  end
end
