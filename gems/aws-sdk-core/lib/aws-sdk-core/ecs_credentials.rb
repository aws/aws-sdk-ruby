# frozen_string_literal: true

require 'time'
require 'net/http'
require 'resolv'

module Aws
  # An auto-refreshing credential provider that loads credentials from
  # instances running in ECS.
  #
  #     ecs_credentials = Aws::ECSCredentials.new(retries: 3)
  #     ec2 = Aws::EC2::Client.new(credentials: ecs_credentials)
  class ECSCredentials
    include CredentialProvider
    include RefreshingCredentials

    # @api private
    class Non200Response < RuntimeError; end

    # These are the errors we trap when attempting to talk to the
    # instance metadata service.  Any of these imply the service
    # is not present, no responding or some other non-recoverable
    # error.
    # @api private
    NETWORK_ERRORS = [
      Errno::EHOSTUNREACH,
      Errno::ECONNREFUSED,
      Errno::EHOSTDOWN,
      Errno::ENETUNREACH,
      SocketError,
      Timeout::Error,
      Non200Response
    ].freeze

    # @param [Hash] options
    # @option options [Integer] :retries (5) Number of times to retry
    #   when retrieving credentials.
    # @option options [String] :ip_address ('169.254.170.2') This value is
    #   ignored if `endpoint` is set and `credential_path` is not set.
    # @option options [Integer] :port (80) This value is ignored if `endpoint`
    #   is set and `credential_path` is not set.
    # @option options [String] :credential_path By default, the value of the
    #   AWS_CONTAINER_CREDENTIALS_RELATIVE_URI environment variable.
    # @option options [String] :endpoint The ECS credential endpoint.
    #   By default, this is the value of the AWS_CONTAINER_CREDENTIALS_FULL_URI
    #   environment variable. This value is ignored if `credential_path` or
    #   ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI'] is set.
    # @option options [Float] :http_open_timeout (5)
    # @option options [Float] :http_read_timeout (5)
    # @option options [Numeric, Proc] :delay By default, failures are retried
    #   with exponential back-off, i.e. `sleep(1.2 ** num_failures)`. You can
    #   pass a number of seconds to sleep between failed attempts, or
    #   a Proc that accepts the number of failures.
    # @option options [IO] :http_debug_output (nil) HTTP wire
    #   traces are sent to this object.  You can specify something
    #   like $stdout.
    # @option options [Callable] before_refresh Proc called before
    #   credentials are refreshed. `before_refresh` is called
    #   with an instance of this object when
    #   AWS credentials are required and need to be refreshed.
    def initialize(options = {})
      credential_path = options[:credential_path] ||
                        ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI']
      endpoint = options[:endpoint] ||
                 ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI']
      initialize_uri(options, credential_path, endpoint)
      @authorization_token = ENV['AWS_CONTAINER_AUTHORIZATION_TOKEN']

      @retries = options[:retries] || 5
      @http_open_timeout = options[:http_open_timeout] || 5
      @http_read_timeout = options[:http_read_timeout] || 5
      @http_debug_output = options[:http_debug_output]
      @backoff = backoff(options[:backoff])
      @async_refresh = false
      super
    end

    # @return [Integer] The number of times to retry failed attempts to
    #   fetch credentials from the instance metadata service. Defaults to 0.
    attr_reader :retries

    private

    def initialize_uri(options, credential_path, endpoint)
      if credential_path
        initialize_relative_uri(options, credential_path)
      # Use FULL_URI/endpoint only if RELATIVE_URI/path is not set
      elsif endpoint
        initialize_full_uri(endpoint)
      else
        raise ArgumentError,
              'Cannot instantiate an ECS Credential Provider '\
              'without a credential path or endpoint.'
      end
    end

    def initialize_relative_uri(options, path)
      @host = options[:ip_address] || '169.254.170.2'
      @port = options[:port] || 80
      @scheme = 'http'
      @credential_path = path
    end

    def initialize_full_uri(endpoint)
      uri = URI.parse(endpoint)
      validate_full_uri!(uri)
      @host = uri.host
      @port = uri.port
      @scheme = uri.scheme
      @credential_path = uri.path
    end

    # Validate that the full URI is using a loopback address if scheme is http.
    def validate_full_uri!(full_uri)
      return unless full_uri.scheme == 'http'

      begin
        return if ip_loopback?(IPAddr.new(full_uri.host))
      rescue IPAddr::InvalidAddressError
        addresses = Resolv.getaddresses(full_uri.host)
        return if addresses.all? { |addr| ip_loopback?(IPAddr.new(addr)) }
      end

      raise ArgumentError,
            'AWS_CONTAINER_CREDENTIALS_FULL_URI must use a loopback '\
            'address when using the http scheme.'
    end

    # loopback? method is available in Ruby 2.5+
    # Replicate the logic here.
    def ip_loopback?(ip_address)
      case ip_address.family
      when Socket::AF_INET
        ip_address & 0xff000000 == 0x7f000000
      when Socket::AF_INET6
        ip_address == 1
      else
        false
      end
    end

    def backoff(backoff)
      case backoff
      when Proc then backoff
      when Numeric then ->(_) { sleep(backoff) }
      else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
      end
    end

    def refresh
      # Retry loading credentials up to 3 times is the instance metadata
      # service is responding but is returning invalid JSON documents
      # in response to the GET profile credentials call.

      retry_errors([Aws::Json::ParseError, StandardError], max_retries: 3) do
        c = Aws::Json.load(get_credentials.to_s)
        @credentials = Credentials.new(
          c['AccessKeyId'],
          c['SecretAccessKey'],
          c['Token']
        )
        @expiration = c['Expiration'] ? Time.iso8601(c['Expiration']) : nil
      end
    rescue Aws::Json::ParseError
      raise Aws::Errors::MetadataParserError
    end

    def get_credentials
      # Retry loading credentials a configurable number of times if
      # the instance metadata service is not responding.

      retry_errors(NETWORK_ERRORS, max_retries: @retries) do
        open_connection do |conn|
          http_get(conn, @credential_path)
        end
      end
    rescue StandardError
      '{}'
    end

    def open_connection
      http = Net::HTTP.new(@host, @port, nil)
      http.open_timeout = @http_open_timeout
      http.read_timeout = @http_read_timeout
      http.set_debug_output(@http_debug_output) if @http_debug_output
      http.use_ssl = @scheme == 'https'
      http.start
      yield(http).tap { http.finish }
    end

    def http_get(connection, path)
      request = Net::HTTP::Get.new(path)
      request['Authorization'] = @authorization_token if @authorization_token
      response = connection.request(request)
      raise Non200Response unless response.code.to_i == 200

      response.body
    end

    def retry_errors(error_classes, options = {})
      max_retries = options[:max_retries]
      retries = 0
      begin
        yield
      rescue *error_classes => _e
        raise unless retries < max_retries

        @backoff.call(retries)
        retries += 1
        retry
      end
    end
  end
end
