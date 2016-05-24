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
          if @params.empty?
            opts = ''
          elsif @params.simple?
            opts = "options = options.merge(#{@params})\n"
          else
            opts = "options = Aws::Util.deep_merge(options, #{@params})\n"
          end
          super("#{opts}#{assignement}@client.#{operation_name}(options)")
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

      end
    end
  end
end
