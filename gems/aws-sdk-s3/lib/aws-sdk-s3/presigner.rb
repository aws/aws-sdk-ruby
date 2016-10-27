module Aws
  module S3

    # Allows you to create presigned URLs for S3 operations.
    #
    # Example Use:
    #
    #      signer = Aws::S3::Presigner.new
    #      url = signer.presigned_url(:get_object, bucket: "bucket", key: "key")
    #
    class Presigner

      # @api private
      ONE_WEEK = 60 * 60 * 24 * 7

      # @api private
      FIFTEEN_MINUTES = 60 * 15

      # @option options [Client] :client Optionally provide an existing
      #   S3 client
      def initialize(options = {})
        @client = options[:client] || Aws::S3::Client.new
      end

      # @param [Symbol] method Symbolized method name of the operation you want
      #   to presign.
      #
      # @option params [Integer] :expires_in (900) The number of seconds
      #   before the presigned URL expires. Defaults to 15 minutes.
      #
      # @option params [Boolean] :secure (true) When `false`, a HTTP URL
      #   is returned instead of the default HTTPS URL.
      #
      # @option params [Boolean] :virtual_host (false) When `true`, the
      #   bucket name will be used as the hostname. This will cause
      #   the returned URL to be 'http' and not 'https'.
      #
      # @raise [ArgumentError] Raises an ArgumentError if `:expires_in`
      #   exceeds one week.
      #
      def presigned_url(method, params = {})
        if params[:key].nil? or params[:key] == ''
          raise ArgumentError, ":key must not be blank"
        end
        virtual_host = !!params.delete(:virtual_host)
        scheme = http_scheme(params, virtual_host)

        req = @client.build_request(method, params)
        use_bucket_as_hostname(req) if virtual_host
        sign_but_dont_send(req, expires_in(params), scheme)
        req.send_request.data
      end

      private

      def http_scheme(params, virtual_host)
        if params.delete(:secure) == false || virtual_host
          'http'
        else
          @client.config.endpoint.scheme
        end
      end

      def expires_in(params)
        if expires_in = params.delete(:expires_in)
          if expires_in > ONE_WEEK
            msg = "expires_in value of #{expires_in} exceeds one-week maximum"
            raise ArgumentError, msg
          end
          expires_in
        else
          FIFTEEN_MINUTES
        end
      end

      def use_bucket_as_hostname(req)
        req.handlers.remove(Plugins::BucketDns::Handler)
        req.handle do |context|
          uri = context.http_request.endpoint
          uri.host = context.params[:bucket]
          uri.path.sub!("/#{context.params[:bucket]}", '')
          uri.scheme = 'http'
          uri.port = 80
          @handler.call(context)
        end
      end

      def sign_but_dont_send(req, expires_in, scheme)
        req.handlers.remove(Aws::S3::Plugins::S3Signer::LegacyHandler)
        req.handlers.remove(Aws::S3::Plugins::S3Signer::V4Handler)
        req.handlers.remove(Seahorse::Client::Plugins::ContentLength::Handler)
        req.handle(step: :send) do |context|
          if scheme != context.http_request.endpoint.scheme
            endpoint = context.http_request.endpoint.dup
            endpoint.scheme = scheme
            endpoint.port = (scheme == 'http' ? 80 : 443)
            context.http_request.endpoint = URI.parse(endpoint.to_s)
          end
          signer = Aws::Sigv4::Signer.new(
            service: 's3',
            region: context.config.region,
            credentials_provider: context.config.credentials,
            unsigned_headers: [
              'cache-control',
              'content-length', # due to a ELB bug
              'expect',
              'max-forwards',
              'pragma',
              'te',
              'if-match',
              'if-none-match',
              'if-modified-since',
              'if-unmodified-since',
              'if-range',
              'accept',
              'proxy-authorization',
              'from',
              'referer',
              'user-agent'
            ],
            uri_escape_path: false
          )
          url = signer.presign_url(
            http_method: context.http_request.http_method,
            url: context.http_request.endpoint,
            headers: context.http_request.headers,
            body_digest: 'UNSIGNED-PAYLOAD',
            expires_in: expires_in
          ).to_s
          Seahorse::Client::Response.new(context: context, data: url)
        end
      end

    end
  end
end
