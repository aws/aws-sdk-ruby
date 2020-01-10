# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Kinesis
  module Waiters

    class StreamExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (18)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 18,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stream,
            acceptors: [{
              "expected" => "ACTIVE",
              "matcher" => "path",
              "state" => "success",
              "argument" => "stream_description.stream_status"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stream)
      # @return (see Client#describe_stream)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class StreamNotExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (18)
      # @option options [Integer] :delay (10)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 18,
          delay: 10,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_stream,
            acceptors: [{
              "expected" => "ResourceNotFoundException",
              "matcher" => "error",
              "state" => "success"
            }]
          )
        }.merge(options))
      end

      # @option (see Client#describe_stream)
      # @return (see Client#describe_stream)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
