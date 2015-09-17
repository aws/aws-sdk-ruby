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
      #   {#bucket} name will be used as the hostname. This will cause
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
          'https'
        end
      end

      def expires_in(params)
        if expires_in = params.delete(:expires_in)
          expires_in
        else
          FIFTEEN_MINUTES
        end
      end

      def use_bucket_as_hostname(req)
        req.handlers.remove(Plugins::S3BucketDns::Handler)
        req.handle do |context|
          uri = context.http_request.endpoint
          uri.host = context.params[:bucket]
          uri.path = uri.path.sub("/#{context.params[:bucket]}", '')
          @handler.call(context)
        end
      end

      def sign_but_dont_send(req, expires_in, scheme)
        req.handlers.remove(Plugins::S3RequestSigner::SigningHandler)
        req.handlers.remove(Seahorse::Client::Plugins::ContentLength::Handler)
        req.handle(step: :send) do |context|
          context.http_request.endpoint.scheme = scheme
          signer = Signers::V4.new(
            context.config.credentials, 's3',
            context.config.region
          )
          url = signer.presigned_url(
            context.http_request,
            expires_in: expires_in,
            body_digest: "UNSIGNED-PAYLOAD"
          )
          Seahorse::Client::Response.new(context: context, data: url)
        end
      end

    end
  end
end
