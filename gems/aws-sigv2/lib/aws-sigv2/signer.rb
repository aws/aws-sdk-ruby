require 'openssl'
require 'base64'
require 'uri'
require 'cgi'

module Aws
  module Sigv2
    # @deprecated This signer is deprecated. You should use
    #   the `aws-sigv4` gem instead.
    class Signer

      # @overload initialize(access_key_id:, secret_access_key:, session_token:nil)
      #   @param [String] :access_key_id
      #   @param [String] :secret_access_key
      #   @param [String] :session_token (nil)
      #
      # @overload initialize(credentials:)
      #   @param [Credentials] :credentials
      #
      # @overload initialize(credentials_provider:)
      #   @param [#credentials] :credentials_provider An object that responds
      #     to `#credentials`, returning an object that responds to:
      #
      #     * `#access_key_id`
      #     * `#secret_access_key`
      #     * `#session_token`
      #
      def initialize(options = {})
        @credentials_provider = extract_credentials_provider(options)
      end

      # @return [#credentials] Returns an object that responds
      #   to `#credentials` returning a {Credentials} object.
      attr_reader :credentials_provider

      # Computes a version 2 signature. The signature is returned as a hash
      # of request parameters that should be applied to the HTTP request.
      # The given request will not be modified.
      #
      #     signature = signer.sign_request(
      #       http_method: 'POST',
      #       url: 'https://domain.com',
      #       params: {
      #         'Param.Name' => 'Param.Value',
      #       }
      #     )
      #
      #     # Returns a hash with the following keys:
      #     signature['AWSAccessKeyId']
      #     signature['SecurityToken'] # when using session credentials
      #     signature['Timestamp']
      #     signature['SignatureVersion']
      #     signature['SignatureMethod']
      #     signature['Signature']
      #
      # @param [Hash] request
      #
      # @option request [required, String] :http_method One of
      #   'GET', 'HEAD', 'PUT', 'POST', 'PATCH', or 'DELETE'
      #
      # @option request [required, String, URI::HTTPS, URI::HTTP] :url
      #   The request URI. Must be a valid HTTP or HTTPS URI.
      #
      # @option request [optional, Hash] :params ({}) Request
      #   parameters to sign. This should be a hash with
      #   un-escaped parameter names and values. For "GET" style
      #   requests, this should be the querystring parameters.
      #   For "POST" style requests, this should be the form-url-encoded
      #   query parameters.
      #
      # @return [Hash] Returns a hash of un-escaped signature
      #   parameters. These must be applied to the HTTP request.
      #   If the request is a "GET" request, they should be applied
      #   to the querystring. If the request is "POST" then they
      #   should be added to the form-url-encoded HTTP request body.
      #
      def sign_request(request)

        creds = @credentials_provider.credentials

        http_method = extract_http_method(request)
        url = extract_url(request)
        params = request[:params] || {}

        timestamp = params['Timestamp']
        timestamp ||= Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')

        auth_params = {}
        auth_params['AWSAccessKeyId'] = creds.access_key_id
        auth_params['SecurityToken'] = creds.session_token if creds.session_token
        auth_params['Timestamp'] = timestamp
        auth_params['SignatureVersion'] = '2'
        auth_params['SignatureMethod'] = 'HmacSHA256'

        sts = string_to_sign(http_method, url, params.merge(auth_params))

        auth_params['Signature'] = signature(sts, creds.secret_access_key)
        auth_params
      end

      private

      # @param [String] string_to_sign
      # @param [String] secret_access_key
      # @return [String<Base64>]
      def signature(string_to_sign, secret_access_key)
        Base64.encode64(
          OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'),
            secret_access_key, string_to_sign)
        ).strip
      end

      # @param [String] http_method
      # @param [URI::HTTP, URI::HTTPS] url
      # @param [Hash] params
      # @return [String]
      def string_to_sign(http_method, url, params)
        [
          http_method,
          host(url),
          path(url),
          param_list(params).join('&'),
        ].join("\n")
      end

      # @param [URI::HTTP, URI::HTTPS] url
      # @return [String]
      def host(url)
        if
          (url.scheme == 'http' && url.port != 80) ||
          (url.scheme == 'https' && url.port != 443)
        then
          "#{url.host}:#{url.port}"
        else
          url.host
        end
      end

      # @param [URI::HTTP, URI::HTTPS] url
      # @return [String]
      def path(url)
        if url.path == ''
          '/'
        else
          uri_escape_path(url.path)
        end
      end

      # @param [String] path
      # @return [String]
      def uri_escape_path(path)
        path.gsub(/[^\/]+/) { |part| uri_escape(part) }
      end

      # @param [String] value
      # @return [String]
      def uri_escape(value)
        if value.nil?
          nil
        else
          CGI.escape(value.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
        end
      end

      # @param [Hash] params
      # @return [Array<String>]
      def param_list(params)
        params.keys.sort.inject([]) do |list, param_name|
          if param_name == 'Signature'
            list # do not sign the previous signature
          else
            list << "#{uri_escape(param_name)}=#{uri_escape(params[param_name])}"
          end
        end
      end

      def extract_credentials_provider(options)
        if options[:credentials_provider]
          options[:credentials_provider]
        elsif options.key?(:credentials) || options.key?(:access_key_id)
          StaticCredentialsProvider.new(options)
        else
          raise ArgumentError, <<-MSG
missing credentials, provide credentials with one of the following options:
  - :access_key_id and :secret_access_key
  - :credentials
  - :credentials_provider
          MSG
        end
      end

      def extract_http_method(request)
        if request[:http_method]
          request[:http_method].upcase
        else
          msg = "missing required option :http_method"
          raise ArgumentError, msg
        end
      end

      def extract_url(request)
        if request[:url]
          URI.parse(request[:url].to_s)
        else
          msg = "missing required option :url"
          raise ArgumentError, msg
        end
      end

    end
  end
end
