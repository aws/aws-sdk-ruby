module AwsSdkCodeGenerator
  class ClientOperationDocumentation

    # @option options [required, String] :method_name
    # @option options [required, Hash] :operation
    # @option options [required, Hash] :api
    # @option options [Array<Hash>] :examples
    def initialize(options)
      @method_name = options.fetch(:method_name)
      @operation = options.fetch(:operation)
      @api = options.fetch(:api)
      @examples = options.fetch(:examples, [])
    end

    # @return [String]
    attr_reader :method_name

    # @return [Hash]
    attr_reader :operation

    # @return [Hash]
    attr_reader :api

    # @return [Array<Hash>]
    attr_reader :examples

    # @return [String]
    def to_str
      Docstring.join_docstrings([
        docstring(operation),
        response_target_tag(operation, api),
        option_tags(operation, api),
        return_tag(operation, api),
        generated_examples(operation, api),
        given_examples(examples),
        request_syntax_example(method_name, operation, api),
        response_structure_example(operation, api),
      ], block_comment: false)
    end
    alias to_s to_str

    private

    def docstring(operation)
      Docstring.block_comment(
        Docstring.html_to_markdown(operation['documentation'])
      )
    end

    def response_target_tag(operation, api)
      if output = Api.shape(operation['output'], api)
        if output['payload'] && output['members'][output['payload']]['streaming']
          YardOptionTag.new(
            name: 'response_target',
            ruby_type: 'String, IO',
            option_hash_name: 'params',
            required: false,
            docstring: 'Where to write response data, file path, or IO object.'
          ).to_s
        end
      end
    end

    def option_tags(operation, api)
      if operation['input']
        shape = Api.shape(operation['input'], api)
        shape['members'].map do |member_name, member_ref|
          docstring = Api.docstring(member_ref, api)
          if member_ref['idempotencyToken']
            docstring += "<p><b>A suitable default value is auto-generated.** You should normally not need to pass this option.</b></p>"
          end
          YardOptionTag.new(
            name: Underscore.underscore(member_name),
            ruby_type: Api.ruby_input_type(member_ref, api),
            required: shape.fetch('required', []).include?(member_name),
            docstring: Docstring.html_to_markdown(docstring),
            option_hash_name: 'params',
          ).to_s
        end
      else
        []
      end
    end

    def return_tag(operation, api)
      output = Api.shape(operation['output'], api)
      if output && output['members'].size > 0
        shape_name = operation.fetch('output').fetch('shape')
        type = "Types::#{shape_name}"
        _, shape = Api.resolve(shape_name, api)
        methods = shape['members'].map do |member_name, member_ref|
          member_type = Docstring.escape_html(Api.ruby_type(member_ref, api))
          method_name = Underscore.underscore(member_name)
          "#   * {#{type}##{method_name} ##{method_name}} => #{member_type}"
        end
        "# @return [#{type}] Returns a {Seahorse::Client::Response response} object which responds to the following methods:\n#\n" + methods.join("\n")
      else
        "# @return [Struct] Returns an empty {Seahorse::Client::Response response}."
      end
    end

    def generated_examples(operation, api)
      nil
    end

    def given_examples(examples)
      examples.map do |example|
        name = example[:name]
        code = example[:code]
        "# @example #{name}\n" + Docstring.block_comment(code, gap: '   ')
      end
    end

    def request_syntax_example(method_name, operation, api)
      if operation['input']
        syntax = SyntaxExample.new(
          struct_shape: Api.shape(operation['input'], api),
          api: api,
          indent: '#   '
        ).format.strip
        syntax = syntax.sub(/^#\s+/, '')
        "# @example Request syntax with placeholder values\n#\n#   resp = client.#{method_name}(#{syntax})"
      end
    end

    def response_structure_example(operation, api)
      output = Api.shape(operation['output'], api) if operation['output']
      if output && output['members'].size > 0
        Docstring.block_comment(ClientResponseStructureExample.new(
          shape_ref: operation['output'],
          api: api
        ).to_s)
      end
    end

  end
end
