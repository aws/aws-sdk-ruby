module Seahorse
  module Client
    class AsyncBase < Seahorse::Client::Base

      @plugins = PluginList.new([
        Plugins::Endpoint,
        Plugins::H2,
        Plugins::RaiseResponseErrors,
        Plugins::ResponseTarget
      ])

      def initialize(plugins, options)
        super
        @connection = H2::Connection.new(options)
      end

      # @return [H2::Connection]
      attr_reader :connection

      # rename?
      def close_connection
        @connection.close!
      end

    end
  end
end

