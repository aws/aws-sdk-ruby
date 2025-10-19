# frozen_string_literal: true

# This is generated code!

module Aws::DirectoryService
  # @api private
  module Waiters

    # @api private
    #
    #
    class HybridADUpdated
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 120,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_hybrid_ad_update,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "update_activities.self_managed_instances[].status",
                    "expected" => "Updated",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "update_activities.self_managed_instances[].status",
                    "expected" => "UpdateFailed",
                    "comparator" => "anyStringEquals"
                  }
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
