# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::OpsWorksCM
  module Waiters

    # Wait until node is associated or disassociated.
    class NodeAssociated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (15)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 15,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_node_association_status,
            acceptors: [
              {
                "expected" => "SUCCESS",
                "state" => "success",
                "matcher" => "path",
                "argument" => "node_association_status"
              },
              {
                "expected" => "FAILED",
                "state" => "failure",
                "matcher" => "path",
                "argument" => "node_association_status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_node_association_status)
      # @return (see Client#describe_node_association_status)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
