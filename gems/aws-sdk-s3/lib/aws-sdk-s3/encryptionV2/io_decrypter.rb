module Aws
  module S3
    module EncryptionV2
      # @api private
      class IODecrypter

        # @param [OpenSSL::Cipher] cipher
        # @param [IO#write] io An IO-like object that responds to `#write`.
        def initialize(cipher, io)
          @cipher = cipher
          # Ensure that IO is reset between retries
          @io = io.tap { |io| io.truncate(0) if io.respond_to?(:truncate) }
        end

        # @return [#write]
        attr_reader :io

        def write(chunk)
          # decrypt and write
          @io.write(@cipher.update(chunk))
        end

        def finalize
          @io.write(@cipher.final)
        end

      end
    end
  end
end
