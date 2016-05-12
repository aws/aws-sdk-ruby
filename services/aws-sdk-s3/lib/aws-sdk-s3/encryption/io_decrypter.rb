module Aws
  module S3
    module Encryption
      # @api private
      class IODecrypter

        # @param [OpenSSL::Cipher] cipher
        # @param [#write] io An IO-like object that responds to {#write}.
        def initialize(cipher, io)
          @orig_cipher = cipher.clone
          @cipher = cipher.clone
          @io = io
          reset_cipher
        end

        # @return [#write]
        attr_reader :io

        def write(chunk)
          @io.write(@cipher.update(chunk))
        end

        def finalize
          @io.write(@cipher.final)
        end

        private

        def reset_cipher
          @cipher = @orig_cipher.clone
        end

      end
    end
  end
end
