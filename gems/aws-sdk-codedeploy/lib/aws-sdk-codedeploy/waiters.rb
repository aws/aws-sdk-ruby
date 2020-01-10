# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::CodeDeploy
  module Waiters

    class DeploymentSuccessful

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (120)
      # @option options [Integer] :delay (15)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 120,
          delay: 15,
          poller: Aws::Waiters::Poller.new(
            operation_name: :get_deployment,
            acceptors: [
              {
                "expected" => "Succeeded",
                "matcher" => "path",
                "state" => "success",
                "argument" => "deployment_info.status"
              },
              {
                "expected" => "Failed",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "deployment_info.status"
              },
              {
                "expected" => "Stopped",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "deployment_info.status"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#get_deployment)
      # @return (see Client#get_deployment)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
