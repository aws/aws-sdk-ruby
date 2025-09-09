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
        monitor_pool
      end

      def post(*args, &block)
        raise 'Executor is not running' unless @running

        @queue << [args, block]
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

      def monitor_pool
        Thread.new do
          while @running
            @pool.select!(&:alive?)

            @pool << spawn_worker if @queue.size > @pool.size && @pool.size < @max_threads
            sleep(0.01)
          end
        end
      end

      def spawn_worker
        Thread.new do
          while (job = @queue.pop)
            break if job == :shutdown

            args, block = job
            block.call(*args)
          end
        end
      end
    end
  end
end
