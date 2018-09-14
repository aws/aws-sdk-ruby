module Seahorse
  module Client
    module Http
      class AsyncResponse < Seahorse::Client::Http::Response

        def initialize(options = {})
          super
        end

        def signal_headers(headers)
          # H2 headers arrive as array of pair
          hash = headers.inject({}) do |h, pair|
            key, value = pair
            h[key] = value
            h
          end
          @status_code = hash[":status"].to_i
          @headers = Headers.new(hash)
          emit(:headers, @status_code, @headers)
        end

      end
    end
  end
end
