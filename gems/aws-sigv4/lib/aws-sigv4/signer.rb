# frozen_string_literal: true

require 'cgi/escape'
require 'cgi/util' if RUBY_VERSION < '3.5'
require 'openssl'
require 'pathname'
require 'tempfile'
require 'time'
require 'uri'

module Aws
  module SigV4
    # Utility class for creating AWS signature version 4 signature. This class
    # provides two methods for generating signatures:
    #
    # * {#sign_request} - Computes a signature of the given request, returning
    #   the hash of signing headers that should be applied to the request.
    #
    # * {#presign_url} - Computes a presigned request with an expiration.
    #   By default, the body of this request is not signed and the request
    #   expires in 15 minutes.
    #
    # ## Configuration
    #
    # To use the signer, you need to specify the service, region, and credentials.
    # The service name is normally the endpoint prefix to an AWS service. For
    # example:
    #
    #     ec2.us-west-1.amazonaws.com => ec2
    #
    # The region is normally the second portion of the endpoint, following
    # the service name.
    #
    #     ec2.us-west-1.amazonaws.com => us-west-1
    #
    # It is important to have the correct service and region name, or the
    # signature will be invalid.
    #
    # ## Credentials
    #
    # The signer requires credentials. You can configure the signer
    # with static credentials:
    #
    #     signer = Aws::SigV4::Signer.new(
    #       access_key_id: 'akid',
    #       secret_access_key: 'secret',
    #       ...
    #     )
    #
    # or with a credentials object:
    #
    #     signer = Aws::SigV4::Signer.new(
    #       credentials: Aws::SigV4::Credentials.new(
    #         access_key_id: 'akid',
    #         secret_access_key: 'secret'
    #       ),
    #       ...
    #     )
    #
    # or you can provide refreshing credentials via the `:credentials_provider`.
    # If you are using the AWS SDK for Ruby, you can use any of the credential
    # provider classes:
    #
    #     signer = Aws::SigV4::Signer.new(
    #       credentials_provider: Aws::Core::InstanceProfileCredentials.new,
    #       ...
    #     )
    #
    # A credential provider is any object that responds to `#credentials` that returns an object
    # that responds to the following methods:
    #
    # * `#access_key_id` => String
    # * `#secret_access_key` => String
    # * `#session_token` => String, nil
    # * `#account_id` => String, nil
    # * `#expiration` => Time, nil
    #
    class Signer # rubocop:disable Metrics/ClassLength
      # @option options [required, String] :service The service signing name, e.g. 's3'.
      # @option options [required, String] :region The region name, e.g. 'us-east-1'. When signing
      #   with sigv4a, this should be a comma separated list of regions.
      # @option options [String] :access_key_id The AWS access key ID. Required if using
      #   direct credential values instead of :credentials or :credentials_provider.
      # @option options [String] :secret_access_key The AWS secret access key. Required if using
      #   direct credential values instead of :credentials or :credentials_provider.
      # @option options [String] :session_token (nil) The AWS session token. Optional when
      #   using direct credential values.
      # @option options [String] :account_id (nil) The AWS account ID. Optional when
      #   using direct credential values.
      # @option options [Credentials] :credentials Any object that responds to the following methods:
      #   * `#access_key_id` => String
      #   * `#secret_access_key` => String
      #   * `#session_token` => String, nil
      #   * `#account_id` => String, nil
      #   * `#expiration` => Time, nil
      #
      #   This is an alternative to providing :access_key_id and :secret_access_key directly.
      # @option options [#credentials] :credentials_provider An object that responds to `#credentials`,
      #   returning an object that responds to the following methods:
      #
      #   * `#access_key_id` => String
      #   * `#secret_access_key` => String
      #   * `#session_token` => String, nil
      #   * `#account_id` => String, nil
      #   * `#expiration` => Time, nil
      #
      #   This is an alternative to providing :access_key_id and :secret_access_key directly.
      # @option options [Array<String>] :unsigned_headers ([]) A list of headers that should not be
      #   signed. This is useful when a proxy modifies headers, such as 'User-Agent', invalidating a signature.
      # @option options [Boolean] :uri_escape_path (true) When `true`, the request URI path is uri-escaped as part of
      #   computing the canonical request string. This is required for every service, except Amazon S3, as of late 2016.
      # @option options [Boolean] :apply_checksum_header (true) When `true`, the computed content checksum is returned
      #   in the hash of signature headers. This is required for AWS Glacier, and optional for every other AWS service
      #   as of late 2016.
      # @option options [String] :signing_algorithm ('sigv4') The algorithm to use for signing.
      # @option options [Boolean] :omit_session_token (false) If `true`, then security token is added to the final
      #   signing result, but is treated as "unsigned" and does not contribute to the authorization signature.
      # @option options [Boolean] :normalize_path (true) When `true`, the uri paths will be normalized when building
      #   the canonical request.
      def initialize(options = {})
        @service = extract_service(options)
        @region = extract_region(options)
        @credentials_provider = extract_credentials_provider(options)
        @unsigned_headers = extract_unsigned_headers(options)
        @uri_escape_path = options.fetch(:uri_escape_path, true)
        @apply_checksum_header = options.fetch(:apply_checksum_header, true)
        @signing_algorithm = options.fetch(:signing_algorithm, 'sigv4')
        @normalize_path = options.fetch(:normalize_path, true)
        @omit_session_token = options.fetch(:omit_session_token, false)
      end

      # @return [String]
      attr_reader :service

      # @return [String]
      attr_reader :region

      # @return [#credentials] Returns an object that responds to `#credentials`, returning an object that
      #   responds to the following methods:
      #
      #   * `#access_key_id` => String
      #   * `#secret_access_key` => String
      #   * `#session_token` => String, nil
      #   * `#account_id` => String, nil
      #   * `#expiration` => Time, nil
      #
      attr_reader :credentials_provider

      # @return [Set<String>] Returns a set of downcased header names that should not be signed.
      attr_reader :unsigned_headers

      # @return [Boolean]
      attr_reader :uri_escape_path

      # @return [Boolean]
      attr_reader :apply_checksum_header

      # @return [String]
      attr_reader :signing_algorithm

      # @return [Boolean]
      attr_reader :normalize_path

      # @return [Boolean]
      attr_reader :omit_session_token

      # Computes a version 4 signature signature. Returns the resultant
      # signature as a hash of signature headers to apply to your HTTP request.
      # The given request is not modified.
      #
      #     signature = signer.sign_request(
      #       http_method: 'PUT',
      #       url: 'https://domain.com',
      #       headers: {
      #         'Abc' => 'xyz',
      #       },
      #       body: 'body' # String or IO object
      #     )
      #
      #     # Apply the following hash of headers to your HTTP request
      #     signature.headers['host']
      #     signature.headers['x-amz-date']
      #     signature.headers['x-amz-security-token']
      #     signature.headers['x-amz-content-sha256']
      #     signature.headers['authorization']
      #
      # In addition to computing the signature headers, the canonicalized
      # request, string to sign and content sha256 checksum are also available.
      # These values are useful for debugging signature errors returned by AWS.
      #
      #     signature.canonical_request #=> "..."
      #     signature.string_to_sign #=> "..."
      #     signature.content_sha256 #=> "..."
      #     signature.signature #=> "..."
      #
      # @param [Hash] options
      # @option options [required, String] :http_method
      #   One of 'GET', 'HEAD', 'PUT', 'POST', 'PATCH', or 'DELETE'.
      # @option options [required, String, URI::HTTP, URI::HTTPS] :url
      #   The request URI. Must be a valid HTTP or HTTPS URI.
      # @option options [optional, Hash] :headers ({}) A hash of headers to sign.
      #   If the 'X-Amz-Content-Sha256' header is set, the `:body` is optional and will not be read.
      # @option options [optional, String, IO] :body ('') The HTTP request body.
      #   A sha256 checksum is computed of the body unless the 'X-Amz-Content-Sha256' header is set.
      # @return [Signature] Return an instance of {Signature}. The `headers` attribute contains
      #  the hash of signing headers that should be applied to the HTTP request. The `string_to_sign`,
      #  `canonical_request`, `content_sha256`, and `signature` attributes are useful
      #  for debugging signature errors returned by AWS.
      def sign_request(options) # rubocop:disable Metrics
        creds = fetch_credentials

        http_method = extract_http_method(options)
        url = extract_url(options)
        Signer.normalize_path(url) if @normalize_path
        headers = downcase_headers(options[:headers])

        datetime = headers['x-amz-date']
        datetime ||= Time.now.utc.strftime('%Y%m%dT%H%M%SZ')
        date = datetime[0, 8]
        content_sha256 = headers['x-amz-content-sha256']
        content_sha256 ||= sha256_hexdigest(options[:body] || '')

        sigv4_headers = {}
        sigv4_headers['host'] = headers['host'] || host(url)
        sigv4_headers['x-amz-date'] = datetime
        if creds.session_token && !@omit_session_token
          if @signing_algorithm == 'sigv4-s3express'
            sigv4_headers['x-amz-s3session-token'] = creds.session_token
          else
            sigv4_headers['x-amz-security-token'] = creds.session_token
          end
        end
        sigv4_headers['x-amz-content-sha256'] ||= content_sha256 if @apply_checksum_header
        sigv4_headers['x-amz-region-set'] = @region if @signing_algorithm == 'sigv4a'

        # merge so we do not modify given headers hash
        headers = headers.merge(sigv4_headers)

        algorithm = sts_algorithm
        creq = canonical_request(http_method, url, headers, content_sha256)
        sts = string_to_sign(datetime, creq, algorithm)
        sig = signature(creds, date, sts)

        headers['authorization'] = [
          "#{algorithm} Credential=#{credential(creds, date)}",
          "SignedHeaders=#{signed_headers(headers)}",
          "Signature=#{sig}"
        ].join(', ')

        # If we are omitting the session token from the signature, we need to add it back to the headers here.
        headers['x-amz-security-token'] = creds.session_token if creds.session_token && @omit_session_token

        Signature.new(
          headers: headers,
          string_to_sign: sts,
          canonical_request: creq,
          content_sha256: content_sha256,
          signature: sig
        )
      end

      # Signs a URL with query authentication. Using query parameters to authenticate requests is useful
      # when you want to express a request entirely in a URL. This method is also referred as presigning a URL.
      #
      # @see http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
      #
      # To generate a presigned URL, you must provide a HTTP URI and
      # the http method.
      #
      #     url = signer.presign_url(
      #       http_method: 'GET',
      #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #       expires_in: 60
      #     )
      #
      # By default, signatures are valid for 15 minutes. You can specify
      # the number of seconds for the URL to expire in.
      #
      #     url = signer.presign_url(
      #       http_method: 'GET',
      #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #       expires_in: 60 * 5 # 5 minutes
      #     )
      #
      # You can provide a hash of headers that you plan to send with the request.
      # Every 'X-Amz-*' header you plan to send with the request **must** be provided, or the signature is invalid.
      # Other headers are optional, but should be provided for security reasons.
      #
      #     url = signer.presign_url(
      #       http_method: 'PUT',
      #       url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #       headers: {
      #         'X-Amz-Meta-Custom' => 'metadata'
      #       }
      #     )
      #
      # @param [Hash] options
      # @option options [required, String] :http_method
      #   One of 'GET', 'HEAD', 'PUT', 'POST', 'PATCH', or 'DELETE'.
      # @option options [required, String, URI::HTTP, URI::HTTPS] :url
      #   The request URI. Must be a valid HTTP or HTTPS URI.
      # @option options [Hash] :headers ({})
      #   Headers that should be signed and sent along with the request.
      #   All x-amz-* headers must be present during signing. Other headers are optional.
      # @option options [Integer<Seconds>] :expires_in (900)
      #   How long the presigned URL should be valid for. Defaults to 15 minutes (900 seconds).
      # @option options [String, IO] :body
      #   If the `:body` is set, then a SHA256 hexdigest will be computed of the body. If `:body_digest` is set,
      #   this option is ignored. If neither are set, then the `:body_digest` will be computed of the empty string.
      # @option options [String] :body_digest
      #   The SHA256 hexdigest of the request body. If you wish to send the presigned request without signing
      #   the body, you can pass 'UNSIGNED-PAYLOAD' as the `:body_digest` in place of passing `:body`.
      # @return [PresignedUrl] Returns an instance of {PresignedUrl}. The `url` attribute contains the presigned URL.
      #   The `headers` attribute contains any additional headers that must be sent with the request.
      #   The `string_to_sign`, `canonical_request`, `content_sha256`, and `signature` attributes are useful
      #   for debugging signature errors returned by AWS.
      def presign_url(options) # rubocop:disable Metrics
        creds = fetch_credentials

        http_method = extract_http_method(options)
        url = extract_url(options)
        Signer.normalize_path(url) if @normalize_path
        headers = downcase_headers(options[:headers])

        headers['host'] ||= host(url)
        datetime = headers['x-amz-date']
        datetime ||= Time.now.utc.strftime('%Y%m%dT%H%M%SZ')
        date = datetime[0, 8]

        content_sha256 = headers['x-amz-content-sha256']
        content_sha256 ||= options[:body_digest]
        content_sha256 ||= sha256_hexdigest(options[:body] || '')

        algorithm = sts_algorithm
        params = {}
        params['X-Amz-Algorithm'] = algorithm
        params['X-Amz-Credential'] = credential(creds, date)
        params['X-Amz-Date'] = datetime
        params['X-Amz-Expires'] = presigned_url_expiration(options, creds, datetime).to_s
        params['X-Amz-Region-Set'] = @region if @signing_algorithm == 'sigv4a'
        if creds.session_token && !@omit_session_token
          if @signing_algorithm == 'sigv4-s3express'
            params['X-Amz-S3session-Token'] = creds.session_token
          else
            params['X-Amz-Security-Token'] = creds.session_token
          end
        end

        x_amz_headers = params.keys.map(&:downcase)
        signed_headers = {}
        headers.each do |key, value|
          signed_headers[key] = value unless x_amz_headers.include?(key.downcase)
        end

        params['X-Amz-SignedHeaders'] = signed_headers(signed_headers)

        params = params.map do |key, value|
          "#{Signer.uri_escape(key)}=#{Signer.uri_escape(value)}"
        end.join('&')

        if url.query
          url.query += "&#{params}"
        else
          url.query = params
        end

        creq = canonical_request(http_method, url, signed_headers, content_sha256)
        sts = string_to_sign(datetime, creq, algorithm)
        sig = signature(creds, date, sts)

        # if we are omitting the session token from the signature, we need to add it back to the querystring here.
        if creds.session_token && @omit_session_token
          url.query += "&X-Amz-Security-Token=#{Signer.uri_escape(creds.session_token)}"
        end
        url.query += "&X-Amz-Signature=#{sig}"

        PresignedUrl.new(
          url: url,
          headers: signed_headers,
          string_to_sign: sts,
          canonical_request: creq,
          content_sha256: content_sha256,
          signature: sig
        )
      end

      private

      def extract_service(options)
        raise Errors::MissingServiceError unless options[:service]

        options[:service]
      end

      def extract_region(options)
        raise Errors::MissingRegionError unless options[:region]

        options[:region]
      end

      def extract_credentials_provider(options)
        if options[:credentials_provider]
          options[:credentials_provider]
        elsif options.key?(:credentials) || options.key?(:access_key_id)
          StaticCredentials.new(options)
        else
          raise Errors::MissingCredentialsError
        end
      end

      def extract_unsigned_headers(options)
        default_headers = %w[
          expect
          transfer-encoding
          user-agent
          x-amzn-trace-id
        ]
        unsigned_headers = options.fetch(:unsigned_headers, []).map(&:downcase)
        Set.new(unsigned_headers.concat(default_headers))
      end

      def fetch_credentials
        credentials = @credentials_provider.credentials
        unless credentials_set?(credentials)
          raise MissingCredentialsError, 'unable to sign request without credentials set'
        end

        credentials
      end

      def credentials_set?(credentials)
        !credentials.access_key_id.nil? && !credentials.access_key_id.empty? &&
          !credentials.secret_access_key.nil? && !credentials.secret_access_key.empty?
      end

      def extract_http_method(options)
        raise ArgumentError, 'missing required option :http_method' unless options[:http_method]

        options[:http_method].upcase
      end

      def extract_url(options)
        raise ArgumentError, 'missing required option :url' unless options[:url]

        URI.parse(options[:url].to_s)
      end

      def downcase_headers(headers)
        (headers || {}).to_hash.transform_keys(&:downcase)
      end

      def host(uri)
        # Handles known and unknown URI schemes; default_port nil when unknown.
        if uri.default_port == uri.port
          uri.host
        else
          "#{uri.host}:#{uri.port}"
        end
      end

      def sts_algorithm
        if @signing_algorithm == 'sigv4a'
          'AWS4-ECDSA-P256-SHA256'
        else
          'AWS4-HMAC-SHA256'
        end
      end

      def canonical_request(http_method, url, headers, content_sha256)
        [
          http_method,
          path(url),
          normalized_querystring(url.query || ''),
          "#{canonical_headers(headers)}\n",
          signed_headers(headers),
          content_sha256
        ].join("\n")
      end

      def string_to_sign(datetime, canonical_request, algorithm)
        [
          algorithm,
          datetime,
          credential_scope(datetime[0, 8]),
          sha256_hexdigest(canonical_request)
        ].join("\n")
      end

      def credential_scope(date)
        [
          date,
          (@region unless @signing_algorithm == 'sigv4a'),
          @service,
          'aws4_request'
        ].compact.join('/')
      end

      def credential(credentials, date)
        "#{credentials.access_key_id}/#{credential_scope(date)}"
      end

      def signature(creds, date, string_to_sign)
        if @signing_algorithm == 'sigv4a'
          asymmetric_signature(creds, string_to_sign)
        else
          symmetric_signature(creds.secret_access_key, date, string_to_sign)
        end
      end

      def symmetric_signature(secret_access_key, date, string_to_sign)
        k_date = hmac("AWS4#{secret_access_key}", date)
        k_region = hmac(k_date, @region)
        k_service = hmac(k_region, @service)
        k_credentials = hmac(k_service, 'aws4_request')
        hexhmac(k_credentials, string_to_sign)
      end

      def asymmetric_signature(creds, string_to_sign)
        key = AsymmetricCredentials.derive_asymmetric_key(creds.access_key_id, creds.secret_access_key)
        sts_digest = OpenSSL::Digest::SHA256.digest(string_to_sign)
        s = key[:ec].dsa_sign_asn1(sts_digest)

        Digest.hexencode(s)
      end

      def path(url)
        path = url.path
        path = '/' if path == ''
        if @uri_escape_path
          Signer.uri_escape_path(path)
        else
          path
        end
      end

      def normalized_querystring(querystring) # rubocop:disable Metrics/PerceivedComplexity, Metrics/AbcSize
        params = querystring.split('&')
        params = params.map { |p| p.match(/=/) ? p : "#{p}=" }
        # From: https://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html
        # Sort the parameter names by character code point in ascending order.
        # Parameters with duplicate names should be sorted by value.
        #
        # Default sort <=> in JRuby will swap members
        # occasionally when <=> is 0 (considered still sorted), but this
        # causes our normalized query string to not match the sent querystring.
        # When names match, we then sort by their values.  When values also
        # match then we sort by their original order
        params.each.with_index.sort do |a, b|
          a, a_offset = a
          b, b_offset = b
          a_name, a_value = a.split('=')
          b_name, b_value = b.split('=')
          if a_name == b_name
            if a_value == b_value
              a_offset <=> b_offset
            else
              a_value <=> b_value
            end
          else
            a_name <=> b_name
          end
        end.map(&:first).join('&')
      end

      def signed_headers(headers)
        headers.inject([]) do |signed_headers, (header, _)|
          if @unsigned_headers.include?(header)
            signed_headers
          else
            signed_headers << header
          end
        end.sort.join(';')
      end

      def canonical_headers(headers)
        headers = headers.inject([]) do |hdrs, (k, v)|
          if @unsigned_headers.include?(k)
            hdrs
          else
            hdrs << [k, v]
          end
        end
        headers = headers.sort_by(&:first)
        headers.map { |k, v| "#{k}:#{canonical_header_value(v.to_s)}" }.join("\n")
      end

      def canonical_header_value(value)
        value.gsub(/\s+/, ' ').strip
      end

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<SHA256 Hexdigest>]
      def sha256_hexdigest(value) # rubocop:disable Metrics/AbcSize
        if (value.is_a?(File) || value.is_a?(Tempfile)) && !value.path.nil? && File.exist?(value.path)
          OpenSSL::Digest::SHA256.file(value).hexdigest
        elsif value.respond_to?(:read)
          sha256 = OpenSSL::Digest.new('SHA256')
          loop do
            chunk = value.read(1024 * 1024) # 1MB
            break unless chunk

            sha256.update(chunk)
          end
          value.rewind
          sha256.hexdigest
        else
          OpenSSL::Digest::SHA256.hexdigest(value)
        end
      end

      def hmac(key, value)
        OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), key, value)
      end

      def hexhmac(key, value)
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), key, value)
      end

      def extract_expires_in(options)
        case options[:expires_in]
        when nil then 900
        when Integer then options[:expires_in]
        else
          raise ArgumentError, 'expected :expires_in to be a number of seconds'
        end
      end

      def presigned_url_expiration(options, creds, datetime)
        expires_in = extract_expires_in(options)
        creds_expiration = creds.expiration
        return expires_in unless creds_expiration

        expiration_seconds = (creds_expiration - Time.strptime(datetime, '%Y%m%dT%H%M%S%Z')).to_i
        # In the static stability case, credentials may expire in the past but still be valid.
        # For those cases, use the user configured expires_in and ingore expiration.
        if expiration_seconds <= 0
          expires_in
        else
          [expires_in, expiration_seconds].min
        end
      end

      class << self
        # @api private
        def uri_escape_path(path)
          path.gsub(%r{[^/]+}) { |part| uri_escape(part) }
        end

        # @api private
        def uri_escape(string)
          if string.nil?
            nil
          else
            CGI.escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end
        end

        # @api private
        def normalize_path(uri)
          normalized_path = Pathname.new(uri.path).cleanpath.to_s
          # Empty paths will resolve to "." and should be disregarded
          normalized_path = '' if normalized_path == '.'
          # Ensure trailing slashes are correctly preserved
          normalized_path << '/' if uri.path.end_with?('/') && !normalized_path.end_with?('/')
          uri.path = normalized_path
        end
      end
    end
  end
end
