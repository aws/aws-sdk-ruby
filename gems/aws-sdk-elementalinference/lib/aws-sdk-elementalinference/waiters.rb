# frozen_string_literal: true

# This is generated code!

module Aws::ElementalInference
  # @api private
  module Waiters

    # @api private
    #
    # Wait until a Feed is deleted
    #
    class FeedDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 3,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_feed,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "errorType" => "ResourceNotFoundException"
                }
              },
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "DELETED",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "status",
                    "expected" => "DELETING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "InternalServerErrorException"
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "errorType" => "TooManyRequestException"
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
