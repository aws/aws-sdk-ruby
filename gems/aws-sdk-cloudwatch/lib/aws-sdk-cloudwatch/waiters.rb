# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module CloudWatch
    module Waiters
      class AlarmExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (5)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 5,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeAlarms",
              "acceptors" => [{
                "matcher" => "path",
                "expected" => true,
                "argument" => "length(MetricAlarms[]) > `0`",
                "state" => "success"
              }]
            )
          }.merge(options))
        end

        # @option (see Client#describe_alarms)
        # @return (see Client#describe_alarms)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
