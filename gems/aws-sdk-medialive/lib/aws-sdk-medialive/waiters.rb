# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::MediaLive
  module Waiters

    # Wait until a channel has been created
    class ChannelCreated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (5)
      # @option options [Integer] :delay (3)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 5,
          delay: 3,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              },
              {
                "state" => "failure",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "CREATE_FAILED"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel has been deleted
    class ChannelDeleted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (20)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 20,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETED"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "DELETING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel is running
    class ChannelRunning

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "RUNNING"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STARTING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    # Wait until a channel has is stopped
    class ChannelStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (28)
      # @option options [Integer] :delay (5)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 28,
          delay: 5,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "IDLE"
              },
              {
                "state" => "retry",
                "matcher" => "path",
                "argument" => "state",
                "expected" => "STOPPING"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 500
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_channel)
      # @return (see Client#describe_channel)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
