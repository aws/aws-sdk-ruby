module AwsSdkCodeGenerator
  class ClientOperationDocumentation

    # @option options [required, String] :method_name
    # @option options [required, Hash] :operation
    # @option options [required, Hash] :api
    # @option options [Array<Hash>] :examples
    def initialize(options)
      @name = options.fetch(:name)
      @method_name = options.fetch(:method_name)
      @operation = options.fetch(:operation)
      @api = options.fetch(:api)
      @client_examples = options.fetch(:client_examples, [])
      @examples = options.fetch(:examples)
      @module_name = options.fetch(:module_name)
    end

    # @return [String]
    attr_reader :method_name

    # @return [String]
    attr_reader :module_name

    # @return [Hash]
    attr_reader :operation

    # @return [Hash]
    attr_reader :api

    # @return [Array<Hash>]
    attr_reader :examples

    # @return [Array<Hash>]
    attr_reader :client_examples

    # @return [String]
    def to_str
      Docstring.join_docstrings([
        docstring(operation),
        response_target_tag(operation, api),
        option_tags(operation, api),
        return_tag(operation, api),
        generated_examples(operation, api),
        eventstream_examples(module_name, method_name, operation, api),
        shared_examples(examples, operation, api),
        given_examples(client_examples),
        request_syntax_example(method_name, operation, api),
        response_structure_example(operation, api),
        see_also_tag(operation, api),
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
        return if shape['members'].nil?
        shape['members'].map do |member_name, member_ref|
          next if member_ref['documented'] === false
          docstring = Api.docstring(member_ref, api)
          if member_ref['idempotencyToken']
            docstring = docstring.to_s + "<p><b>A suitable default value is auto-generated.** You should normally not need to pass this option.</b></p>"
          end
          if member_ref['jsonvalue']
            docstring = docstring.to_s + "<p><b>SDK automatically handles json encoding and base64 encoding for you when the required value (Hash, Array, etc.) is provided according to the description.</b></p>"
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
        # add rest body streaming if qualified
        unless shape['payload'].nil?
          _, member_shape = Api.resolve(shape['payload'], api)
          unless member_shape.nil?
            member_shape['streaming'] = member_shape['type'] == 'blob' ||
              member_shape['type'] == 'string'
          end
        end
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

    def shared_examples(examples, operation, api)
      return if examples.nil? || examples['examples'][@name].nil?
      begin # skip broken/nil examples
        example_block = []
        examples['examples'][@name].each do |example|
          comments = example['comments']
          input = SharedExample.new(
            example['input'],
            method_name,
            operation,
            api,
            (comments.nil? ? '' : comments['input'])).to_str_input
          parts = []
          parts << "#\n"
          parts << "# @example Example: #{example['title']}\n#\n"
          if example['description'] && example['description'].length > 0
            parts << "#{Helper.wrap_string(example['description'], 120, "#   # ")}\n#\n"
          end
          parts += input.lines.map { |line| "#   " + line }
          if example['output']
            output = SharedExample.new(
              example['output'],
              method_name,
              operation,
              api,
              (comments.nil? ? '' : comments['output'])).to_str_output
            parts << "\n#\n#   resp.to_h outputs the following:\n"
            parts += output.lines.map { |line| "#   " + line }
          end
          example_block << parts.join
        end
        example_block.join("\n")
      rescue
        puts "Invalid example for operation: #{@name}"
        nil
      end
    end

    def generated_examples(operation, api)
      nil
    end

    def eventstream_examples(module_name, method_name, operation, api)
      return unless !!Helper.eventstream_output?(operation, api)
      EventStreamExample.new(
        api: api,
        operation: operation,
        method_name: method_name,
        module_name: module_name,
        receiver: 'client',
        resp_var: 'resp'
      ).format
    end

    def given_examples(client_examples)
      client_examples.map do |example|
        name = example[:name]
        code = example[:code]
        "# @example #{name}\n" + Docstring.block_comment(code, gap: '   ')
      end
    end

    def request_syntax_example(method_name, operation, api)
      SyntaxExample.new(
        api: api,
        shape: Api.shape(operation['input'], api),
        method_name: method_name,
        receiver: 'client',
        resp_var: 'resp',
      ).format
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

    def see_also_tag(operation, api)
      uid = api['metadata']['uid']
      if api['metadata']['protocol'] != 'api-gateway' && Crosslink.taggable?(uid)
        "# " + Crosslink.tag_string(uid, operation['name'])
      end
    end

  end
end
