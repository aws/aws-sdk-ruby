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
  module RDS
    module Waiters
      class DBInstanceAvailable

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
              "operation" => "DescribeDBInstances",
              "acceptors" => [
                {
                  "expected" => "available",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "deleted",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "deleting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "failed",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "incompatible-restore",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "incompatible-parameters",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_db_instances)
        # @return (see Client#describe_db_instances)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end

      class DBInstanceDeleted

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
              "operation" => "DescribeDBInstances",
              "acceptors" => [
                {
                  "expected" => "deleted",
                  "matcher" => "pathAll",
                  "state" => "success",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "DBInstanceNotFound",
                  "matcher" => "error",
                  "state" => "success"
                },
                {
                  "expected" => "creating",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "modifying",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "rebooting",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                },
                {
                  "expected" => "resetting-master-credentials",
                  "matcher" => "pathAny",
                  "state" => "failure",
                  "argument" => "DBInstances[].DBInstanceStatus"
                }
              ]
            )
          }.merge(options))
        end

        # @option (see Client#describe_db_instances)
        # @return (see Client#describe_db_instances)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
