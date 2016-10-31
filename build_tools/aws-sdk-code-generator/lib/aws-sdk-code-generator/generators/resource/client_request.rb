module AwsSdkCodeGenerator
  module Generators
    module Resource
      class ClientRequest < Dsl::CodeLiteral

        include Helper

        # @option options [required, Hash] :request
        # @option options [Boolean] :resp (false)
        # @option options [Boolean] :merge (true)
        def initialize(options = {})
          @request = options.fetch(:request)
          @params = ClientRequestParams.new(params: @request['params'])
          @resp = options.fetch(:resp, false)
          if options.fetch(:merge, true)
            super("#{request_options}#{assignement}@client.#{operation_name}(options)")
          else
            super("#{assignement}@client.#{operation_name}#{params}")
          end
        end

        private

        def request_options
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
