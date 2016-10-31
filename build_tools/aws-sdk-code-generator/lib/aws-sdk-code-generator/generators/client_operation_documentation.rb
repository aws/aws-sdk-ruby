module AwsSdkCodeGenerator
  module Generators
    class ClientOperationDocumentation

      include Helper

      def self.apply(options)
        new(options).apply(options)
      end

      # @option options [required, Hash] :api
      # @option options [required, String] :service_identifier
      # @option options [required, String] :operation_name
      # @option options [required, Hash] :operation
      # @option options [Hash] :examples
      def initialize(options)
        @api = options.fetch(:api)
        @service_id = options.fetch(:service_identifier)
        @operation_name = options.fetch(:operation_name)
        @method_name = underscore(@operation_name)
        @operation = options.fetch(:operation)
        @examples = options.fetch(:examples, nil) || { 'examples' => {} }
      end

      def apply(options)
        method = options.fetch(:method)
        method.docstring do |docstring|
          apply_operation_docs(docstring)
          apply_option_tags(docstring)
          apply_return_tags(docstring)
          apply_shared_examples(docstring)
          apply_examples_from_disk(docstring)
          apply_request_syntax_example(docstring)
          apply_response_struture_example(docstring)
          apply_overload_tag(docstring)
        end
      end

      private

      def apply_operation_docs(docstring)
        docstring.append(markdown(@operation['documentation']))
      end

      def apply_option_tags(docstring)
        # document the `:response_target` option if the response is streaming
        if output = shape(@operation['output'])
          if output['payload'] && output['members'][output['payload']]['streaming']
            docstring.lines.concat(Dsl::OptionTag.new(
              name: 'response_target',
              type: 'String, IO',
              param: 'params',
              required: false,
              docstring: 'Where to write response data, file path, or IO object.'
            ).lines)
          end
        end

        if input_shape = shape(@operation['input'])
          required = input_shape['required'] || []
          input_shape['members'].each_pair do |member_name, member_ref|
            docstring.lines.concat(Dsl::OptionTag.new(
              name: underscore(member_name),
              type: ruby_input_type(member_ref),
              param: 'params',
              required: required.include?(member_name),
              docstring: documentation(member_ref),
            ).lines)
          end
        end
      end

      def apply_return_tags(docstring)
        output_shape = shape(@operation['output'])
        resp = '{Seahorse::Client::Response response}'
        if output_shape && output_shape['members'].size > 0
          type = ruby_type(@operation['output'])
          returns = "@return [#{type}] Returns a #{resp} object which responds to "
          returns << "the following methods:\n\n"
          output_shape['members'].each_pair do |mname, mref|
            mtype = ruby_type(mref).gsub(/</, '&lt;').gsub(/>/, '&gt;')
            returns << "  * {#{type}##{underscore(mname)} ##{mname}} => #{mtype}\n"
          end
          docstring.append(returns)
        else
          docstring.append("@return [Struct] Returns an empty #{resp}.")
        end
      end

      def apply_shared_examples(docstring)
        (@examples[@operation_name] || []).size.times do |n|
          begin
            # TODO : known issue with an ec2 shared example that
            #        attempts to document a member that is not
            #        present in the model any longer (intentionally
            #        removed in customizations) - raises runtime
            #        error. This should be cleaned up.
            docstring.append(
              SharedExample.new(
                operation_name: @operation_name,
                api: @api,
                examples: @examples,
                example: n
              ).to_s
            )
          rescue
          end
        end
      end

      def apply_shared_example(docstring, example)
        return

        input_comments = json_ex['comments']['input']
        input = SharedExample.new(json_ex['input'], method_name, operation, input_comments).to_str_input
        parts = []
        parts << "@example Example: #{json_ex['title']}\n\n"
        parts << "  # #{json_ex['description']}\n\n"
        parts += input.lines.map { |line| "  " + line }
        if json_ex['output']
          output_comments = json_ex['comments']['output']
          output = SharedExample.new(json_ex['output'], method_name, operation, output_comments).to_str_output
          parts << "\n\n  # resp.to_h outputs the following:\n"
          parts += output.lines.map { |line| "  " + line }
        end
        tag(parts.join)
      end

      def apply_examples_from_disk(docstring)
        glob = "doc-src/examples/#{@service_id}/client/#{@method_name}/*.rb"
        Dir.glob(glob).map do |path|
          title = File.basename(path).split(/\./).first
          title = title.sub(/^\d+_/, '').gsub(/_/, ' ')
          title = title[0].upcase + title[1..-1]
          docstring.append("\n@example #{title}")
          docstring.append("  " + File.read(path).lines.join('  '))
        end
      end

      def apply_request_syntax_example(docstring)
        if @operation['input']
          syntax = SyntaxExample.new(
            struct_shape: shape(@operation['input']),
            api: @api,
            indent: '  '
          ).format.strip
          docstring.append("\n@example Request syntax with placeholder values")
          docstring.append("  resp = client.#{@method_name}(#{syntax})")
        end
      end

      def apply_response_struture_example(docstring)
        output = @operation['output']
        if output && shape(output)['members'].size > 0
          docstring.append(ResponseStructureExample.new(shape_ref:output, api:@api).to_s)
        end
      end

      def apply_overload_tag(docstring)
        docstring.append("@overload #{@method_name}(params = {})")
      end

    end
  end
end
