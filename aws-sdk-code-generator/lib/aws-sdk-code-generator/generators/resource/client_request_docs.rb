require 'set'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientRequestDocs

        include Helper

        def initialize(api:, request:, skip:[])
          @api = api
          @request = request
          @skip = Set.new(skip)
        end

        # @param [Dsl::Method] method
        def apply(method)
          input_members.each do |member_name, member_ref, required|
            next if @skip.include?(member_name)
            method.option(
              name: underscore(member_name),
              type: ruby_input_type(member_ref),
              required: required,
              docstring: documentation(member_ref)
            )
          end
        end

        private

        def input_members
          operation = @api['operations'][@request['operation']]
          shape = shape(operation['input'])
          if shape
            Enumerator.new do |y|
              shape['members'].each_pair do |member_name, member_ref|
                next if request_param?(member_name)
                next if @skip.include?(member_name)
                required = (shape['required'] || []).include?(member_name)
                y.yield(member_name, member_ref, required)
              end
            end
          else
            []
          end
        end

        def request_param?(member_name)
          params = @request['params'] || []
          params.any? do |param|
            param['target'].match(/^#{member_name}\b/)
          end
        end

      end
    end
  end
end
