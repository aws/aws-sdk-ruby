module Aws
  module S3
    class Presigner
      def initialize(client = nil)
        @client = client || Aws::S3::Client.new
      end

      def presigned_url(method, params = {})
        request = @client.build_request(method, params)
        request.handle(PresignHandler, step: :sign, priority: 99)
        expires_in = params.delete(:expires_in) || 86400
        validate_expires_in_header(expires_in)
        request.context[:presigned_expires_in] = expires_in
        request.send_request.data
      end

      private
      def validate_expires_in_header(expires_in)
        if(expires_in > 604800)
          raise ArgumentError.new(
            "expires_in value of #{expires_in} exceeds one-week maximum"
          )
        end
      end
    end

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
