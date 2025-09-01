# frozen_string_literal: true

# This is generated code!

module Aws::AutoScaling

  # @api private
  module Waiters
    # @api private
    #
    #
    class GroupExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "length(auto_scaling_groups) > `0`",
                    "expected" => "true",
                    "comparator" => "booleanEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "length(auto_scaling_groups) > `0`",
                    "expected" => "false",
                    "comparator" => "booleanEquals"
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

    # @api private
    #
    #
    class GroupInService
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "contains(auto_scaling_groups[].[length(instances[?lifecycle_state=='InService']) >= min_size][], `false`)",
                    "expected" => "false",
                    "comparator" => "booleanEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "contains(auto_scaling_groups[].[length(instances[?lifecycle_state=='InService']) >= min_size][], `false`)",
                    "expected" => "true",
                    "comparator" => "booleanEquals"
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

    # @api private
    #
    #
    class GroupNotExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 15,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "length(auto_scaling_groups) > `0`",
                    "expected" => "false",
                    "comparator" => "booleanEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "length(auto_scaling_groups) > `0`",
                    "expected" => "true",
                    "comparator" => "booleanEquals"
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