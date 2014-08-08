module Aws
  module Plugins
    class ResponsePaging < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          pager = context.client.class.paginators.pager(context.operation.name)
          PageableResponse.new(@handler.call(context), pager)
        end

      end

      handler(Handler)

    end
  end
end
