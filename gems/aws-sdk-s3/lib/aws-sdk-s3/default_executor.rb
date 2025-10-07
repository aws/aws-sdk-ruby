# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DefaultExecutor
      RUNNING = :running
      SHUTTING_DOWN = :shutting_down
      SHUTDOWN = :shutdown

      def initialize(options = {})
        @max_threads = options[:max_threads] || 10
        @state = RUNNING
        @queue = Queue.new
        @pool = []
        @mutex = Mutex.new
      end

      def post(*args, &block)
        @mutex.synchronize do
          raise 'Executor has been shutdown and is no longer accepting tasks' unless @state == RUNNING

          @queue << [args, block]
          ensure_worker_available
        end
        true
      end

      def kill
        @mutex.synchronize do
          @state = SHUTDOWN
          @pool.each(&:kill)
          @pool.clear
          @queue.clear
        end
        true
      end

      def shutdown(timeout = nil)
        @mutex.synchronize do
          return true if @state == SHUTDOWN

          @state = SHUTTING_DOWN
        end

        @max_threads.times { @queue << :shutdown }

        if timeout
          deadline = Time.now + timeout
          @pool.each do |thread|
            remaining = deadline - Time.now
            break if remaining <= 0

            thread.join([remaining, 0].max)
          end
          @pool.select(&:alive?).each(&:kill)
        else
          @pool.each(&:join)
        end

        @pool.clear
        @state = SHUTDOWN
        true
      end

      def running?
        @state == RUNNING
      end

      def shutting_down?
        @state == SHUTTING_DOWN
      end

      def shutdown?
        @state == SHUTDOWN
      end

      private

      def ensure_worker_available
        return unless @state == RUNNING

        @pool.select!(&:alive?)
        @pool << spawn_worker if @pool.size < @max_threads
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
