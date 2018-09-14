require 'http/2'
require 'openssl'
require 'socket'

module Seahorse
  module Client
    # @api private
    module H2
      class Connection

        OPTIONS = {
          max_concurrent_streams: 100,
          connection_timeout: 60, # TODO
          http_wire_trace: false,
          ssl_verify_peer: true,
          ssl_ca_bundle: nil,
          ssl_ca_directory: nil,
          ssl_ca_store: nil,
        }

        # chunk read size at socket
        CHUNKSIZE = 1024

        def initialize(options = {})
          OPTIONS.each_pair do |opt_name, default_value|
            value = options[opt_name].nil? ? default_value : options[opt_name]
            instance_variable_set("@#{opt_name}", value)
          end
          @h2_client = HTTP2::Client.new(
            settings_max_concurrent_streams: max_concurrent_streams
          )
          @status = :ready
        end

        OPTIONS.keys.each do |attr_name|
          attr_reader(attr_name)
        end

        alias ssl_verify_peer? ssl_verify_peer

        def new_stream
          # TODO, force limit here?
          # TODO rescue, new stream failed?
          @h2_client.new_stream
        end

        def connect(endpoint)
          if @status == :ready
            @socket = _build_tcp_over_tls(endpoint) 
            @socket.connect
            unless @socket.alpn_protocol == 'h2'
              # TODO Error
            end
            _register_h2_callbacks
            @status = :active
          end
        end

        def start
          return if @socket_thread
          @socket_thread = Thread.new do
            while !@socket.closed? && !@socket.eof? && @h2_client.active_stream_count > 0
              data = @socket.read_nonblock(CHUNKSIZE)
              begin
                @h2_client << data
                # TODO H2 errors
              rescue => e
                puts e.backtrace
                puts "#{e.class} - closing socket"
                self.close!
              end
            end
          end
        end

        def close!
          @socket.close
          Thread.kill(@socket_thread)
          @status = :closed
        end

        private

        def _register_h2_callbacks
          @h2_client.on(:frame) do |bytes|
            @socket.print(bytes)
            @socket.flush
          end
        end

        def _build_tcp_over_tls(endpoint)
          tcp = TCPSocket.new(endpoint.host, endpoint.port)
          socket = OpenSSL::SSL::SSLSocket.new(tcp, _ssl_context)
          socket.sync_close = true
          socket.hostname = endpoint.hostname
          puts "socket ssl version #{socket.ssl_version}"
          # TODO raise error if not tls
          socket
        end

        def _ssl_context
          ssl_ctx = OpenSSL::SSL::SSLContext.new
          ssl_ctx.timeout = connection_timeout if connection_timeout
          if ssl_verify_peer?
            ssl_ctx.verify_mode = OpenSSL::SSL::VERIFY_PEER
            ssl_ctx.ca_file = ssl_ca_bundle if ssl_ca_bundle
            ssl_ctx.ca_path = ssl_ca_directory if ssl_ca_directory
            ssl_ctx.cert_store = ssl_ca_store if ssl_ca_store
          else
            ssl_ctx.verify_mode = OpenSSL::SSL::VERIFY_NONE
          end
          ssl_ctx.alpn_protocols = ['h2']
          ssl_ctx.alpn_select_cb = lambda do |protocols|
            if protocols.include? 'h2'
              'h2' 
            else
              # Server not supporting h2
              # TODO, error handling / Warning?
            end
          end
          ssl_ctx
        end

      end
    end
  end
end

