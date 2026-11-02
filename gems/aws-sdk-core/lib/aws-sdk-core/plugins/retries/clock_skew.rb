# frozen_string_literal: true

module Aws
  module Plugins
    module Retries
      # @api private
      class ClockSkew
        # Skew detection threshold in seconds (4 minutes).
        CLOCK_SKEW_THRESHOLD = 4 * 60

        # Longest request round trip whose skew measurement is trusted (15 minutes).
        MAX_TRUSTED_REQUEST_DURATION = 15 * 60

        def initialize
          @mutex = Mutex.new
          # Clock corrections applied to the signing timestamp, recorded on every response.
          @endpoint_clock_corrections = Hash.new(0)

          # Estimated skew, calculated on every request and used only to estimate a TTL.
          @endpoint_estimated_skews = Hash.new(nil)
        end

        # Gets the clock_correction in seconds to apply to a given endpoint
        # @param endpoint [URI, String]
        def clock_correction(endpoint)
          @mutex.synchronize { @endpoint_clock_corrections[normalized_endpoint(endpoint)] }
        end

        # The estimated skew factors in any clock skew from
        # the service along with any network latency.
        # This provides a more accurate value for the ttl,
        # which should represent when the client will stop
        # waiting for a request.
        # Estimated Skew should not be used to correct clock skew errors
        # it should only be used to estimate TTL for a request
        def estimated_skew(endpoint)
          @mutex.synchronize { @endpoint_estimated_skews[normalized_endpoint(endpoint)] }
        end

        # Whether a response indicates skew large enough to warrant a retry; records nothing.
        # @param context [Seahorse::Client::RequestContext]
        # @param sent_at [Time, nil] raw (pre-skew) send time, for the midpoint calculation
        def clock_skewed?(context, sent_at = nil)
          candidate = candidate_skew(context, sent_at)
          !!candidate && candidate.abs > CLOCK_SKEW_THRESHOLD
        end

        # Called on every response; records the skew candidate when one can be computed.
        # @param context [Seahorse::Client::RequestContext]
        # @param sent_at [Time, nil] raw (pre-skew) send time, for the midpoint calculation
        def update_clock_correction(context, sent_at = nil)
          candidate = candidate_skew(context, sent_at)
          return if candidate.nil?

          endpoint = context.http_request.endpoint
          set_clock_correction(normalized_endpoint(endpoint), candidate)
        end

        # Called for every request
        # Update our estimated clock skew for the endpoint
        # from the servers time in the response
        # @param context [Seahorse::Client::RequestContext]
        def update_estimated_skew(context)
          endpoint = context.http_request.endpoint
          now_utc = Time.now.utc
          server_time = server_time(context.http_response)
          return unless server_time

          @mutex.synchronize do
            @endpoint_estimated_skews[normalized_endpoint(endpoint)] = server_time - now_utc
          end
        end

        private

        # Single source of truth for skew computation; returns a Float skew or nil.
        # @param context [Seahorse::Client::RequestContext]
        # @param sent_at [Time, nil] raw (pre-skew) send time; midpoint when present, else server - now
        # @return [Float, nil]
        def candidate_skew(context, sent_at = nil)
          response = context.http_response
          server_time = server_time(response)
          # No candidate if the Date header is absent/unparseable or the response was cached.
          return nil if server_time.nil? || response.headers['age']
          return server_time - Time.now.utc unless sent_at

          received_at = Time.now.utc
          elapsed = received_at - sent_at
          # Discard if the request was too slow for the measurement to be trusted.
          return nil if elapsed > MAX_TRUSTED_REQUEST_DURATION

          # Midpoint formula (NTP clock offset, RFC 5905 section 8).
          server_time - (sent_at + (elapsed / 2.0))
        end

        ##
        # @param endpoint [URI, String]
        #     the endpoint to normalize
        #
        # @return [String]
        #     the endpoint's schema, host, and port - without any path or query arguments
        def normalized_endpoint(endpoint)
          uri = endpoint.is_a?(URI::Generic) ? endpoint : URI(endpoint.to_s)

          return endpoint.to_s unless uri.scheme && uri.host

          "#{uri.scheme}://#{uri.host}:#{uri.port}"
        rescue URI::InvalidURIError
          endpoint.to_s
        end

        # @param response [Seahorse::Client::Http::Response:]
        def server_time(response)
          Time.parse(response.headers['date']).utc
        rescue StandardError
          nil
        end

        # Sets the clock correction for an endpoint
        # @param endpoint [URI / String]
        # @param correction [Number]
        def set_clock_correction(endpoint, correction)
          @mutex.synchronize do
            @endpoint_clock_corrections[normalized_endpoint(endpoint)] = correction
          end
        end
      end
    end
  end
end
