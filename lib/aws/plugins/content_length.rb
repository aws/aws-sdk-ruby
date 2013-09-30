require 'multi_xml'

module Aws
  module Plugins
    class ContentLength < Seahorse::Client::Plugin

      def initialize(options = {})
        @step = options[:step] || :sign
        @priority = options[:priority] || 0
      end

      def add_handlers(handlers, config)
        handlers.add(Handler, step: @step, priority: @priority)
      end

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          context.http_request.headers['Content-Length'] = length(context)
          @handler.call(context)
        end

        def length(context)
          context.http_request.body.size
        end

      end
    end
  end
end
