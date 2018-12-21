require 'http/2'
require 'securerandom'

module Seahorse
  module Client
    # @api private
    module H2

      # TODO, retry?
      NETWORK_ERRORS = [
        SocketError, EOFError, IOError, Timeout::Error,
        Errno::ECONNABORTED, Errno::ECONNRESET, Errno::EPIPE,
        Errno::EINVAL, Errno::ETIMEDOUT, OpenSSL::SSL::SSLError,
        Errno::EHOSTUNREACH, Errno::ECONNREFUSED, OpenSSL::SSL::SSLErrorWaitReadable
      ]

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
            _register_callbacks(context.http_response, stream)

            conn.debug_output("sending initial request ...")
            if input_emitter = context[:input_event_emitter]
              _send_initial_headers(context.http_request, stream)

              # prepare for sending events later
              input_emitter.stream = stream
              # request sigv4 serves as the initial #prior_signature
              input_emitter.encoder.prior_signature =
                context.http_request.headers['authorization'].split('Signature=').last
              input_emitter.validate_event = context.config.validate_params
            else
              _send_initial_headers(context.http_request, stream)
              _send_initial_data(context.http_request, stream)
            end

            conn.start(stream)
          rescue *NETWORK_ERRORS => error
            # TODO reconsider H2 retry scenarios
            error = NetworkingError.new(
              error, error_message(context.http_request, error))
            context.http_response.signal_error(error)
          rescue => error
            # TODO debug only, to be removed
            puts error.backtrace
            conn.debug_output(error.inspect)
            # not retryable
            context.http_response.signal_error(error)
          end
          AsyncResponse.new(context: context, stream: stream)
        end

        private

        def _register_callbacks(resp, stream)
          stream.on(:headers) do |headers|
            resp.signal_headers(headers)
          end

          stream.on(:data) do |data|
            resp.signal_data(data)
          end

          stream.on(:close) do
            resp.signal_done
          end
        end

        def _send_initial_headers(req, stream)
          begin
            headers = _h2_headers(req)
            stream.headers(headers, end_stream: false)
          rescue => e
            raise Http2InitialRequestError.new(e)
          end
        end

        def _send_initial_data(req, stream)
          begin
            data = req.body.read
            stream.data(data, end_stream: true)
          rescue => e
            raise Http2InitialRequestError.new(e)
          end
          data
        end

        # H2 pseudo headers
        # https://http2.github.io/http2-spec/#rfc.section.8.1.2.3
        def _h2_headers(req)
          headers = {}
          headers[':path'] = req.endpoint.path.empty? ? '/' : req.endpoint.path
          headers[':scheme'] = req.endpoint.scheme
          headers[':method'] = req.http_method.upcase
          if req.endpoint.query && !req.endpoint.query.empty?
            headers[':path'] += "?#{req.endpoint.query}"
          end
          req.headers.each {|k, v| headers[k.downcase] = v }
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
