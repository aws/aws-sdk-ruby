# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core/waiters'

module Aws::ACM
  module Waiters

    class CertificateValidated

      # @param [Hash] options
      # @option options [required, Client] :client
      # @option options [Integer] :max_attempts (40)
      # @option options [Integer] :delay (60)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def initialize(options)
        @client = options.fetch(:client)
        @waiter = Aws::Waiters::Waiter.new({
          max_attempts: 40,
          delay: 60,
          poller: Aws::Waiters::Poller.new(
            operation_name: :describe_certificate,
            acceptors: [
              {
                "matcher" => "pathAll",
                "expected" => "SUCCESS",
                "argument" => "certificate.domain_validation_options[].validation_status",
                "state" => "success"
              },
              {
                "matcher" => "pathAny",
                "expected" => "PENDING_VALIDATION",
                "argument" => "certificate.domain_validation_options[].validation_status",
                "state" => "retry"
              },
              {
                "matcher" => "path",
                "expected" => "FAILED",
                "argument" => "certificate.status",
                "state" => "failure"
              },
              {
                "matcher" => "error",
                "expected" => "ResourceNotFoundException",
                "state" => "failure"
              }
            ]
          )
        }.merge(options))
      end

      # @option (see Client#describe_certificate)
      # @return (see Client#describe_certificate)
      def wait(params = {})
        @waiter.wait(client: @client, params: params)
      end

      # @api private
      attr_reader :waiter

    end
  end
end
