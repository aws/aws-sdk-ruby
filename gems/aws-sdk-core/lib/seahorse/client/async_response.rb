module Seahorse
  module Client
    class AsyncResponse

      def initialize(options = {})
        @response = Response.new(context: options[:context])
        @stream = options[:stream]
        @conn = options[:connection]
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
          # tracking signals showing stream is closed
          signal_queue = Queue.new
          # open a thread polling for stream status
          wait_thread = Thread.new do
            while !@stream.closed? && !@conn.closed?
              # sleep 5 sec before polling stream status every time
              sleep(5)
            end
            signal_queue << 'stream closed or connection closed'
          end
          # this will blocked until signal arrived at queue
          signal_queue.pop
          _kill_threads(wait_thread)
          @response
        end
      end

      def join!
        if error && context.config.raise_response_errors
          raise error
        elsif @stream
          @stream.close
          _kill_input_thread
          @response
        end
      end

      private

      def _kill_threads(wait_thread)
        Thread.kill(wait_thread)
        if thread = context[:input_signal_thread]
          Thread.kill(thread)
        end
        nil
      end

    end
  end
end
