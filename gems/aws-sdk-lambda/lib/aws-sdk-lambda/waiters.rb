# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Lambda
  module Waiters

    # Waits for the function's State to be Active.
    class FunctionActive

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Active"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Failed"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "Pending"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function_configuration)
      # @return (see Client#get_function_configuration)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class FunctionExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "ResourceNotFoundException"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function)
      # @return (see Client#get_function)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Waits for the function's LastUpdateStatus to be Successful.
    class FunctionUpdated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (60)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 60,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_function_configuration,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "Successful"
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "Failed"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "last_update_status",
                "expected" => "InProgress"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_function_configuration)
      # @return (see Client#get_function_configuration)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
