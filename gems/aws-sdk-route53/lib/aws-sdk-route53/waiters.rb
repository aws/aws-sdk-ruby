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
  module Route53
    module Waiters
      class ResourceRecordSetsChanged

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (60)
        # @option options [Integer] :delay (30)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 60,
            delay: 30,
            poller: Aws::Waiters::Poller.new(
              "operation" => "GetChange",
              "acceptors" => [{
                "matcher" => "path",
                "expected" => "INSYNC",
                "argument" => "ChangeInfo.Status",
                "state" => "success"
              }]
            )
          }.merge(options))
        end

        # @option (see Client#get_change)
        # @return (see Client#get_change)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
