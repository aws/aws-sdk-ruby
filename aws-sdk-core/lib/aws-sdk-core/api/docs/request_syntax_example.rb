module Aws
  module Api
    module Docs
      class RequestSyntaxExample

        include Utils
        include Seahorse::Model::Shapes

        def self.tag(*args)
          new(*args).build_tag
        end

        def initialize(method_name, operation)
          @method_name = method_name
          @operation = operation
          @streaming_output = !!(
            @operation.output &&
            @operation.output[:payload] &&
            @operation.output[:payload_member]['streaming']
          )
        end

        def build_tag
          parts = []
          parts << "@example Request syntax with placeholder values\n\n"
          parts += to_str.lines.map { |line| "  " + line }
          tag(parts.join)
        end

        private

        def to_str
          "resp = client.#{@method_name}(#{params[1...-1]})"
        end

        private

        def params
          return '' if @operation.input.nil?
          structure(@operation.input, '', [])
        end

        def structure(ref, i, visited)
          lines = ['{']
          if @streaming_output
            lines << "#{i}  response_target: '/path/to/file', # optional IO object or file path"
          end
          shape = ref.shape
          shape.members.each do |member_name, member_ref|
            nested = "#{i}  #{member_name}: #{member(member_ref, i + '  ', visited)},"
            if member_ref.required
              # add a required comment to the first line
              nested = nested.lines
              if nested[0].match(/\n$/)
                nested[0] = "#{nested[0].rstrip} # required\n"
              elsif nested[0].match(/# one of/)
                nested[0] = nested[0].sub('# one of', '# required, one of')
              else
                nested[0] = "#{nested[0]} # required"
              end
              nested = nested.join
            end
            lines << nested
          end
          lines << "#{i}}"
          lines.join("\n")
        end

        def map(ref, i, visited)
          if multiline?(ref.shape.value)
            multiline_map(ref, i, visited)
          else
            "{ #{key_name(ref)} => #{value(ref.shape.value)} }"
          end
        end

        def multiline_map(ref, i, visited)
          lines = ["{"]
          lines << "#{i}  #{key_name(ref)} => #{member(ref.shape.value, i + '  ', visited)},"
          lines << "#{i}}"
          lines.join("\n")
        end

        def list(ref, i, visited)
          if multiline?(ref.shape.member)
            multiline_list(ref, i, visited)
          else
            "[#{value(ref.shape.member)}, '...']"
          end
        end

        def multiline_list(ref, i, visited)
          lines = ["["]
          lines << "#{i}  #{member(ref.shape.member, i + '  ', visited)},"
          lines << "#{i}]"
          lines.join("\n")
        end

        def member(ref, i, visited)
          if visited.include?(ref.shape.name)
            recursive = ['{']
            recursive << "#{i}  # recursive #{ref.shape.name} ..."
            recursive << "#{i}}"
            return recursive.join("\n")
          elsif ref.shape.name == 'AttributeValue'
            msg='"value", #<Hash,Array,String,Numeric,Boolean,nil,IO,Set>'
            return msg
          else
            visited = visited + [ref.shape.name]
          end
          case ref.shape
          when StructureShape then structure(ref, i, visited)
          when MapShape then map(ref, i, visited)
          when ListShape then list(ref, i, visited)
          else value(ref)
          end
        end

        def value(ref)
          case ref.shape
          when StringShape then string_value(ref)
          when IntegerShape then 1
          when FloatShape then 1.1
          when BooleanShape then true
          when TimestampShape then 'Time.now'
          when BlobShape then "#{shape_name(ref, false)}<String,IO>".inspect
          else raise "unhandled shape type `#{ref.shape.class.name}'"
          end
        end

        def string_value(ref)
          if enum = ref.shape.enum
            #ref.shape.enum.to_a.join('|').inspect
            "#{enum.first.inspect}, # one of #{enum.to_a.join(', ')}"
          else
            shape_name(ref)
          end
        end

        def multiline?(ref)
          shape = ref.shape
          StructureShape === shape || ListShape === shape || MapShape === shape
        end

        def shape_name(ref, inspect = true)
          value = ref.shape.name
          inspect ? value.inspect : value
        end

        def key_name(ref, inspect = true)
          shape_name(ref.shape.key)
        end

      end
    end
  end
end
