module Aws
  module Api
    module Docs
      class RequestSyntaxExample

        include Utils
        include Seahorse::Model::Shapes

        def initialize(method_name, operation)
          @method_name = method_name
          @operation = operation
          @streaming_output = !!(
            @operation.output &&
            @operation.output[:payload] &&
            @operation.output[:payload_member]['streaming']
          )
          @recursive_shapes = Set.new
          @recursive_shapes = compute_recursive_shapes(@operation.input)
        end

        def to_str
          "resp = client.#{@method_name}(#{params})"
        end

        def params
          if @operation.input
            ref_value(@operation.input, '', [])
          else
            ''
          end
        end

        private

        def struct(ref, i, visited)
          lines = ['{']
          apply_response_target_param(ref, lines, i)
          ref.shape.members.each do |member_name, member_ref|
            lines << struct_member(member_name, member_ref, i, visited)
          end
          lines << "#{i}}"
          lines.join("\n")
        end

        def struct_member(member_name, member_ref, i, visited)
          entry = "#{i}  #{member_name}: #{ref_value(member_ref, i + '  ', visited)},"
          apply_comments(member_ref, entry)
        end

        def ref_value(ref, i, visited)
          if visited.include?(ref.shape)
            return "{\n#{i}  # recursive #{ref.shape.name}\n#{i}}"
          else
            visited  = visited + [ref.shape]
          end
          case ref.shape
          when StructureShape
            if ref.shape.name == 'AttributeValue'
              '"value"'
            else
              struct(ref, i, visited)
            end
          when ListShape then list(ref, i, visited)
          when MapShape then map(ref, i, visited)
          when BlobShape then '"data"'
          when BooleanShape then "true"
          when IntegerShape then '1'
          when FloatShape then '1.0'
          when StringShape then string(ref)
          when TimestampShape then 'Time.now'
          else raise "unsupported shape #{ref.shape.class.name}"
          end
        end

        def list(ref, i, visited)
          if scalar?(ref.shape.member)
            scalar_list(ref.shape.member, i, visited)
          else
            complex_list(ref.shape.member, i, visited)
          end
        end

        def scalar_list(ref, i, visited)
          "[#{ref_value(ref, i, visited)}]"
        end

        def complex_list(ref, i, visited)
          "[\n#{i}  #{ref_value(ref, i + '  ', visited)},\n#{i}]"
        end

        def map(ref, i, visited)
          key = string(ref.shape.key)
          value = ref_value(ref.shape.value, i + '  ', visited)
          "{\n#{i}  #{key} => #{value},#{comments(ref.shape.value)}\n#{i}}"
        end

        def string(ref)
          if ref.shape.enum
            ref.shape.enum.first.inspect
          elsif ref.shape.name
            ref.shape.name.inspect
          else
            '"string"'
          end
        end

        def apply_response_target_param(ref, lines, i)
          if @streaming_output && ref == @operation.input
            lines << "#{i}  response_target: '/path/to/file', # optional file path or IO object"
          end
        end

        def apply_comments(ref, text)
          lines = text.lines
          if lines[0].match(/\n$/)
            lines[0] = lines[0].sub(/\n$/, comments(ref) + "\n")
          else
            lines[0] += comments(ref)
          end
          lines.join
        end

        def comments(ref)
          comments = []
          comments << 'required' if ref.required
          if enum = enum_values(ref)
            comments << "accepts #{enum.to_a.join(', ')}"
          end
          comments << 'accepts <Hash,Array,String,Numeric,Boolean,IO,Set,nil>' if ddb_av?(ref)
          comments == [] ? '' : " # #{comments.join(', ')}"
        end

        def recursive?(ref)
          @recursive_shapes.include?(ref.shape)
        end

        def enum_values(ref)
          case ref.shape
          when ListShape then enum_values(ref.shape.member)
          when StringShape then ref.shape.enum
          else nil
          end
        end

        def complex?(ref)
          if StructureShape === ref.shape
            !ddb_av?(ref)
          else
            ListShape === ref.shape || MapShape === ref.shape
          end
        end

        def scalar?(ref)
          !complex?(ref)
        end

        def ddb_av?(ref)
          case ref.shape
          when ListShape then ddb_av?(ref.shape.member)
          when StructureShape then ref.shape.name == 'AttributeValue'
          else false
          end
        end

        def compute_recursive_shapes(ref, visited = [])
          # terminal case for recursion
          if ref.nil?
            return
          elsif visited.include?(ref.shape)
            @recursive_shapes << ref.shape
            return
          else
            visited += [ref.shape]
          end

          case ref.shape
          when StructureShape
            ref.shape.members.each do |_, member_ref|
              compute_recursive_shapes(member_ref, visited)
            end
          when ListShape
            compute_recursive_shapes(ref.shape.member, visited)
          when MapShape
            compute_recursive_shapes(ref.shape.key, visited)
            compute_recursive_shapes(ref.shape.value, visited)
          end
        end

      end
    end
  end
end
