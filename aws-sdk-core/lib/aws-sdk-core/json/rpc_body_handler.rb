module Aws
  module Json
    class RpcBodyHandler < Seahorse::Client::Handler

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        build_json(context)
        @handler.call(context).on_success do |response|
          unless response.error
            response.data = parse_json(context)
          end
        end
      end

      private

      def build_json(context)
        if shape = context.operation.input
          context.http_request.body = Builder.new(shape).to_json(context.params)
        else
          context.http_request.body = '{}'
        end
      end

      def parse_json(context)
        if rules = context.operation.output
          json = context.http_response.body_contents
          json = '{}' if json == ''
          Parser.new(rules).parse(json)
        else
          EmptyStructure.new
        end
      end

    end
  end
end
