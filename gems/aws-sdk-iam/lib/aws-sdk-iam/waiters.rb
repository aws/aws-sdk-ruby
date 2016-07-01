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
  module IAM
    module Waiters
      class InstanceProfileExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (40)
        # @option options [Integer] :delay (1)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 40,
            delay: 1,
            poller: Aws::Waiters::Poller.new(
              "operation" => "GetInstanceProfile",
              "acceptors" => [
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

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (20)
        # @option options [Integer] :delay (1)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 20,
            delay: 1,
            poller: Aws::Waiters::Poller.new(
              "operation" => "GetUser",
              "acceptors" => [
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
end
