module Aws
  module Plugins
    class ResponsePaging < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          context[:original_params] = context.params
          PageableResponse.new(@handler.call(context), pager(context))
        end

        private

        def pager(context)
          context.client.class.paginators.pager(context.operation.name)
        end

      end

      handler(Handler, step: :initialize, priority: 90)

    end
  end
end
