# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::Schemas
  module Waiters

    # Wait until code binding is generated
    class CodeBindingExists

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (30)
      # @option options [Integer] :delay (2)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 30,
          delay: 2,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_code_binding,
            acceptors: [
              {
                "expected" => "CREATE_COMPLETE",
                "matcher" => "path",
                "state" => "success",
                "argument" => "status"
              },
              {
                "expected" => "CREATE_IN_PROGRESS",
                "matcher" => "path",
                "state" => "retry",
                "argument" => "status"
              },
              {
                "expected" => "CREATE_FAILED",
                "matcher" => "path",
                "state" => "failure",
                "argument" => "status"
              },
              {
                "matcher" => "error",
                "expected" => "NotFoundException",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_code_binding)
      # @return (see Client#describe_code_binding)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
