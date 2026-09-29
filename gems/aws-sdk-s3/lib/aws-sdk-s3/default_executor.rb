# frozen_string_literal: true

module Aws
  module S3
    # @api private
    class DefaultExecutor
      # Raised when a task is posted to an executor that is shutting down or has been shut down.
      class RejectedExecutionError < RuntimeError
        def initialize(msg = 'Executor has been shutdown and is no longer accepting tasks')
          super
        end
      end

      DEFAULT_MAX_THREADS = 10
      RUNNING = :running
      SHUTTING_DOWN = :shutting_down
      SHUTDOWN = :shutdown

      def initialize(options = {})
        @max_threads = options[:max_threads] || DEFAULT_MAX_THREADS
        @max_queue = options[:max_queue] || 0
        @state = RUNNING
        @queue = @max_queue.zero? ? Queue.new : SizedQueue.new(@max_queue) # 0 is unbounded
        @pool = []
        @mutex = Mutex.new
        @fatal_error = nil
      end

      # Submits a task for execution.
      # @param [Object] args Variable number of arguments to pass to the block
      # @param [Proc] block The block to be executed
      # @return [Boolean] Returns true if the task was submitted successfully
      def post(*args, &block)
        @mutex.synchronize do
          raise RejectedExecutionError unless @state == RUNNING

          ensure_worker_available
        end
        # Pushed outside the mutex because a bounded queue blocks the caller when
        # full and holding the lock while parked would deadlock #shutdown and #kill.
        @queue.push([args, block])
        true
      rescue ClosedQueueError
        # shutdown or kill happened while parked on a full queue
        raise RejectedExecutionError
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

        # Snapshot under the lock and repeat, since a dying worker may swap in a
        # replacement while joining.
        deadline = Time.now + timeout if timeout
        until (threads = @mutex.synchronize { @pool.select(&:alive?) }).empty?
          threads.each do |thread|
            remaining = deadline - Time.now if deadline
            break if remaining && remaining <= 0

            begin
              thread.join(remaining && [remaining, 0].max)
            rescue Exception # rubocop:disable Lint/RescueException
              # A worker that died re-raises here; it was recorded by #replace_worker
              # and is raised below once the remaining workers have finished.
              nil
            end
          end
          break if deadline && Time.now >= deadline
        end
        @mutex.synchronize { @pool.select(&:alive?).each(&:kill) } if timeout

        @mutex.synchronize do
          @pool.clear
          @state = SHUTDOWN
        end
        # Dead workers are replaced rather than joined, so surface the first
        # error that killed one for callers whose tasks do not rescue it.
        raise @fatal_error if @fatal_error

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
        rescue Exception => e # rubocop:disable Lint/RescueException
          # A task raised something it did not rescue. Replace this worker
          # before it dies so queued tasks still drain, otherwise a
          # producer parked on a full queue waits forever.
          replace_worker(e)
          raise
        end
      end

      def replace_worker(error)
        @mutex.synchronize do
          @fatal_error ||= error
          @pool.delete(Thread.current)
          @pool << spawn_worker unless @state == SHUTDOWN
        end
      end
    end
  end
end
