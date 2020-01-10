# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::AppStream
  module Waiters

    class FleetStarted

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_fleets,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "fleets[].state",
                "expected" => "ACTIVE"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "fleets[].state",
                "expected" => "PENDING_DEACTIVATE"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "fleets[].state",
                "expected" => "INACTIVE"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_fleets)
      # @return (see Client#describe_fleets)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class FleetStopped

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (30)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 30,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_fleets,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "pathAll",
                "argument" => "fleets[].state",
                "expected" => "INACTIVE"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "fleets[].state",
                "expected" => "PENDING_ACTIVATE"
              },
              {
                "state" => "failure",
                "matcher" => "pathAny",
                "argument" => "fleets[].state",
                "expected" => "ACTIVE"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_fleets)
      # @return (see Client#describe_fleets)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
