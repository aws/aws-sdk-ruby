module AwsSdkCodeGenerator
  module Generators
    class SharedExample

      include Helper

      def initialize(example:, operation_name:, operation:, api:)
        @example = example
        @operation_name = operation_name
        @operation = operation
        @api = api
        @method_name = underscore(operation_name)
      end

      def to_s
        lines = []
        lines << "@example Example: #{@example['description']}"
        lines << ""
        lines << input_example
        lines << output_example
        lines.join("\n")
      end

      private

      def input_example
        "  resp = client.#{@method_name}(#{input_params})"
      end

      def input_params
        if @example['input'] && @operation['input']
          entry(@example['input'], @operation['input'], indent = '  ', path = []).join("\n")
        else
          ''
        end
      end

      def output_example
        ""
      end





#      def foo
#        apply_lines
#
#        line = []
#        lines << "@example Example: #{@description}"
#
#        parts << "  # #{json_ex['description']}\n\n"
#        parts += input.lines.map { |line| "  " + line }
#        if json_ex['output']
#          output_comments = json_ex['comments']['output']
#          output = SharedExample.new(json_ex['output'], method_name, operation, output_comments).to_str_output
#          parts << "\n\n  # resp.to_h outputs the following:\n"
#          parts += output.lines.map { |line| "  " + line }
#        end
#      end
#
#      def to_str_input
#        lines = structure(@params, @operation.input, "", [])
#        params = lines.join("\n")
#        "resp = client.#{@method_name}(#{params})"
#      end
#
#      def to_str_output
#        lines = structure(@params, @operation.output, "", [])
#        params = lines.join("\n")
#        "#{params}"
#      end

      def entry(json, ref, indent, path, comments)
        case shape(ref)['type']
        when 'structure' then structure(json, ref, indent, path)
        when 'map' then map(json, ref, indent, path)
        when 'list' then list(json, ref, indent, path)
        when 'timestamp' then "Time.parse(#{json.inspect})"
        when 'string', 'blob', 'integer', 'long', 'float', 'double'
          json.inspect
        else
          raise ArgumentError, "unhandled type #{shape(ref)['type'].inspect}"
        end
      end

      def structure(json, ref, indent, path)
        lines = ["{"]
        json.each_pair do |key, val|
          path << ".#{key}"
          shape_val = entry(val, shape(ref)['members'][key], "#{indent}  ", path)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  #{underscore(key)}: #{shape_val},#{comments(path)}"
          path.pop
        end
        lines << "#{indent}}"
        lines
      end

      def map(json, ref, indent, path)
        lines = ["{"]
        json.each do |key, val|
          path << ".#{key}"
          shape_val = entry(val, shape(ref)['value'], "#{indent}  ", path)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  \"#{key}\" => #{shape_val},#{comments(path)}"
          path.pop
        end
        lines << "#{indent}}"
        lines
      end

      def list(json, ref, indent, path)
        lines = ["["]
        json.each_with_index do |value, index|
          path << "[#{index}]"
          shape_val = entry(value, shape(ref)['member'], "#{indent}  ", path)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  #{shape_val},#{comments(path)}"
          path.pop
        end
        lines << "#{indent}]"
        lines
      end

      def comments(path)
        key = path.join().sub(/^\./, '')
        if @comments && @comments[key]
          " # #{@comments[key]}"
        else
          ""
        end
      end

    end
  end
end
