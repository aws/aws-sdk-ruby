# frozen_string_literal: true

module Aws
  module SigV4
    module Errors
      # Raised when required credentials are missing.
      class MissingCredentialsError < ArgumentError
        def initialize(msg = nil)
          super(msg || <<~MSG.strip)
            missing credentials, provide credentials with one of the following options:
              - :access_key_id and :secret_access_key
              - :credentials
              - :credentials_provider
          MSG
        end
      end

      # Raised when the signing region is missing.
      class MissingRegionError < ArgumentError
        def initialize(*)
          super('missing required option :region')
        end
      end

      # Raised when the signing service is missing.
      class MissingServiceError < ArgumentError
        def initialize(*)
          super('missing required option :service')
        end
      end
    end
  end
end
