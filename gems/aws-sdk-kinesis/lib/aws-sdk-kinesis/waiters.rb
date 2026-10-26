# frozen_string_literal: true

# This is generated code!

module Aws::Kinesis
  # @api private
  module Waiters

    # @api private
    #
    #
    class ChannelActive
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "channel_description.channel_status",
                    "expected" => "ACTIVE",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "channel_description.channel_status",
                    "expected" => "CREATING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "retry",
                "matcher" => {
                  "output" => {
                    "path" => "channel_description.channel_status",
                    "expected" => "UPDATING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "channel_description.channel_status",
                    "expected" => "DELETING",
                    "comparator" => "stringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "channel_description.channel_status",
                    "expected" => "FAILED",
                    "comparator" => "stringEquals"
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
    class StreamExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stream,
            acceptors: [{
              "state" => "success",
              "matcher" => {
                "output" => {
                  "path" => "stream_description.stream_status",
                  "expected" => "ACTIVE",
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

    # @api private
    #
    #
    class StreamNotExists
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 10,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :describe_stream,
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
