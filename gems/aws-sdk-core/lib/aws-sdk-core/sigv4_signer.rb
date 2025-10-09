# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Core
    # Signs requests using AWS Signature Version 4.
    class SigV4Signer
      def initialize(options = {})
        @signer = Aws::SigV4::Signer.new(options)
      end

      def sign_request(context) # rubocop:disable Metrics/AbcSize
        http_request = context.http_request
        reset(http_request.headers)

        signer_properties = context.auth.signer_properties
        signature = @signer.sign_request(
          http_method: http_request.http_method,
          url: http_request.endpoint,
          headers: http_request.headers,
          body: http_request.body,
          service: signer_properties['signingName'] || @signer.service,
          region: signer_properties['signingRegion'] || @signer.region,
          credentials_provider: signer_properties['credentialsProvider'] || @signer.credentials_provider
        )
        context.http_request.headers.update(signature.headers)
      end

      private

      def reset(headers)
        headers.delete('Authorization')
        headers.delete('X-Amz-Security-Token')
        headers.delete('X-Amz-Date')
        headers.delete('x-Amz-Region-Set')
      end
    end
  end
end
