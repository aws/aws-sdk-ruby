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

        def clock_correction(endpoint)
          @mutex.synchronize { @endpoint_clock_corrections[endpoint] }
        end

        def set_clock_correction(endpoint, correction)
          @mutex.synchronize { @endpoint_clock_corrections[endpoint] = correction }
        end

        def corrected_now_utc(endpoint)
          clock_correction = clock_correction(endpoint)
          Time.now.utc + clock_correction
        end

        # Determines whether a request has clock skew by comparing
        # the adjusted current time against the server's time in the response
        # @param context [Seahorse::Client::RequestContext]
        def clock_skewed?(context)
          endpoint = context.http_request.endpoint.to_s
          server_time = server_time(context.http_response)
          corrected_now = corrected_now_utc(endpoint)
          server_time && (corrected_now - server_time).abs > CLOCK_SKEW_THRESHOLD
        end

        # Update the stored clockscew value for an endpoint
        # from the server's time in the response
        # @param context [Seahorse::Client::RequestContext]
        def update_clock_skew(context)
          puts "Checking clock skew"
          endpoint = context.http_request.endpoint.to_s
          now_utc = Time.now.utc
          server_time = server_time(context.http_response)
          if (server_time && (now_utc - server_time).abs > CLOCK_SKEW_THRESHOLD)
            puts "CLOCK SKEW for endpoint=#{endpoint} value: #{now_utc - server_time}"
            set_clock_correction(endpoint, now_utc - server_time)
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

