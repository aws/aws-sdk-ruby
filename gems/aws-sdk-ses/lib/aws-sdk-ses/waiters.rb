# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SES
    module Waiters
      class IdentityExists

        # @option options [required, Client] :client
        # @option options [Integer] :max_attempts (20)
        # @option options [Integer] :delay (3)
        # @option options [Proc] :before_attempt
        # @option options [Proc] :before_wait
        def initialize(options = {})
          @client = options[:client]
          @waiter = Aws::Waiters::Waiter.new({
            max_attempts: 20,
            delay: 3,
            poller: Aws::Waiters::Poller.new(
              "operation" => "GetIdentityVerificationAttributes",
              "acceptors" => [{
                "expected" => "Success",
                "matcher" => "pathAll",
                "state" => "success",
                "argument" => "VerificationAttributes.*.VerificationStatus"
              }]
            )
          }.merge(options))
        end

        # @option (see Client#get_identity_verification_attributes)
        # @return (see Client#get_identity_verification_attributes)
        def wait(params = {})
          @waiter.wait(client: @client, params: params)
        end

        # @api private
        attr_reader :waiter

      end
    end
  end
end
