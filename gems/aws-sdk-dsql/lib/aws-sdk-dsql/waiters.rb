# frozen_string_literal: true

# This is generated code!

module Aws::DSQL
  # @api private
  module Waiters

    # @api private
    #
    # Wait until a Cluster is ACTIVE
    #
    class ClusterActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_cluster,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "comparator" => "stringEquals",
                  "expected" => "ACTIVE"
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
    # Wait until a Cluster is gone
    #
    class ClusterNotExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_cluster,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "errorType" => "ResourceNotFoundException"
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
    # Wait until a Stream is ACTIVE
    #
    class StreamActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_stream,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "status",
                  "comparator" => "stringEquals",
                  "expected" => "ACTIVE"
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
    # Wait until a Stream is gone
    #
    class StreamNotExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 2,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :get_stream,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "errorType" => "ResourceNotFoundException"
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
