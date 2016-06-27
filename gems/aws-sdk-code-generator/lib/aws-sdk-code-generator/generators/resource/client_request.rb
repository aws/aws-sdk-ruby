module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientRequest < Dsl::CodeLiteral

        include Helper

        def initialize(request:, resp:false, merge:true)
          @request = request
          @params = ClientRequestParams.new(params: request['params'])
          @resp = resp
          if merge
            super("#{options}#{assignement}@client.#{operation_name}(options)")
          else
            super("#{assignement}@client.#{operation_name}#{params}")
          end
        end

        private

        def options
          if @params.empty?
            ''
          elsif @params.simple?
            "options = options.merge(#{@params})\n"
          else
            "options = Aws::Util.deep_merge(options, #{@params})\n"
          end
        end

        def params
          @params.empty? ? @params : "(#{@params})"
        end

        def assignement
          "resp = " if @resp
        end

        def operation_name
          underscore(@request['operation'])
        end

      end
    end
  end
end
