module Aws
  module Json
    class RpcHeadersHandler < Seahorse::Client::Handler

      CONTENT_TYPE = 'application/x-amz-json-%s'

      # @param [Seahorse::Client::RequestContext] context
      # @return [Seahorse::Client::Response]
      def call(context)
        @handler.call(add_headers(context))
      end

      private

      def add_headers(context)
        context.http_request.headers['Content-Type'] = content_type(context)
        context.http_request.headers['X-Amz-Target'] = target(context)
        context
      end

      def content_type(context)
        CONTENT_TYPE % [context.config.api.metadata('jsonVersion')]
      end

      def target(context)
        prefix = context.config.api.metadata('targetPrefix')
        "#{prefix}.#{context.operation.name}"
      end

    end
  end
end
