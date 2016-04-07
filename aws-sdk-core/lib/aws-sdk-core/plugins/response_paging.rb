module Aws
  module Plugins
    class ResponsePaging < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          context[:original_params] = context.params
          resp = @handler.call(context)
          resp.extend(PageableResponse)
          resp.pager = context.operation[:pager] || Aws::Pager::NullPager.new
          resp
        end

      end

      handle(Handler, step: :initialize, priority: 90)

    end
  end
end
