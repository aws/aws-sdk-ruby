# frozen_string_literal: true

module Aws
  module Core
    module AuthSchemes
      # Auth scheme for SigV4.
      class SigV4 < Smithy::Client::AuthScheme
        def initialize(options = {})
          super(
            scheme_id: 'aws.auth#sigv4',
            signer: options.fetch(:signer, Signers::SigV4.new),
            identity_type: Identities::Credentials
          )
        end
      end
    end
  end
end
