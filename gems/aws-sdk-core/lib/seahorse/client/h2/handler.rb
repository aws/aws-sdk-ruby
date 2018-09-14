module Seahorse
  module Client
    # @api private
    module H2

      # TODO Doc
      class Handler < Client::Handler

        #TODO errors handling
        
        def call(context)
          conn = context.client.connection
          stream = conn.new_stream

          conn.connect(context.http_request.endpoint)
          register_callbacks(context.http_response, stream)
          initialize_request(context.http_request, stream)
          conn.start
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
          stream.headers(h2_headers(req), end_stream: false)
          stream.data(req.body.read, end_stream: true)
        end

        def h2_headers(req)
          headers = {}
          headers[':scheme'] = req.endpoint.scheme
          headers[':method'] = req.http_method.capitalize
          headers[':path'] = req.endpoint.path
          req.headers.each_pair do |key, value|
            headers[key.downcase] = value
          end
          headers
        end

      end

    end
  end
end
