require 'aws-sigv4'

module Aws
  module S3

    # Utility class for creating a presigned request with presigned URL and signed
    # headers hash.
    #
    # Example Use:
    #
    #     presigned_request = Aws::S3::PresignedRequest.new(
    #       :put_object,
    #       bucket: "bucket",
    #       key: "key",
    #       acl: "private",
    #       ...
    #       headers: {
    #         foo: "bar"
    #       }
    #     )
    #
    #     presigned_request.uri
    #     # => #<URI::HTTPS https://...&X-Amz-SignedHeaders=host%3Bx-amz-acl%3Bx-amz-foo...
    #
    #     presigned_request.headers
    #     # => {"x-amz-acl"=>"private", "x-amz-foo"=>'bar', ...}
    #
    class PresignedRequest

      # @api private
      ONE_WEEK = 60 * 60 * 24 * 7

      # @param [Symbol] method Symbolized method name of the operation you
      #   want to presign.
      #
      # @option params [Client] :client Optionally provide an existing
      #   S3 client
      #  
      # @option params [Integer<Seconds>] :expires_in (900)
      #   How long the presigned URL should be valid for. Defaults
      #   to 15 minutes (900 seconds).
      #
      # @option params [Boolean] :secure (true) When `false`, a HTTP URL
      #   is returned instead of the default HTTPS URL.
      #
      # @option params [Boolean] :virtual_host (false) When
      #   `true`, the bucket name will be used as the hostname.
      #   This will cause the returned URL to be 'http' and not
      #   'https'.
      #
      # @option options [Hash] :headers ({}) Customized headers to
      #   be signed and sent along with the request.
      #
      # @option options [Time] :time (Time.now) Time of the signature.
      #   You should only set this value for testing.
      def initialize(method, params = {})
        @bucket, @key = bucket_and_key(params)
        @client = params.delete(:client) || Aws::S3::Client.new
        @http_method = method[/[^_]+/].upcase
        @time = params.delete(:time) || Time.now
        @expires = expires_in(params)
        @virtual_host = !!params.delete(:virtual_host)
        @secure = params.delete(:secure)
        @headers = build_headers(params)
      end

      # Returns the presigned URL for the S3 operation
      #
      # @return [HTTPS::URI, HTTP::URI]
      def uri
        v4_signer.presign_url(
          http_method: @http_method,
          url: build_url(@client.config.endpoint),
          headers: @headers,
          body_digest: 'UNSIGNED-PAYLOAD',
          expires_in: @expires,
          time: @time
        )
      end

      # Returns signed headers
      #
      # @return [Hash] headers
      attr_reader :headers

      private

      def v4_signer
        Aws::Sigv4::Signer.new(
          service: 's3',
          region: @client.config.region,
          credentials_provider: @client.config.credentials,
          apply_checksum_header: @client.config.compute_checksums,
          uri_escape_path: false,
          unsigned_headers: Aws::Signers::V4::BLACKLIST_HEADERS - @headers.keys
        )
      end

      def bucket_and_key(params)
        if params[:bucket].nil? or params[:bucket] == ''
          raise ArgumentError, ":bucket must not be blank"
        end
        if params[:key].nil? or params[:key] == ''
          raise ArgumentError, ":key must not be blank"
        end
        [ params.delete(:bucket), params.delete(:key) ]
      end

      def expires_in(params)
        if expires = params.delete(:expires_in)
          if expires > ONE_WEEK
            msg = "expires_in value of #{expires} exceeds one-week maximum"
            raise ArgumentError, msg
          end
          expires
        end
      end

      def build_headers(params)
        h = params.delete(:headers) || {}
        headers = h.inject({}) {|h, (k, v)| h["x-amz-#{k.to_s.gsub(/_/, '-')}"] = v; h}
        params.inject(headers) {|h, (k, v)| h["x-amz-#{k.to_s.gsub(/_/, '-')}"] = v; h}
      end

      def build_url(uri)
        # build url from endpoint
        uri = scheme(uri) unless @virtual_host
        if @virtual_host
          uri = virtual_host(uri)
          uri.path = "/#{@key}"
        elsif @client.config.force_path_style
          uri.path = "/#{@bucket}/#{@key}"
        else
          # bucket DNS
          uri = dns(uri)
        end
        uri
      end

      def virtual_host(uri)
        uri = http_scheme(uri)
        uri.host = @bucket
        uri
      end

      def dns(uri)
        if Aws::Plugins::S3BucketDns.dns_compatible?(@bucket, @secure)
          uri.host = "#{@bucket}.#{uri.host}"
          uri.path = "/#{@key}"
        else
          uri.path = "/#{@bucket}/#{@key}"
        end
        uri
      end

      def scheme(uri)
        return uri if @secure.nil?
        if @secure
          https_scheme(uri)
        else
          http_scheme(uri)
        end
      end

      def http_scheme(uri)
        return uri if uri.scheme == 'http'
        uri.scheme = 'http'
        uri.port = 80
        uri
      end

      def https_scheme(uri)
        return uri if uri.scheme == 'https'
        uri.scheme = 'https'
        uri.port = 443
        uri
      end

    end

  end
end
