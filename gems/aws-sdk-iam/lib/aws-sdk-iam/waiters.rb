# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::IAM
  module Waiters

    class InstanceProfileExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 1,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_instance_profile,
            acceptors: [
              {
                "expected" => 200,
                "matcher" => "status",
                "state" => "success"
              },
              {
                "state" => "retry",
                "matcher" => "status",
                "expected" => 404
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_instance_profile)
      # @return (see Client#get_instance_profile)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end

    class UserExists

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
            operation_name: :get_user,
            acceptors: [
              {
                "state" => "success",
                "matcher" => "status",
                "expected" => 200
              },
              {
                "state" => "retry",
                "matcher" => "error",
                "expected" => "NoSuchEntity"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_user)
      # @return (see Client#get_user)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
