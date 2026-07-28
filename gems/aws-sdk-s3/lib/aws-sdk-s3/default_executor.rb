# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DefaultExecutor
      DEFAULT_MAX_THREADS = 10
      RUNNING = :running
      SHUTTING_DOWN = :shutting_down
      SHUTDOWN = :shutdown

      def initialize(options = {})
        @max_threads = options[:max_threads] || DEFAULT_MAX_THREADS
        @max_queue = options[:max_queue] || 0
        @state = RUNNING
        # A bounded queue applies backpressure to producers when full. 0 means unbounded.
        @queue = @max_queue.zero? ? Queue.new : SizedQueue.new(@max_queue)
        @pool = []
        @mutex = Mutex.new
      end

      # Submits a task for execution.
      # @param [Object] args Variable number of arguments to pass to the block
      # @param [Proc] block The block to be executed
      # @return [Boolean] Returns true if the task was submitted successfully
      def post(*args, &block)
        @mutex.synchronize do
          raise 'Executor has been shutdown and is no longer accepting tasks' unless @state == RUNNING

          ensure_worker_available
        end
        # Pushed outside the mutex because a bounded queue blocks the caller when
        # full and holding the lock while parked would deadlock #shutdown and #kill.
        @queue.push([args, block])
        true
      rescue ClosedQueueError
        # shutdown or kill happened while parked on a full queue
        raise 'Executor has been shutdown and is no longer accepting tasks'
      end

      # Immediately terminates all worker threads and clears pending tasks.
      # This is a forceful shutdown that doesn't wait for running tasks to complete.
      #
      # @return [Boolean] true when termination is complete
      def kill
        @mutex.synchronize do
          @state = SHUTDOWN
          @queue.close # wakes any producer parked on a full queue
          @pool.each(&:kill)
          @pool.clear
          @queue.clear
        end
        true
      end

      # Gracefully shuts down the executor, optionally with a timeout.
      # Stops accepting new tasks and waits for running tasks to complete.
      #
      # @param timeout [Numeric, nil] Maximum time in seconds to wait for shutdown.
      #   If nil, waits indefinitely. If timeout expires, remaining threads are killed.
      # @return [Boolean] true when shutdown is complete
      def shutdown(timeout = nil)
        @mutex.synchronize do
          return true if @state == SHUTDOWN

          @state = SHUTTING_DOWN
          # Closing wakes parked producers and lets workers drain remaining tasks
          # before exiting without pushing sentinels onto a queue that may be full.
          @queue.close
        end

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

        @mutex.synchronize do
          @pool.clear
          @state = SHUTDOWN
        end
        true
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
            args, block = job
            block.call(*args)
          end
        end
      end
    end
  end
end
