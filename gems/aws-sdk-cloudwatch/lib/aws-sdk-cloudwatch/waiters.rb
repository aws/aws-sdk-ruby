# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatch

  # @api private
  module Waiters
    # @api private
    #
    #
    class AlarmExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_alarms,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "length(metric_alarms[]) > `0`",
                  "expected" => "true",
                  "comparator" => "booleanEquals"
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

    # @api private
    #
    #
    class CompositeAlarmExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_alarms,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "length(composite_alarms[]) > `0`",
                  "expected" => "true",
                  "comparator" => "booleanEquals"
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
