# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
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
