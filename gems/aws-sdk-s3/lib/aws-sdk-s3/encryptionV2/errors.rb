module Aws
  module S3
    module EncryptionV2
      module Errors

        class DecryptionError < RuntimeError; end

        class EncryptionError < RuntimeError; end

      end
    end
  end
end
