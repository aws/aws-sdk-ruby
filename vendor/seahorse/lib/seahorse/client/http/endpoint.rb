require 'uri'

module Seahorse
  module Client
    module Http

      # # Constructing an Endpoint
      #
      # You can construct an endpoint from a string like so:
      #
      #     puts Endpoint.new('http://foo.com:123')
      #     #=> 'http://foo.com'
      #
      # If you omit the protocol, it will default to a HTTPS endpoint:
      #
      #     puts Endpoint.new('foo.com')
      #     #=> 'https://foo.com'
      #
      class Endpoint

        # @param [Endpoint, String] endpoint
        def initialize(endpoint)
          endpoint = endpoint.to_s
          endpoint = "https://#{endpoint}" unless endpoint =~ /^http/
          URI.parse(endpoint).tap do |uri|
            @scheme = uri.scheme
            @host = uri.host
            @port = uri.port
            @request_uri = uri.request_uri
            @user = uri.user
            @password = uri.password
          end
        end

        # @return [String] Returns the endpoint scheme ('https' or 'http').
        attr_accessor :scheme

        # @return [String] Returns the endpoint host (e.g. 'foo.com')
        attr_accessor :host

        # @return [Integer] Returns the endpoint port number (e.g. 443).
        attr_accessor :port

        # @return [String] Returns the path and querystring,
        #   e.g. '/path?querystring'.
        attr_accessor :request_uri

        # @return [String, nil]
        attr_accessor :user

        # @return [String, nil]
        attr_accessor :password

        # @return [String]
        def path
          request_uri.split('?', 2)[0]
        end

        # @return [String, nil]
        def querystring
          request_uri.split('?', 2)[1]
        end

        # @return [Boolean]
        def http?
          @scheme == 'http'
        end

        # @return [Boolean]
        def https?
          @scheme == 'https'
        end

        # @return [String]
        # @api private
        def inspect
          uri = "#{@scheme}://#{userpass}#{@host}:#{@port}#{@request_uri}"
          URI.parse(uri).to_s
        end
        alias to_str inspect
        alias to_s inspect

        # @return [Boolean]
        # @api private
        def eq(other)
          to_s == other.to_s
        end
        alias == eq

        private

        def userpass
          [@user, @password].compact.join(':') + '@' if @user
        end

      end
    end
  end
end
