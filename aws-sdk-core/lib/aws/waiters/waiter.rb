require 'jamespath'

module Aws
  module Waiters
    class Waiter

      # @api private
      RAISE_HANDLER = Seahorse::Client::Plugins::RaiseResponseErrors::Handler

      # @api private
      def initialize(definition = {})
        @definition = definition
        @interval = definition['interval']
        @max_attempts = definition['max_attempts']
        @before_attempt = []
        @before_wait = []
      end

      # Register a callback that is invoked before every polling attempt.
      # Yields the number of attempts made so far.
      #
      #     waiter.before_attempt do |attempts|
      #       puts "#{attempts} made, about to make attempt #{attempts + 1}"
      #     end
      #
      # Throwing `:stop_waiting` from the given block will prevent the
      # next attempt and will trigger a {WaiterStoppedError} error.
      #
      #     waiter.before_attempt do |attempts|
      #       throw :stop_waiting, "optional reason"
      #     end
      #
      # @yieldparam [Integer] attempts The number of attempts made.
      def before_attempt(&block)
        @before_attempt << Proc.new
      end

      # Register a callback that is invoked after an attempt but before
      # sleeping. Yields the number of attempts made and the previous response.
      #
      #     waiter.before_wait do |attempts, response|
      #       puts "#{attempts} made"
      #       puts response.error.inspect
      #       puts response.data.inspect
      #     end
      #
      # Throwing `:stop_waiting` from the given block stop the waiter and
      # will trigger a {WaiterStoppedError} error.
      #
      #     waiter.before_wait do |attempts|
      #       throw :stop_waiting, "optional reason"
      #     end
      #
      # @yieldparam [Integer] attempts The number of attempts already made.
      # @yieldparam [Seahorse::Client::Response] response The response from
      #   the previous polling attempts.
      def before_wait(&block)
        @before_wait << Proc.new
      end

      # @return [Float]
      attr_accessor :interval

      # @return [Integer]
      attr_accessor :max_attempts

      # @param [Client] client
      # @param [Hash] params
      def wait(client, params)
        attempts = 0
        loop do
          trigger_callbacks(@before_attempt, attempts)
          attempts += 1
          response = send_request(client, params)
          return response if successful?(response)
          raise Errors::TerminalConditionError if failure?(response)
          raise response.error unless error_ignored?(response)
          check_for_max_attempts(attempts)
          trigger_callbacks(@before_wait, attempts, response)
          sleep(interval)
        end
      end

      private

      def successful?(response)
        acceptor_matches?(:success, response)
      end

      def failure?(response)
        acceptor_matches?(:failure, response)
      end

      def trigger_callbacks(callbacks, *args)
        msg = catch(:stop_waiting) do
          callbacks.each do |block|
            block.call(*args)
          end
          return # no callbacks threw :stop_waiting, return normally
        end
        raise WaiterStoppedError, msg || "callback threw `:stop_waiting`"
      end

      def send_request(client, params)
        req = client.build_request(operation_name, params)
        req.handlers.remove(RAISE_HANDLER)
        req.send_request
      end

      def operation_name
        underscore(@definition['operation']).to_sym
      end

      def acceptor_matches?(acceptor, resp)
        case type(acceptor)
        when nil then false
        when 'output' then output_matches?(resp, values(acceptor), path(acceptor))
        when 'error' then error_matches?(resp.error, values(acceptor))
        else raise "unhandled acceptor type: #{type(acceptor).inspect}"
        end
      end

      def type(acceptor)
        @definition["#{acceptor}_type"] || @definition['acceptor_type']
      end

      def path(acceptor)
        underscore(@definition["#{acceptor}_path"] || @definition['acceptor_path'])
      end

      def values(acceptor)
        values = @definition["#{acceptor}_value"] || @definition['acceptor_value']
        values.is_a?(Array) ? values : [values]
      end

      def output_matches?(resp, value, path)
        if resp.error
          false
        elsif path
          output_value_matches?(value, Jamespath.search(path, resp.data))
        else
          true
        end
      end

      def output_value_matches?(expected, results)
        if results.is_a?(Array)
          results.all? { |result| expected.include?(result) }
        else
          expected.include?(results)
        end
      end

      def error_ignored?(resp)
        if resp.error
          error_matches?(resp.error, @definition['ignore_errors'] || [])
        else
          true
        end
      end

      def error_matches?(error, errors)
        if error
          errors.any? { |pattern| error.class.name.match(/#{pattern}$/) }
        else
          false
        end
      end

      def check_for_max_attempts(attempts)
        if attempts == max_attempts
          msg = "#{attempts} attempts made without success or failure"
          raise Errors::MaxAttemptsError, msg
        end
      end

      def underscore(str)
        str.gsub(/\w+/) { |part| Seahorse::Util.underscore(part) } if str
      end

    end
  end
end
