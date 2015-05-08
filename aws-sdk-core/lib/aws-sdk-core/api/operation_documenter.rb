module Aws
  module Api
    class OperationDocumenter

      include Seahorse::Model::Shapes

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

      def api_ref(ref)
        if ref
          doc = ref.documentation
          docs ||= ref.shape.documentation if ref.respond_to?(:shape)
        end
        docs ||= ''
        if docs && !docs.empty?
          "<div class=\"api-ref\">#{clean(docs)}</div>"
        end
      end

      private

      def params(ref, &block)
        if ref && ref.shape.name == 'AttributeValue'
          ['<p>An attribute value may be one of:<ul><li>`Hash`</li><li>`Array`</li><li>`String`</li><li>`Numeric`</li><li>`true` | `false`</li><li>`nil`</li><li>`IO`</li><li>`Set<String,Numeric,IO>`</li></ul></p>']
        else
          ['<div class="params">', api_ref(ref)] + yield + ['</div>']
        end
      end

      def param(ref, key_name, value_type, required, visited, &block)
        lines = []
        lines << '<div class="param">'
        lines << entry(ref, key_name, value_type, required, visited)

        if visited.include?(ref)
          lines << "AttributeValue, recursive"
        else
          visited = visited + [ref]
          yield(lines) if block_given?
          lines += nested_params(ref, visited)
        end

        lines << '</div>'
        lines
      end

      def nested_params(ref, visited)
        if leaf?(ref)
          nested(ref, visited)
        else
          params(ref) { nested(ref, visited) }
        end
      end

      def nested(ref, visited)
        case ref.shape
        when StructureShape then structure(ref, visited)
        when MapShape then map(ref, visited)
        when ListShape then list(ref, visited)
        else [api_ref(ref)]
        end
      end

      def structure(ref, visited)
        ref.shape.members.inject([]) do |lines, (member_name, member_ref)|
          lines += param(member_ref, member_name, shape_type(member_ref), ref.shape.required.include?(member_name), visited)
        end
      end

      def map(ref, visited)
        param(ref.shape.value, key_name(ref), value_type(ref), false, visited)
      end

      def list(ref, visited)
        case ref.shape.member
        when StructureShape then structure(ref.shape.member, visited)
        when MapShape then map(ref.shape.member, visited)
        when ListShape then raise NotImplementedError
        else [api_ref(ref)]
        end
      end

      def entry(ref, key_name, value_type, required, visited)
        classes = ['key']
        classes << 'required' if required
        line = '<div class="entry">'
        line << "<span class=\"#{classes.join(' ')}\">#{key_name.inspect}</span>"
        line << " => #{value_type}"
        line << '</div>'
        line
      end

      def shape_type(ref)
        case ref.shape
        when StructureShape then 'Hash'
        when MapShape then 'Hash'
        when ListShape then "Array&lt;#{value_type(ref)}&gt;"
        when StringShape then 'String'
        when TimestampShape then 'Time'
        when IntegerShape then 'Integer'
        when FloatShape then 'Number'
        when BooleanShape then 'Boolean'
        when BlobShape then 'String,IO'
        else raise "unhandled type #{ref.shape.type}"
        end
      end

      def key_type(ref)
        shape_type(ref.shape.key)
      end

      def value_type(ref)
        case ref.shape
        when ListShape then shape_type(ref.shape.member)
        when MapShape then shape_type(ref.shape.value)
        else raise 'stop'
        end
      end

      def key_name(ref)
        ref.shape.key.shape.name
      end

      def leaf?(ref)
        case ref.shape
        when StructureShape then false
        when MapShape then false
        when ListShape then leaf?(ref.shape.member)
        else true
        end
      end

    end
  end
end
