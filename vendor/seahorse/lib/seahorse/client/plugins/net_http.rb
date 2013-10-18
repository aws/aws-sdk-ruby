module Seahorse
  module Client
    module Plugins

      # @seahorse_client_option [String] :http_proxy
      # @seahorse_client_option [Integer] :http_open_timeout (15)
      # @seahorse_client_option [Integer] :http_read_timeout (60)
      # @seahorse_client_option [Integer] :http_idle_timeout (5)
      # @seahorse_client_option [Float] :http_continue_timeout (1)
      # @seahorse_client_option [Boolean] :http_wire_trace (false)
      # @seahorse_client_option [Logger] :logger (nil)
      # @seahorse_client_option [Boolean] :ssl_verify_peer (true)
      # @seahorse_client_option [String] :ssl_ca_bundle
      # @seahorse_client_option [String] :ssl_ca_directory
      class NetHttp < Plugin

        Client::NetHttp::ConnectionPool::OPTIONS.each_pair do |name, default|
          option(name, default)
        end

        handler(Client::NetHttp::Handler, step: :send)

      end
    end
  end
end
