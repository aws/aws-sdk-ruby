module Aws
  module Binary

    # @api private
    class DecodeHandler < Seahorse::Client::Handler

      def call(context)
        if eventstream_member = eventstream?(context)
          attach_eventstream_listeners(context, eventstream_member)
        end
        @handler.call(context)
      end

      private

      def eventstream?(ctx)
        ctx.operation.output.shape.members.each do |_, ref|
          return ref if ref.eventstream
        end
      end

      def attach_eventstream_listeners(context, rules)

        context.http_response.on_headers(200) do
          protocol = context.config.api.metadata['protocol']
          context.http_response.body = EventStreamDecoder.new(
            protocol,
            rules,
            context.http_response.body,
            context[:event_stream_handler])
        end

        context.http_response.on_success(200) do
          # rewind raw binary stream for eventstream
          if context.http_response.raw_stream.respond_to?(:rewind)
            context.http_response.raw_stream.rewind
          end
          context.http_response.body = context.http_response.raw_stream
        end

        context.http_response.on_error do
          context.http_response.body = context.http_response.raw_stream
        end

      end

    end

  end
end
