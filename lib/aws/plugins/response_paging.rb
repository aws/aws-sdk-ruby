module Aws
  module Plugins
    class ResponsePaging < Seahorse::Client::Plugin

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          PageableResponse.new(@handler.call(context))
        end

      end

      handler(Handler)

    end
  end
end
