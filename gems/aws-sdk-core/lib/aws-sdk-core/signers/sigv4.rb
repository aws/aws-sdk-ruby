# frozen_string_literal: true

require 'aws-sigv4'

module Aws
  module Core
    module Signers
      # Auth scheme for SigV4.
      class SigV4 < Smithy::Client::Signer
        def sign(request:, identity:, properties:)
          signer = Aws::Sigv4::Signer.new(
            service: properties['name'],
            region: 'us-west-2', # TODO: make region configurable
            credentials: identity
          )
          signature = signer.sign_request(
            http_method: request.http_method,
            url: request.endpoint,
            headers: request.headers,
            body: request.body
          )
          request.headers.update(signature.headers)
        end

        def reset(request:, **_options)
          request.headers.delete('Authorization')
          request.headers.delete('X-Amz-Security-Token')
          request.headers.delete('X-Amz-Date')
          request.headers.delete('x-Amz-Region-Set')
        end
      end
    end
  end
end
