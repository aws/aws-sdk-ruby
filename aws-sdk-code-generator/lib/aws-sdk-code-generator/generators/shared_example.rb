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
        lines << ""
        lines << "@example Example: #{@example['description']}"
        lines << ""
        apply_input_example(lines)
        apply_output_example(lines)
        lines.join("\n")
      end

      private

      def apply_input_example(lines)
        lines << "  resp = client.#{@method_name}(#{input_params})"
      end

      def input_params
        if @example['input'] && @operation['input']
          entry(
            @example['input'],
            @operation['input'],
            indent = '  ',
            path = [],
            @example['comments']['input']
          ).join("\n")
        else
          ''
        end
      end

      def apply_output_example(lines)
        if @example['output'] && @operation['output']
          lines << ""
          lines << "  # resp.to_h outputs the following:"
          lines << "  " + entry(
              @example['output'],
              @operation['output'],
              indent = '  ',
              path = [],
              @example['comments']['output']
          ).join("\n")
        end
      end

      def entry(json, ref, indent, path, comments)
        case shape(ref)['type']
        when 'structure' then structure(json, ref, indent, path, comments)
        when 'map' then map(json, ref, indent, path, comments)
        when 'list' then list(json, ref, indent, path, comments)
        when 'timestamp' then "Time.parse(#{json.inspect})"
        when 'string', 'blob', 'integer', 'long', 'float', 'double', 'boolean'
          json.inspect
        else
          raise ArgumentError, "unhandled type #{shape(ref)['type'].inspect}"
        end
      end

      def structure(json, ref, indent, path, comments)
        lines = ["{"]
        json.each_pair do |key, val|
          path << ".#{key}"
          shape_val = entry(val, shape(ref)['members'][key], "#{indent}  ", path, comments)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  #{underscore(key)}: #{shape_val},#{comments_for(path, comments)}"
          path.pop
        end
        lines << "#{indent}}"
        lines
      end

      def map(json, ref, indent, path, comments)
        lines = ["{"]
        json.each do |key, val|
          path << ".#{key}"
          shape_val = entry(val, shape(ref)['value'], "#{indent}  ", path, comments)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  \"#{key}\" => #{shape_val},#{comments_for(path, comments)}"
          path.pop
        end
        lines << "#{indent}}"
        lines
      end

      def list(json, ref, indent, path, comments)
        lines = ["["]
        json.each_with_index do |value, index|
          path << "[#{index}]"
          shape_val = entry(value, shape(ref)['member'], "#{indent}  ", path, comments)
          if shape_val.is_a?(Array)
            shape_val = shape_val.join("\n")
          end
          lines << "#{indent}  #{shape_val},#{comments_for(path, comments)}"
          path.pop
        end
        lines << "#{indent}]"
        lines
      end

      def comments_for(path, comments)
        path = path.join().sub(/^\./, '')
        if comments.key?(path)
          " # #{comments[path]}"
        else
          ""
        end
      end

    end
  end
end
