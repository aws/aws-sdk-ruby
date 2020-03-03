module Aws
  module Plugins
    module Retries

      # @api private
      class ClockSkew

        CLOCK_SKEW_THRESHOLD = 5 * 60 # five minutes

        def initialize
          @mutex = Mutex.new
          @system_clock_offset = 0
          @endpoint_clock_corrections = Hash.new(0)
        end

        # Gets the clock_correction in seconds to apply to a given endpoint
        # @param endpoint [URI / String]
        def clock_correction(endpoint)
          @mutex.synchronize { @endpoint_clock_corrections[endpoint.to_s] }
        end

        # Sets the clock correction for an endpoint
        # @param endpoint [URI / String]
        # @param correction [Number]
        def set_clock_correction(endpoint, correction)
          @mutex.synchronize { @endpoint_clock_corrections[endpoint.to_s] = correction }
        end

        # Determines whether a request has clock skew by comparing
        # the current time against the server's time in the response
        # @param context [Seahorse::Client::RequestContext]
        def clock_skewed?(context)
          server_time = server_time(context.http_response)
          !!server_time && (Time.now.utc - server_time).abs > CLOCK_SKEW_THRESHOLD
        end

        # Update the stored clock skew value for an endpoint
        # from the server's time in the response
        # @param context [Seahorse::Client::RequestContext]
        def update_clock_skew(context)
          endpoint = context.http_request.endpoint
          now_utc = Time.now.utc
          server_time = server_time(context.http_response)
          if server_time && (now_utc - server_time).abs > CLOCK_SKEW_THRESHOLD
            set_clock_correction(endpoint, server_time - now_utc)
          end
        end

        private

        # @param response [Seahorse::Client::Http::Response:]
        def server_time(response)
          begin
            Time.parse(response.headers['date']).utc
          rescue
            nil
          end
        end

      end
    end
  end
end

