# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::DynamoDB
  module Waiters

    class TableExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (25)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 25,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_table,
            acceptors: [
              {
                "expected" => "ACTIVE",
                "matcher" => "path",
                "state" => "success",
                "argument" => "table.table_status"
              },
              {
                "expected" => "ResourceNotFoundException",
                "matcher" => "error",
                "state" => "retry"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_table)
      # @return (see Client#describe_table)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class TableNotExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (25)
      # @option options [Integer] :delay (20)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 25,
          delay: 20,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_table,
            acceptors: [{
              "expected" => "ResourceNotFoundException",
              "matcher" => "error",
              "state" => "success"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_table)
      # @return (see Client#describe_table)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
