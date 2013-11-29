module Seahorse
  module Client
    module NetHttp

      # The default HTTP handler for Seahorse::Client.  This is based on
      # the Ruby's `Net::HTTP`.
      class Handler < Client::Handler

        NETWORK_ERRORS = [
          SocketError, EOFError, IOError, Timeout::Error,
          Errno::ECONNABORTED, Errno::ECONNRESET, Errno::EPIPE,
          Errno::EINVAL, Errno::ETIMEDOUT, OpenSSL::SSL::SSLError
        ]

        # Raised when a {Handler} can not construct a `Net::HTTP::Request`
        # from the given http verb.
        class InvalidHttpVerbError < StandardError; end

        # @param [RequestContext] context
        # @return [Response]
        def call(context)
          response = Response.new(context: context)
          begin
            transmit(context.config, context.http_request, context.http_response)
          rescue *NETWORK_ERRORS => error
            response.error = Http::Error.new(error)
          end
          response
        end

        # @param [Configuration] config
        # @return [ConnectionPool]
        def pool_for(config)
          ConnectionPool.for(pool_options(config))
        end

        private

        # @param [Configuration] config
        # @param [Http::Request] request
        # @param [Http::Response] response
        # @return [void]
        def transmit(config, request, response)
          pool_for(config).session_for(request.endpoint) do |http|

            http.read_timeout = config.http_read_timeout
            http.request(net_http_request(request)) do |resp|

              # extract HTTP status code and headers
              response.status_code = resp.code.to_i
              response.headers.update(response_headers(resp))

              # read the body in chunks
              resp.read_body do |chunk|
                response.body.write(chunk)
              end

            end
          end
        end

        # Extracts the {ConnectionPool} configuration options.
        # @param [Configuration] config
        # @return [Hash]
        def pool_options(config)
          ConnectionPool::OPTIONS.keys.inject({}) do |opts,opt|
            opts[opt] = config.send(opt)
            opts
          end
        end

        # Constructs and returns a Net::HTTP::Request object from
        # a {Http::Request}.
        # @param [Http::Request] request
        # @return [Net::HTTP::Request]
        def net_http_request(request)
          request_class = net_http_request_class(request)
          req = request_class.new(request.endpoint.request_uri, headers(request))
          req.body_stream = request.body
          req
        end

        # @param [Http::Request] request
        # @raise [InvalidHttpVerbError]
        # @return Returns a base `Net::HTTP::Request` class, e.g.,
        #   `Net::HTTP::Get`, `Net::HTTP::Post`, etc.
        def net_http_request_class(request)
          Net::HTTP.const_get(request.http_method.capitalize)
        rescue NameError
          msg = "`#{request.http_method}` is not a valid http verb"
          raise InvalidHttpVerbError, msg
        end

        # @param [Http::Request] request
        # @return [Hash] Returns a vanilla hash of headers to send with the
        #   HTTP request.
        def headers(request)
          # setting these to stop net/http from providing defaults
          headers = { 'content-type' => '', 'accept-encoding' => '' }
          request.headers.each_pair do |key, value|
            headers[key] = value
          end
          headers
        end

        # @param [Net::HTTP::Response] response
        # @return [Hash<String, String>]
        def response_headers(response)
          response.to_hash.inject({}) do |headers, (k, v)|
            headers[k] = v.first
            headers
          end
        end

      end
    end
  end
end
