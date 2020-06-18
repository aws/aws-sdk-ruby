# frozen_string_literal: true

require 'set'

module AwsSdkCodeGenerator
  class ResourceClientReqeustDocumentation

    def initialize(options)
      @api = options.fetch(:api)
      @method_name = options.fetch(:method_name)
      @receiver = options.fetch(:receiver)
      @resp_var = options.fetch(:resp_var, nil)
      @request = options.fetch(:request)
      @shape_ref = @api['operations'][@request['operation']]['input']
      @returns = options.fetch(:returns, nil)
      @skip = Set.new(options.fetch(:skip, []) + ResourceSkipParams.compute(input_shape, @request))
    end

    def build
      Docstring.join_docstrings([
        request_syntax_example,
        param_tag,
        option_tags,
        return_tag,
      ], block_comment: false, separator: false)
    end

    private

    def request_syntax_example
      if @shape_ref && Api.shape(@shape_ref, @api)['members'].count  - @skip.count > 0
        SyntaxExample.new(
          api: @api,
          shape: input_shape,
          method_name: @method_name,
          receiver: @receiver,
          resp_var: @resp_var,
          skip: @skip,
        ).format
      else
        # TODO : remove these empty examples, not really needed
        <<-DOCS.rstrip
# @example Request syntax with placeholder values
#
#   #{@receiver}.#{@method_name}()
        DOCS
      end
    end

    def param_tag
      '# @param [Hash] options ({})'
    end

    def option_tags
      if input_shape
        input_shape['members'].map do |member_name, member_ref|
          next if @skip.include?(member_name)
          YardOptionTag.new(
            name: Underscore.underscore(member_name),
            required: input_shape.fetch('required', []).include?(member_name),
            ruby_type: Api.ruby_input_type(member_ref, @api),
            docstring: Docstring.html_to_markdown(Api.docstring(member_ref, @api)),
          ).to_str
        end
      end
    end

    def input_shape
      Api.shape(@shape_ref, @api)
    end

    def return_tag
      if @returns
        "# @return [#{@returns}]"
      else
        nil
      end
    end

  end
end
