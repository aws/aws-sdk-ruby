module AwsSdkCodeGenerator
  class ResourceBatchActionDocumentation

    def initialize(options)
      @var_name = options.fetch(:var_name)
      @method_name = options.fetch(:method_name)
      @action = options.fetch(:action)
      @api = options.fetch(:api)
      compute_params
    end

    # @return [String]
    def build
      Docstring.join_docstrings([
        request_syntax_example,
        '# @param options ({})',
        option_tags,
        "# @return [void]",
      ], block_comment: false, separator: false)
    end

    private

    def request_syntax_example
      if input_ref
        skip = []
        if @action_prefix
          skip << @action_prefix
        else
          skip += @per_batch.keys
          skip += @batch_obj.keys
        end
        SyntaxExample.new(
          api: @api,
          shape_ref: input_ref,
          method_name: @method_name,
          receiver: @var_name,
          resp_var: nil,
          skip: skip,
        ).format
      end
    end

    def option_tags
      if input_shape = Api.shape(input_ref, @api)
        input_shape['members'].map do |member_name, member_ref|
          YardOptionTag.new(
            name: Underscore.underscore(member_name),
            required: input_shape.fetch('required', []).include?(member_name),
            ruby_type: Api.ruby_input_type(member_ref, @api),
            docstring: Docstring.html_to_markdown(Api.docstring(member_ref, @api)),
          ).to_str
        end
      end
    end

    def input_ref
      @api['operations'][@action['request']['operation']]['input']
    end

    def compute_params
      @batch_obj = {}
      @per_batch = {}
      @action_prefix = false
      @action['request']['params'].each do |param|
        if param['target'].include?('[')
          parts = param['target'].split('[')
          pair = parts[0].split('.')
          if pair.length > 1
            @action_prefix = pair.first
          end
          batch_name = pair.last
          batch_param = underscore(parts[1].sub(/.*?\./, ''))
          batch_param = batch_param == "" ? underscore(param['name']) : batch_param
          (@batch_obj[batch_name] ||= []) << {
            batch_param.to_sym => underscore(param['name'] || param['path'])
          }
        else
          @per_batch[param['target']] = underscore(param['name'])
        end
      end
    end

    def client_method
      underscore(@action['request']['operation'])
    end

    def underscore(str)
      Underscore.underscore(str)
    end

  end
end
