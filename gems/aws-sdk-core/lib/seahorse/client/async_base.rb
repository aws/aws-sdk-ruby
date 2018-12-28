module Seahorse
  module Client
    class AsyncBase < Seahorse::Client::Base

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

      def close_connection
        @connection.close!
      end

      def connection_errors
        @connection.errors
      end

    end
  end
end

