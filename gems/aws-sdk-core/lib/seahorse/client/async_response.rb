module Seahorse
  module Client
    class AsyncResponse

      def initialize(options = {})
        @error = options[:error]
        @context = options[:context]
        @response = Response.new(context: @context)
        @stream = options.delete(:stream)
      end

      attr_reader :context

      attr_accessor :error

      def on(range, &block)
        @response.on(range, &block)
        self
      end

      def on_complete(&block)
        @response.on_complete(&block)
        self
      end

      def wait
        while !@stream.closed?; end
        @response
      end

      def join!
        @stream.close
        @response
      end

    end
  end
end
