module Seahorse
  module Client
    class AsyncResponse

      def initialize(options = {})
        @response = Response.new(context: options[:context])
        @stream = options[:stream]
      end

      def context
        @response.context
      end

      def error
        @response.error
      end

      def on(range, &block)
        @response.on(range, &block)
        self
      end

      def on_complete(&block)
        @response.on_complete(&block)
        self
      end

      def wait
        if error && context.config.raise_response_errors
          raise error
        elsif @stream
          while !@stream.closed?; end
          @response
        end
      end

      def join!
        if error && context.config.raise_response_errors
          raise error
        elsif @stream
          @stream.close
          @response
        end
      end

    end
  end
end
