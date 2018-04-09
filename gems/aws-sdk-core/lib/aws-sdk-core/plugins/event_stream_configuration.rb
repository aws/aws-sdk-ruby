module Aws
  module Plugins

    class EventStreamConfiguration < Seahorse::Client::Plugin
      
      option(:eventstream_handler,
        default: nil,
        doc_type: 'Proc',
        docstring: <<-DOCS)
When an Proc object is provided, it will be used as callback
for each chunk of event stream response received along the way.
      DOCS

      def add_handlers(handlers, config)
        handlers.add(OptionHandler, step: :initialize)
      end

      # @api private
      class OptionHandler < Seahorse::Client::Handler
        def call(context)
          eventstream_handler = context.params.delete(:eventstream_handler) || context.config.eventstream_handler
          context.config.eventstream_handler = eventstream_handler
          @handler.call(context)
        end
      end

    end

  end
end
