module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientRequest < Dsl::CodeLiteral

        include Helper

        def initialize(request:, resp:false, merge:true)
          @request = request
          @params = ClientRequestParams.new(params: request['params'])
          @resp = resp
          @merge = merge
          super("#{assignement}@client.#{operation_name}#{args}")
        end

        private

        def assignement
          if @resp
            "resp = "
          end
        end

        def operation_name
          underscore(@request['operation'])
        end

        def args
          if @merge
            merge_with_options
          else
            @params.empty? ? '' : "(#{@params})"
          end
        end

        def merge_with_options
          if @params.empty?
            "(options)"
          elsif @params.simple?
            "(options.merge(#{@params}))"
          else
            "(Aws::Util.deep_merge(options, #{@params}))"
          end
        end

      end
    end
  end
end
