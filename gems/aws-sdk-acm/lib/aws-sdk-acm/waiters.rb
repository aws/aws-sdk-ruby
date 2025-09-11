# frozen_string_literal: true

# This is generated code!

module Aws::ACM

  # @api private
  module Waiters
    # @api private
    #
    #
    class CertificateValidated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 60,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_certificate,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "certificate.domain_validation_options[].validation_status",
                    "expected" => "SUCCESS",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "certificate.domain_validation_options[].validation_status",
                    "expected" => "PENDING_VALIDATION",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "certificate.status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              }
            ]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
