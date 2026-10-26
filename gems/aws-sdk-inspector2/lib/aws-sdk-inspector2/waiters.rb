# frozen_string_literal: true

# This is generated code!

module Aws::Inspector2
  # @api private
  module Waiters

    # @api private
    #
    # Wait until a connector reaches the CONNECTED health status, typically after CreateConnector or UpdateConnector + ConnectorEnabled. Caller MUST filter ListConnectors by the specific connector ARN so the matchers apply only to the target connector. Success when all returned items have health.connectorStatus == CONNECTED. Failure when any item is in health.connectorStatus == FAILED_TO_CONNECT or enablementStatus == FAILED_TO_ENABLE.
    #
    class ConnectorConnected
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :list_connectors,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "items[].health.connector_status",
                    "expected" => "CONNECTED",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "items[].health.connector_status",
                    "expected" => "FAILED_TO_CONNECT",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "items[].enablement_status",
                    "expected" => "FAILED_TO_ENABLE",
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

    # @api private
    #
    # Wait until a connector is no longer returned by ListConnectors. Caller MUST filter ListConnectors by the specific connector ARN; success is reached when the filtered result returns zero items. Failure when the deletion terminally fails (FAILED_TO_DELETE).
    #
    class ConnectorDeleted
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :list_connectors,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "length(items) == `0`",
                    "expected" => "true",
                    "comparator" => "booleanEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "items[].enablement_status",
                    "expected" => "FAILED_TO_DELETE",
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

    # @api private
    #
    # Wait until a connector reaches the ENABLED state, whether after CreateConnector or UpdateConnector. Caller MUST filter ListConnectors by the specific connector ARN so the matchers apply only to the target connector. Success when all returned items have enablementStatus == ENABLED. Failure when any item is in FAILED_TO_ENABLE or FAILED_TO_UPDATE.
    #
    class ConnectorEnabled
      def initialize(options = {})
        @client = options[:client]
        @waiter = Smithy::Client::Waiters::Waiter.new(
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 30,
          max_delay: options[:max_delay] || 120,
          poller: Smithy::Client::Waiters::Poller.new(
            operation_name: :list_connectors,
            acceptors: [
              {
                "state" => "success",
                "matcher" => {
                  "output" => {
                    "path" => "items[].enablement_status",
                    "expected" => "ENABLED",
                    "comparator" => "allStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "items[].enablement_status",
                    "expected" => "FAILED_TO_ENABLE",
                    "comparator" => "anyStringEquals"
                  }
                }
              },
              {
                "state" => "failure",
                "matcher" => {
                  "output" => {
                    "path" => "items[].enablement_status",
                    "expected" => "FAILED_TO_UPDATE",
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
