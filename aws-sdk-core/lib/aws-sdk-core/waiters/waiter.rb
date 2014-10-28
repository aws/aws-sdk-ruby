require 'jmespath'

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
      # Throwing `:success` or `:failure` from the given block will stop
      # the waiter and return or raise. You can pass a custom message to the
      # throw:
      #
      #     # raises Aws::Waiters::Errors::WaiterFailed
      #     waiter.before_attempt do |attempts|
      #       throw :failure, 'custom-error-message'
      #     end
      #
      #     # cause the waiter to stop polling and return
      #     waiter.before_attempt do |attempts|
      #       throw :success
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
      # Throwing `:success` or `:failure` from the given block will stop
      # the waiter and return or raise. You can pass a custom message to the
      # throw:
      #
      #     # raises Aws::Waiters::Errors::WaiterFailed
      #     waiter.before_attempt do |attempts|
      #       throw :failure, 'custom-error-message'
      #     end
      #
      #     # cause the waiter to stop polling and return
      #     waiter.before_attempt do |attempts|
      #       throw :success
      #     end
      #
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
        catch(:success) do
          failure = catch(:failure) do
            loop do
              trigger_callbacks(@before_attempt, attempts)
              attempts += 1
              resp = send_request(client, params)
              throw :success, resp if successful?(resp)
              throw :failure if failure?(resp)
              throw :failure, resp.error unless error_ignored?(resp)
              throw :failure, too_many(attempts) if attempts == max_attempts
              trigger_callbacks(@before_wait, attempts, resp)
              sleep(interval)
            end
          end
          failure = 'waiter failed' if failure.nil?
          raise String === failure ? Errors::WaiterFailed.new(failure) : failure
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
        callbacks.each { |block| block.call(*args) }
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
        when 'output' then output_matches?(resp, values(acceptor), path(acceptor))
        when 'error' then error_matches?(resp.error, values(acceptor))
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
          output_value_matches?(value, JAMESPath.search(path, resp.data))
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

      def too_many(attempts)
        "too many attempts made, #{attempts} attempts made without " +
        "success or failure"
      end

      def underscore(str)
        str.gsub(/\w+/) { |part| Seahorse::Util.underscore(part) } if str
      end

    end
  end
end
