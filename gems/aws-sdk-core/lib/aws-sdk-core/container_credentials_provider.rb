# frozen_string_literal: true

require 'resolv'

module Aws
  module Core
    # Auto-refreshing credentials that loads credentials from instances running in containers.
    #
    #     provider = Aws::Core::ContainerCredentialsProvider.new(retries: 3)
    #     ec2 = Aws::EC2::Client.new(credentials_provider: provider)
    #
    # This credentials provider can be configured by setting one of the following environment variables:
    # * `AWS_CONTAINER_CREDENTIALS_RELATIVE_URI` - The relative URI path to the credentials in the container.
    #   This assumes an endpoint of `http://169.254.170.2`.
    # * `AWS_CONTAINER_CREDENTIALS_FULL_URI` - The full URI to the credentials path in the container.
    #
    # The relative path takes precedence over the full URI if both are set. If using ECS or EKS, either of these
    # environment variables should be set automatically for you.
    #
    # This provider also supports the following optional environment variables:
    # * `AWS_CONTAINER_AUTHORIZATION_TOKEN` - An authorization token to be sent in the `Authorization`
    #   header of the HTTP request to the credentials endpoint.
    # * `AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE` - A path to a file containing the authorization token to be sent
    #   in the `Authorization` header of the HTTP request to the credentials endpoint.
    #
    # The token file takes precedence over the token string if both are set.
    #
    # Automatically handles refreshing credentials if an Expiration time is provided in the credentials payload.
    class ContainerCredentialsProvider
      include Smithy::Client::IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # @api private
      class Non200Response < RuntimeError; end

      # Raised when the token file cannot be read.
      class TokenFileReadError < RuntimeError; end

      # Raised when the token file is invalid.
      class InvalidTokenError < RuntimeError; end

      # @param [Hash] options
      # @option options [Integer] :retries (3)
      #   Number of times to retry when retrieving credentials.
      # @option options [Float] :http_open_timeout (1)
      # @option options [Float] :http_read_timeout (1)
      # @option options [IO] :http_debug_output (nil)
      #   The IO object to send wire trace output to, such as $stdout.
      # @option options [Numeric, Proc] :backoff
      #   By default, failures are retried with exponential backoff, i.e. `sleep(1.2 ** num_failures)`.
      #   You can pass a number of seconds to sleep between failed attempts,
      #   or a Proc that accepts the number of failures.
      # @option options [Proc] :before_refresh A Proc called before credentials are refreshed. `before_refresh` is
      #   called when AWS credentials are required and need to be refreshed.
      def initialize(options = {})
        initialize_uri
        @retries = options[:retries] || 3
        @http_open_timeout = options[:http_open_timeout] || 1
        @http_read_timeout = options[:http_read_timeout] || 1
        @http_debug_output = options[:http_debug_output]
        @backoff = resolve_backoff(options[:backoff])

        @async_refresh = false
        @features = ['CREDENTIALS_HTTP']
        super
      end

      # @return [String]
      attr_reader :host

      # @return [Integer]
      attr_reader :port

      # @return [String]
      attr_reader :scheme

      # @return [String]
      attr_reader :credential_path

      # @return [Integer]
      attr_reader :retries

      # @return [Float]
      attr_reader :http_open_timeout

      # @return [Float]
      attr_reader :http_read_timeout

      # @return [IO, nil]
      attr_reader :http_debug_output

      # @return [Proc]
      attr_reader :backoff

      # Feature IDs for the User-Agent
      # @api private
      attr_accessor :features

      private

      def initialize_uri
        # Prioritize checking for RELATIVE_URI/path
        if (credential_path = ENV.fetch('AWS_CONTAINER_CREDENTIALS_RELATIVE_URI', nil))
          initialize_relative_uri(credential_path)
        # Use FULL_URI/endpoint only if RELATIVE_URI/path is not set
        elsif (endpoint = ENV.fetch('AWS_CONTAINER_CREDENTIALS_FULL_URI', nil))
          initialize_full_uri(endpoint)
        else
          raise ArgumentError, 'Cannot instantiate an HTTP Credentials without a credential path or endpoint.'
        end
      end

      def initialize_relative_uri(credential_path)
        @host = '169.254.170.2'
        @port = 80
        @scheme = 'http'
        @credential_path = credential_path
      end

      def initialize_full_uri(endpoint)
        uri = URI.parse(endpoint)
        validate_full_uri_scheme!(uri)
        validate_full_uri!(uri)
        @host = uri.hostname
        @port = uri.port
        @scheme = uri.scheme
        @credential_path = uri.request_uri
      end

      def validate_full_uri_scheme!(full_uri)
        return if full_uri.is_a?(URI::HTTP) || full_uri.is_a?(URI::HTTPS)

        raise ArgumentError, "'#{full_uri}' must be a valid HTTP or HTTPS URI"
      end

      # Validate that the full URI is using a loopback address, is the ECS container
      # host, or is the EKS container host if scheme is http.
      def validate_full_uri!(full_uri)
        return unless full_uri.scheme == 'http'

        begin
          return if valid_ip_address?(IPAddr.new(full_uri.host))
        rescue IPAddr::InvalidAddressError
          addresses = Resolv.getaddresses(full_uri.host)
          return if addresses.all? { |addr| valid_ip_address?(IPAddr.new(addr)) }
        end

        raise ArgumentError,
              "ENV['AWS_CONTAINER_CREDENTIALS_FULL_URI'] must use a local loopback " \
              'or an ECS or EKS link-local address when using the http scheme.'
      end

      def valid_ip_address?(ip_address)
        ip_address.loopback? || ecs_or_eks_ip?(ip_address)
      end

      # Verify that the IP address is a link-local address from ECS or EKS.
      # ECS container host (IPv4 `169.254.170.2`)
      # EKS container host (IPv4 `169.254.170.23`, IPv6 `fd00:ec2::23`)
      def ecs_or_eks_ip?(ip_address)
        case ip_address.family
        when Socket::AF_INET
          [0xa9feaa02, 0xa9feaa17].include?(ip_address)
        when Socket::AF_INET6
          ip_address == 0xfd00_0ec2_0000_0000_0000_0000_0000_0023
        else
          false
        end
      end

      def resolve_backoff(backoff)
        case backoff
        when Proc then backoff
        when Numeric then ->(_) { sleep(backoff) }
        else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
        end
      end

      def refresh
        # Retry loading credentials up to a configurable number of times if the instance metadata service
        # is not responding or if the instance metadata service is responding but is returning invalid
        # JSON documents in response to the GET profile credentials call.
        retry_errors([JSON::ParserError, StandardError]) do
          creds = JSON.parse(get_credentials.to_s)
          @expiration = Time.parse(creds['Expiration']) if creds['Expiration']
          @identity = Credentials.new(
            access_key_id: creds['AccessKeyId'],
            secret_access_key: creds['SecretAccessKey'],
            session_token: creds['Token'],
            account_id: creds['AccountId']
          )
        end
      rescue JSON::ParserError
        raise 'Failed to parse HTTP service response'
      end

      def get_credentials # rubocop:disable Naming/AccessorMethodName
        open_connection do |conn|
          http_get(conn, @credential_path)
        end
      rescue TokenFileReadError, InvalidTokenError
        raise
      rescue StandardError => e
        raise "Error retrieving HTTP Credentials: #{e.message}"
      end

      def retry_errors(error_classes)
        attempts = 0
        begin
          yield
        rescue TokenFileReadError, InvalidTokenError
          raise
        rescue *error_classes => _e
          raise unless attempts < @retries

          @backoff.call(attempts)
          attempts += 1
          retry
        end
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
        set_authorization_token(request)
        response = connection.request(request)
        raise Non200Response unless response.code.to_i == 200

        response.body
      end

      def set_authorization_token(request) # rubocop:disable Naming/AccessorMethodName
        return unless (authorization_token = fetch_authorization_token)

        validate_authorization_token!(authorization_token)
        request['Authorization'] = authorization_token
      end

      def fetch_authorization_token
        if (path = ENV.fetch('AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE', nil))
          fetch_authorization_token_file(path)
        elsif (token = ENV.fetch('AWS_CONTAINER_AUTHORIZATION_TOKEN', nil))
          token
        end
      end

      def fetch_authorization_token_file(path)
        File.read(path).strip
      rescue Errno::ENOENT
        raise TokenFileReadError,
              "AWS_CONTAINER_AUTHORIZATION_TOKEN_FILE is set but the file doesn't exist: #{path}"
      end

      def validate_authorization_token!(token)
        return unless token.include?("\r\n")

        raise InvalidTokenError,
              'Invalid Authorization token: token contains a newline and carriage return character.'
      end
    end
  end
end
