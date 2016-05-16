module AwsSdkCodeGenerator
  module Generators
    class ClientOperationDocumentation

      include Helper

      def self.apply(api:, service_identifier:, operation_name:, operation:, method:)
        new(
          api: api,
          service_identifier: service_identifier,
          operation_name: operation_name,
          operation: operation
        ).apply(method:method)
      end

      def initialize(api:, service_identifier:, operation_name:, operation:)
        @api = api
        @service_identifier = service_identifier
        @operation_name = operation_name
        @operation = operation
      end

      # @param [String] service_identifier
      # @param [String] operation_name
      # @param [Hash] operation
      # @param [Dsl::Method] method
      def apply(method:)
        method.docstring do |docstring|
          apply_operation_docs(docstring)
          apply_option_tags(docstring)
          apply_return_tags(docstring)
          apply_example_tags(docstring)
        end
      end

      private

      def apply_operation_docs(docstring)
        docstring.append(markdown(@operation['documentation']))
      end

      def apply_option_tags(docstring)
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
      end

      def apply_example_tags(docstring)
      end







      def tags(method_name, operation)
        tags = []
        tags += option_tags(method_name, operation)
        tags += return_tags(method_name, operation)
        tags += example_tags(method_name, operation)
        tags += see_also_tags(method_name, operation)
      end

      def option_tags(method_name, operation)
        operation_input_ref(operation).shape.members.map do |name, ref|
          req = ref.required ? 'required,' : ''
          type = input_type(ref)
          docstring = "@option #{@optname} [#{req}#{type}] :#{name}\n"
          docstring += ref.documentation.lines.map { |line| "  #{line}" }.join
          tag(docstring)
        end
      end

      def return_tags(method_name, operation)
        resp = '{Seahorse::Client::Response response}'
        if operation.output && operation.output.shape.members.count > 0
          rtype = output_type(operation.output)
          returns = "[#{rtype}] Returns a #{resp} object which responds to "
          returns << "the following methods:\n\n"
          operation.output.shape.members.each do |mname, mref|
            mtype = output_type(mref, true).gsub(/</, '&lt;').gsub(/>/, '&gt;')
            returns << "  * {#{rtype}##{mname} ##{mname}} => #{mtype}\n"
          end
        else
          returns = "[Struct] Returns an empty #{resp}."
        end
        [tag("@return #{returns}")]
      end

      def example_tags(method_name, operation)
        shared_examples(method_name, operation) +
        examples_from_disk(method_name, operation) +
        [
          request_syntax_example(method_name, operation),
          response_structure_example(method_name, operation),
        ].compact
      end

      def shared_examples(method_name, operation)
        if operation['examples']
          operation['examples'].map do |example|
            shared_example(example, method_name, operation)
          end
        else
          []
        end
      end

      def shared_example(json_ex, method_name, operation)
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

      def examples_from_disk(method_name, operation)
        dir = "doc-src/examples/#{@service_name.downcase}/client/#{method_name}/*.rb"
        Dir.glob(dir).map do |path|
          title = File.basename(path).split(/\./).first
          title = title.sub(/^\d+_/, '').gsub(/_/, ' ')
          title = title[0].upcase + title[1..-1]
          tag("@example #{title}\n\n    " + File.read(path).lines.join('    '))
        end
      end

      def request_syntax_example(method_name, operation)
        example = RequestSyntaxExample.new(method_name, operation).to_str
        parts = []
        parts << "@example Request syntax with placeholder values\n\n"
        parts += example.lines.map { |line| "  " + line }
        tag(parts.join)
      end

      def response_structure_example(method_name, operation)
        if example = ResponseStructureExample.new(method_name, operation).to_str
          parts = []
          parts << "@example Response structure\n\n"
          parts += example.lines.map { |line| "  " + line }
          tag(parts.join)
        end
      end

      def see_also_tags(method_name, operation)
        []
      end

    end
  end
end
