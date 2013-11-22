require 'time'
require 'net/http'

module Aws
  class InstanceProfileCredentials < Credentials

    # @api private
    class Non200Response < RuntimeError; end

    # These are the errors we trap when attempting to talk to the
    # instance metadata service.  Any of these imply the service
    # is not present, no responding or some other non-recoverable
    # error.
    # @api private
    FAILURES = [
      Errno::EHOSTUNREACH,
      Errno::ECONNREFUSED,
      SocketError,
      Timeout::Error,
      Non200Response,
    ]

    # @param [Hash] options
    # @option options [String] :ip_address ('169.254.169.254')
    # @option options [Integer] :port (80)
    # @option options [Float] :http_open_timeout (1)
    # @option options [Float] :http_read_timeout (1)
    # @option options [IO] :http_debug_output (nil) HTTP wire
    #   traces are sent to this object.  You can specify something
    #   like $stdout.
    def initialize options = {}
      @ip_address = options[:ip_address] || '169.254.169.254'
      @port = options[:port] || 80
      @http_open_timeout = options[:http_open_timeout] || 1
      @http_read_timeout = options[:http_read_timeout] || 1
      @http_debug_output = options[:http_debug_output]
      refresh!
    end

    # @return [String,nil]
    def access_key_id
      refresh_if_stale
      @access_key_id
    end

    # @return [String,nil]
    def secret_access_key
      refresh_if_stale
      @secret_access_key
    end

    # @return [String,nil]
    def session_token
      refresh_if_stale
      @session_token
    end

    # @return [Time,nil]
    def expiration
      refresh_if_stale
      @expiration
    end

    def refresh!
      credentials = MultiJson.load(get_credentials)
      @access_key_id = credentials['AccessKeyId']
      @secret_access_key = credentials['SecretAccessKey']
      @session_token = credentials['Token']
      if expires = credentials['Expiration']
        @expiration = Time.parse(expires)
      else
        @expiration = nil
      end
    end

    private

    # Refreshes instance metadata credentials if they are within
    # 5 minutes of expiration.
    def refresh_if_stale
      refresh! if @expiration && @expiration.utc <= Time.now.utc + 5 * 60
    end

    def get_credentials
      open_connection do |conn|
        path = '/latest/meta-data/iam/security-credentials/'
        profile_name = http_get(conn, path).lines.first.strip
        http_get(conn, path + profile_name)
      end
    rescue *FAILURES => e
      '{}'
    end

    def open_connection
      http = Net::HTTP.new(@ip_address, @port)
      http.open_timeout = @http_open_timeout
      http.read_timeout = @http_read_timeout
      http.set_debug_output(@http_debug_output) if @http_debug_output
      http.start
      yield(http).tap { http.finish }
    end

    def http_get(connection, path)
      response = connection.request(Net::HTTP::Get.new(path))
      if response.code.to_i == 200
        response.body
      else
        raise Non200Response
      end
    end

  end
end
