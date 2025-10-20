# frozen_string_literal: true

# This is generated code!

module Aws::SES
  # @api private
  module Waiters

    # @api private
    #
    #
    class IdentityExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_identity_verification_attributes,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "verification_attributes.*.verification_status",
                  "expected" => "Success",
                  "comparator" => "allStringEquals"
                }
              }
            }]
          )
        )
      end

      def wait(params = {})
        @waiter.wait(@client, params)
      end
    end

  end
end
