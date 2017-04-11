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

      # TODO
      # @param [Symbol] method Symbolized method name of the operation you
      #   want to presign.
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
        bucket_and_key(params)
        @credentials, @region = credentials_and_region(params)
        client = Aws::S3::Client.new(region: @region, credentials: @credentials)

        @http_method = Aws::S3::Client.api.operation(method).http_method
        @time = params.delete(:time) || Time.now
        @expires = expires_in(params)
        virtual_host = !!params.delete(:virtual_host)
        secure = params.delete(:secure)
        # build customize or whitelist headers when presents
        headers = build_headers(params.delete(:headers) || {})

        req = client.build_request(method, params)
        endpoint_and_headers(req, secure, virtual_host)
        @endpoint, req_headers = req.send_request.data
        @headers = headers.merge(req_headers)
      end

      # Returns the presigned URL for the S3 operation
      #
      # @return [HTTPS::URI, HTTP::URI]
      def uri
        v4_signer.presign_url(
          http_method: @http_method,
          url: @endpoint,
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
=begin
      def headers
        signature = v4_signer.sign_request(
          http_method: @http_method,
          url: @endpoint,
          headers: @headers,
          body: ''
        )
        signature.headers.merge(@headers)
      end
=end

      private

      def v4_signer
        Aws::Sigv4::Signer.new(
          service: 's3',
          region: @region,
          credentials_provider: @credentials,
          uri_escape_path: false,
          unsigned_headers: Aws::Signers::V4::BLACKLIST_HEADERS - @headers.keys
        )
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

      def bucket_and_key(params)
        bucket = params.fetch(:bucket)
        key = params.fetch(:key)
        raise ArgumentError, 'bucket must not be blank' if bucket == ''
        raise ArgumentError, 'key must not be blank' if key == ''
      end

      def credentials_and_region(params)
        credentials = params.delete(:credentials)
        region = params.delete(:region)
        raise ArgumentError, ':credentials must be provided for a presigned request' if credentials.nil?
        raise ArgumentError, ':region must be provided for a presigned request' if region.nil?
        [credentials, region]
      end

      def build_headers(hash)
        hash.inject({}) {|h, (k, v)| h["x-amz-#{k.to_s.gsub(/_/, '-')}"] = v; h}
      end

      def endpoint_and_headers(req, secure, virtual_host)
        req.handlers.remove(Plugins::S3BucketDns::Handler) if virtual_host
        req.handlers.remove(Plugins::S3RequestSigner::SigningHandler)
        req.handlers.remove(Seahorse::Client::Plugins::ContentLength::Handler)
        req.handle(step: :send) do |context|
          headers = context.http_request.headers.inject({}) do |h, (k, v)|
            h[k] = v unless k.match(/x-amz-/).nil?
            h
          end
          endpoint = context.http_request.endpoint
          if secure == false || virtual_host
            endpoint.scheme = 'http'
            endpoint.port = 80
          end
          if virtual_host
            endpoint.host = context.params[:bucket]
            endpoint.path.sub!("/#{context.params[:bucket]}", '')
          end
          Seahorse::Client::Response.new(context: context, data: [endpoint, headers])
        end
      end

    end

  end
end
