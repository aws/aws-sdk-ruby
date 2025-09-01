# frozen_string_literal: true

# This is generated code!

module Aws::Route53

  # @api private
  module Waiters
    # @api private
    #
    #
    class ResourceRecordSetsChanged
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_change,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "change_info.status",
                  "expected" => "INSYNC",
                  "comparator" => "stringEquals"
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