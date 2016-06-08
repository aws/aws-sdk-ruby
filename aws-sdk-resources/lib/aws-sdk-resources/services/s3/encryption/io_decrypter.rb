module Aws
  module S3
    module Encryption
      # @api private
      class IODecrypter

        # @option options [required, #write] :io
        #   An IO-like object that responds to {#write}.
        # @option options [required, OpenSSL::Cipher] :cipher
        def initialize(options = {})
          @io = options[:io]
          @orig_cipher = options[:cipher].clone
          reset_cipher
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

        private

        def reset_cipher
          @cipher = @orig_cipher.clone
        end

      end

      # @api private
      class IOAuthDecrypter

        # @option options [required, IO#write] :io
        #   An IO-like object that responds to {#write}.
        # @option options [required, Integer] :encrypted_content_length
        #   The number of bytes to decrypt from the `:io` object.
        #   This should be the total size of `:io` minus the length of
        #   the cipher auth tag.
        # @option options [required, OpenSSL::Cipher] :cipher
        # @option options [required, String] :cipher_auth_tag
        # @option options [String] :cipher_auth_data ('')
        def initialize(options = {})
          @io = options[:io]
          options[:cipher].auth_tag = options[:cipher_auth_tag]
          options[:cipher].auth_data = options[:cipher_auth_data] || ''
          @decrypter = IODecrypter.new(options)
          @max_bytes = options[:encrypted_content_length]
          @bytes_written = 0
        end

        def write(chunk)
          chunk = truncate_chunk(chunk)
          @bytes_written += chunk.bytesize
          @decrypter.write(chunk)
        end

        def finalize
          @decrypter.finalize
        end

        def io
          @decrypter.io
        end

        private

        def truncate_chunk(chunk)
          if chunk.bytesize + @bytes_written <= @max_bytes
            chunk
          else
            chunk[0..(@max_bytes - @bytes_written - 1)]
          end
        end

      end
    end
  end
end
