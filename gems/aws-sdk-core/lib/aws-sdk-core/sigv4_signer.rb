# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Core
    # Signs requests using AWS Signature Version 4.
    class SigV4Signer
      def initialize(options = {})
        @name = options[:name]
      end

      def sign_request(context) # rubocop:disable Metrics/AbcSize
        reset(context)
        require 'byebug'
        byebug
        signer = Aws::SigV4::Signer.new(
          service: context.auth.signer_properties['signingName'] || @name,
          region: context.auth.signer_properties['signingRegion'] || context.config.region,
          credentials_provider: context.config.credentials_provider
        )
        signature = signer.sign_request(
          http_method: context.http_request.http_method,
          url: context.http_request.endpoint,
          headers: context.http_request.headers,
          body: context.http_request.body
        )
        context.http_request.headers.update(signature.headers)
      end

      private

      def reset(context)
        context.http_request.headers.delete('Authorization')
        context.http_request.headers.delete('X-Amz-Security-Token')
        context.http_request.headers.delete('X-Amz-Date')
        context.http_request.headers.delete('x-Amz-Region-Set')
      end
    end
  end
end
