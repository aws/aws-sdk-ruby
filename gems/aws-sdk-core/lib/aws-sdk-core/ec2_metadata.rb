require 'time'
require 'net/http'

module Aws
  class EC2Metadata
    # Path for PUT request for token
    # @api private
    METADATA_TOKEN_PATH = '/latest/api/token'.freeze

    # @api private
    class TokenRetrievalError < RuntimeError; end

    # @api private
    class TokenExpiredError < RuntimeError; end

    # @api private
    class MetadataNotFoundError < RuntimeError; end

    # @api private
    class RequestForbiddenError < RuntimeError; end

    # TODO - docs
    def initialize(options = {})
      @retries = options[:retries] || 1
      @endpoint = options[:endpoint] || '169.254.169.254'
      @port = options[:port] || 80
      @http_open_timeout = options[:http_open_timeout] || 1
      @http_read_timeout = options[:http_read_timeout] || 1
      @http_debug_output = options[:http_debug_output]
      @backoff = backoff(options[:backoff])
      @token_ttl = options[:token_ttl] || 21_600

      @token = nil
      @mutex = Mutex.new
    end

    def get(path)
      retry_errors(max_retries: @retries) do
        @mutex.synchronize do
          fetch_token unless @token && !@token.expired?
        end

        open_connection do |conn|
          http_get(conn, path, @token.value)
        end
      end
    end

    private

    def fetch_token
      open_connection do |conn|
        token_value, token_ttl = http_put(conn, @token_ttl)
        @token = Token.new(value: token_value, ttl: token_ttl)
      end
    end

    def http_get(connection, path, token)
      headers = {
        'User-Agent' => "aws-sdk-ruby3/CORE_GEM_VERSION",
        'x-aws-ec2-metadata-token' => token
      }
      request = Net::HTTP::Get.new(path, headers)
      response = connection.request(request)

      case response.code.to_i
      when 200
        response.body
      when 401
        raise TokenExpiredError
      when 404
        raise MetadataNotFoundError
      end
    end

    def http_put(connection, ttl)
      headers = {
        'User-Agent' => "aws-sdk-ruby3/CORE_GEM_VERSION",
        'x-aws-ec2-metadata-token-ttl-seconds' => ttl.to_s
      }
      request = Net::HTTP::Put.new(METADATA_TOKEN_PATH, headers)
      response = connection.request(request)

      case response.code.to_i
      when 200
        [
          response.body,
          response.header['x-aws-ec2-metadata-token-ttl-seconds'].to_i
        ]
      when 400
        raise TokenRetrievalError
      when 403
        raise RequestForbiddenError
      end
    end

    def open_connection
      http = Net::HTTP.new(@endpoint, @port, nil)
      http.open_timeout = @http_open_timeout
      http.read_timeout = @http_read_timeout
      http.set_debug_output(@http_debug_output) if @http_debug_output
      http.start
      yield(http).tap { http.finish }
    end

    def retry_errors(options = {}, &_block)
      max_retries = options[:max_retries]
      retries = 0
      begin
        yield
      rescue TokenRetrievalError, MetadataNotFoundError, MetadataNotFoundError
        raise
      rescue StandardError, TokenExpiredError
        raise unless retries < max_retries

        @backoff.call(retries)
        retries += 1
        retry
      end
    end

    def backoff(backoff)
      case backoff
      when Proc then backoff
      when Numeric then ->(_) { sleep(backoff) }
      else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
      end
    end

    # @api private
    class Token
      def initialize(options = {})
        @ttl   = options[:ttl]
        @value = options[:value]
        @created_time = Time.now
      end

      # [String] Returns the token value.
      attr_reader :value

      # [Boolean] Returns true if the token expired.
      def expired?
        Time.now - @created_time > @ttl
      end
    end
  end
end
