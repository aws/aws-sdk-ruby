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
      # @raise [ArgumentError] Raises an ArgumentError if `:expires_in`
      #   exceeds one week.
      #
      def presigned_url(method, params = {})
        expires_in = params.delete(:expires_in) || FIFTEEN_MINUTES
        scheme = params.delete(:secure) == false ? 'http' : 'https'

        request = @client.build_request(method, params)
        request.handle(PresignHandler, step: :sign, priority: 99)
        validate_expires_in_header(expires_in)
        request.context[:presigned_expires_in] = expires_in

        url = URI.parse(request.send_request.data)
        url.scheme = scheme
        url.to_s
      end

      private
      def validate_expires_in_header(expires_in)
        if(expires_in > ONE_WEEK)
          raise ArgumentError.new(
            "expires_in value of #{expires_in} exceeds one-week maximum"
          )
        end
      end

      # @api private
      class PresignHandler < Seahorse::Client::Handler
        def call(context)
          Seahorse::Client::Response.new(
            context: context,
            data: presigned_url(context)
          )
        end

        def presigned_url(context)
          signer = Signers::V4.new(
            context.config.credentials, 's3',
            context.config.region
          )
          signer.presigned_url(
            context.http_request,
            expires_in: context[:presigned_expires_in],
            body_digest: "UNSIGNED-PAYLOAD"
          )
        end
      end
    end
  end
end
