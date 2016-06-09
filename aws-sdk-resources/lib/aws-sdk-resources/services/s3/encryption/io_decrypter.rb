module Aws
  module S3
    module Encryption
      # @api private
      class IODecrypter

        # @param [OpenSSL::Cipher] cipher
        # @param [#write] io An IO-like object that responds to {#write}.
        def initialize(cipher, io, has_tag = false)
          @orig_cipher = cipher.clone
          @cipher = cipher.clone
          @io = io
          @has_tag = has_tag
          reset_cipher
        end

        # @return [#write]
        attr_reader :io
        attr_reader :cipher
        attr_writer :has_tag

        def write(chunk)
          unless @has_tag
            # decrypt and write
            @io.write(@cipher.update(chunk))
          else
            # write encrypted data
            @io.write(chunk)
          end
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
