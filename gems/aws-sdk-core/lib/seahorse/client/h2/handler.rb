require 'http/2'

module Seahorse
  module Client
    # @api private
    module H2

      NETWORK_ERRORS = [
        SocketError, EOFError, IOError, Timeout::Error,
        Errno::ECONNABORTED, Errno::ECONNRESET, Errno::EPIPE,
        Errno::EINVAL, Errno::ETIMEDOUT, OpenSSL::SSL::SSLError,
        Errno::EHOSTUNREACH, Errno::ECONNREFUSED
      ]

      # does not exist in Ruby 1.9.3
      if OpenSSL::SSL.const_defined?(:SSLErrorWaitReadable)
        NETWORK_ERRORS << OpenSSL::SSL::SSLErrorWaitReadable
      end

      # @api private
      DNS_ERROR_MESSAGES = [
        'getaddrinfo: nodename nor servname provided, or not known', # MacOS
        'getaddrinfo: Name or service not known' # GNU
      ]

      class Handler < Client::Handler

        def call(context)
          stream = nil
          begin
            conn = context.client.connection
            stream = conn.new_stream

            conn.connect(context.http_request.endpoint)
            register_callbacks(context.http_response, stream)
            initialize_request(context.http_request, stream)
            conn.start
          rescue *NETWORK_ERRORS => error
            # TODO reconsider H2 retry scenarios
            error = NetworkingError.new(
              error, error_message(context.http_request, error))
            context.http_response.signal_error(error)
          rescue => error
            context.http_response.signal_error(error)
          end
          AsyncResponse.new(context: context, stream: stream)
        end

        private

        def register_callbacks(resp, stream)
          stream.on(:headers) do |h|
            resp.signal_headers(h)
          end

          stream.on(:data) do |d|
            resp.signal_data(d)
          end

          stream.on(:close) do
            resp.signal_done
          end
        end

        def initialize_request(req, stream)
          begin
            stream.headers(h2_headers(req), end_stream: false)
            stream.data(req.body.read, end_stream: true)
          rescue => e
            raise Http2InitialRequestError.new(e)
          end
        end

        # H2 pseudo headers
        # https://http2.github.io/http2-spec/#rfc.section.8.1.2.3
        def h2_headers(req)
          headers = {}
          headers[':scheme'] = req.endpoint.scheme
          headers[':method'] = req.http_method.capitalize
          headers[':path'] = req.endpoint.path.empty? ? '/' : req.endpoint.path
          unless req.endpoint.query.empty?
            headers[':path'] += "?#{req.endpoint.query}"
          end
          req.headers.each_pair do |key, value|
            headers[key.downcase] = value
          end
          headers
        end

        def error_message(req, error)
          if error.is_a?(SocketError) && DNS_ERROR_MESSAGES.include?(error.message)
            host = req.endpoint.host
            "unable to connect to `#{host}`; SocketError: #{error.message}"
          else
            error.message
          end
        end

      end

    end
  end
end
