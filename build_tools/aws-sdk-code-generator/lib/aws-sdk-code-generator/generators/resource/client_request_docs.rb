require 'set'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientRequestDocs

        include Helper

        # @option options [required, Hash] :api
        # @option options [required, Hash] :request
        # @option options [Array<String>] :skip ([])
        # @option options [required, String] :var_name
        # @option options [required, String] :returns
        def initialize(options)
          @api = options.fetch(:api)
          @request = options.fetch(:request)
          @skip = Set.new(options.fetch(:skip, []))
          @var_name = options.fetch(:var_name)
          @returns = options.fetch(:returns)
        end

        # @param [Dsl::Method] method
        def apply(method)
          #apply_request_syntax_example(method)
          #apply_option_tags(method)
        end

        private

        def apply_option_tags(method)
          input_members.each do |member_name, member_ref, required|
            method.option(
              name: underscore(member_name),
              type: ruby_input_type(member_ref),
              required: required,
              docstring: documentation(member_ref)
            )
          end
        end

        def apply_request_syntax_example(method)
          if input_shape
            syntax = SyntaxExample.new(
              shape: input_shape,
              api: @api,
              indent: '  '
            ).format.strip
            method.docstring.append("@example Request syntax with placeholder values")
            if @returns
              method.docstring.append("\n  #{@returns} = #{@var_name}.#{method.name}(#{syntax})")
            else
              method.docstring.append("\n  #{@var_name}.#{method.name}(#{syntax})")
            end
          end
        end

        def input_members
          if input_shape
            Enumerator.new do |y|
              input_shape['members'].each_pair do |member_name, member_ref|
                required = (input_shape['required'] || []).include?(member_name)
                y.yield(member_name, member_ref, required)
              end
            end
          else
            []
          end
        end

        def operation
          @api['operations'][@request['operation']]
        end

        def input_shape
          struct = shape(operation['input'])
          if struct
            struct = deep_copy(struct)
            struct['members'].keys.each do |member_name|
              struct['members'].delete(member_name) if request_param?(member_name)
              struct['members'].delete(member_name) if @skip.include?(member_name)
            end
          end
          struct
        end

        def request_param?(member_name)
          params = @request['params'] || []
          params.any? do |param|
            param['target'].match(/^#{member_name}\b/) && !(param['target'].include?('[') && param['target'].include?('.'))
          end
        end

      end
    end
  end
end
