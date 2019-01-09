module Seahorse
  module Client
    class AsyncBase < Seahorse::Client::Base

      # default H2 plugins
      @plugins = PluginList.new([
        Plugins::Endpoint,
        Plugins::H2,
        Plugins::ResponseTarget
      ])

      def initialize(plugins, options)
        super
        @connection = H2::Connection.new(options)
      end

      # @return [H2::Connection]
      attr_reader :connection

      # @return [Array<Symbol>] Returns a list of valid async request
      #   operation names.
      def operation_names
        self.class.api.async_operation_names
      end

      def close_connection
        @connection.close!
      end

      def connection_errors
        @connection.errors
      end

    end
  end
end

