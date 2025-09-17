# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DefaultExecutor
      def initialize(options = {})
        @queue = Queue.new
        @max_threads = options[:max_threads] || 10
        @pool = []
        @running = true
        @mutex = Mutex.new
      end

      def post(*args, &block)
        raise 'Executor is not running' unless @running

        @queue << [args, block]
        ensure_worker_available
      end

      def shutdown
        @running = false
        @max_threads.times { @queue << :shutdown }
        @pool.each(&:join)
        @pool.clear
        true
      end

      def running?
        @running
      end

      private

      def ensure_worker_available
        @mutex.synchronize do
          @pool.select!(&:alive?)
          @pool << spawn_worker if @pool.size < @max_threads
        end
      end

      def spawn_worker
        Thread.new do
          while (job = @queue.shift)
            break if job == :shutdown

            args, block = job
            block.call(*args)
          end
        end
      end
    end
  end
end
