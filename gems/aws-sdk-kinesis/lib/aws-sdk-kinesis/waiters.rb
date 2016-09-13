# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module Kinesis
    module Waiters
      class StreamExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (18)
        # @option options [Integer] :delay (10)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 18,
            delay: 10,
            poller: Aws::Waiters::Poller.new(
              "operation" => "DescribeStream",
              "acceptors" => [{
                "expected" => "ACTIVE",
                "matcher" => "path",
                "state" => "success",
                "argument" => "StreamDescription.StreamStatus"
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
end
