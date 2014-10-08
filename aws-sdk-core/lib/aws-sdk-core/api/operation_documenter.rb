module Aws
  module Api
    class OperationDocumenter

      def initialize(options)
        @operation = options[:operation]
        @example = OperationExample.new(options)
      end

      def input
        params(nil) do
          if @operation.input
            lines = []
            if @operation.output
              lines << '<div class="param"><div class="entry"><span class="key">:response_target</span> => String, Pathname, File</div>Optional path to a file or file object where the HTTP response body should be written.</div>'
            end
            lines + structure(@operation.input, [])
          else
            []
          end
        end.join
      end

      def output
        params(nil) do
          if @operation.output
            structure(@operation.output, [])
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
        if docs && !docs.empty?
          "<div class=\"api-ref\">#{clean(docs)}</div>"
        end
      end

      private

      def params(shape, &block)
        if shape && shape.name == 'AttributeValue'
          ['<p>An attribute value may be one of:<ul><li>`Hash`</li><li>`Array`</li><li>`String`</li><li>`Numeric`</li><li>`true` | `false`</li><li>`nil`</li><li>`IO`</li><li>`Set<String,Numeric,IO>`</li></ul></p>']
        else
          ['<div class="params">', api_ref(shape)] + yield + ['</div>']
        end
      end

      def param(shape, key_name, value_type, required, visited, &block)
        lines = []
        lines << '<div class="param">'
        lines << entry(shape, key_name, value_type, required, visited)

        if visited.include?(shape)
          lines << "AttributeValue, recursive"
        else
          visited = visited + [shape]
          yield(lines) if block_given?
          lines += nested_params(shape, visited)
        end

        lines << '</div>'
        lines
      end

      def nested_params(shape, visited)
        if leaf?(shape)
          nested(shape, visited)
        else
          params(shape) { nested(shape, visited) }
        end
      end

      def nested(shape, visited)
        case shape
        when Seahorse::Model::Shapes::Structure then structure(shape, visited)
        when Seahorse::Model::Shapes::Map then map(shape, visited)
        when Seahorse::Model::Shapes::List then list(shape, visited)
        else [api_ref(shape)]
        end
      end

      def structure(shape, visited)
        shape.members.inject([]) do |lines, (member_name, member_shape)|
          lines += param(member_shape, member_name, shape_type(member_shape), shape.required.include?(member_name), visited)
        end
      end

      def map(shape, visited)
        param(shape.value, key_name(shape), value_type(shape), false, visited)
      end

      def list(shape, visited)
        case shape.member
        when Seahorse::Model::Shapes::Structure then structure(shape.member, visited)
        when Seahorse::Model::Shapes::Map then map(shape.member, visited)
        when Seahorse::Model::Shapes::List then raise NotImplementedError
        else [api_ref(shape)]
        end
      end

      def entry(shape, key_name, value_type, required, visited)
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
        shape_type(shape.key)
      end

      def value_type(shape)
        case shape
        when Seahorse::Model::Shapes::List then shape_type(shape.member)
        when Seahorse::Model::Shapes::Map then shape_type(shape.value)
        else raise 'stop'
        end
      end

      def key_name(shape)
        shape.key.metadata('shape')
      end

      def value_name(shape)
        shape.members.metadata('shape')
      end

      def leaf?(shape)
        case shape
        when Seahorse::Model::Shapes::Structure then false
        when Seahorse::Model::Shapes::Map then false
        when Seahorse::Model::Shapes::List then leaf?(shape.member)
        else true
        end
      end

    end
  end
end
