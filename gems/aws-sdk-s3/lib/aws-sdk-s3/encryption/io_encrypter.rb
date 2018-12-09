require 'stringio'
require 'tempfile'

module Aws
  module S3
    module Encryption

      # Provides an IO wrapper encrpyting a stream of data.
      # It is possible to use this same object for decrypting. You must
      # initialize it with a decryption cipher in that case and the
      # IO object must contain cipher text instead of plain text.
      # @api private
      class IOEncrypter

        # @api private
        ONE_MEGABYTE = 1024 * 1024

        def initialize(cipher, io)
          @encrypted = io.size <= ONE_MEGABYTE ?
            encrypt_to_stringio(cipher, io.read) :
            encrypt_to_tempfile(cipher, io)
          @size = @encrypted.size
        end

        # @return [Integer]
        attr_reader :size

        def read(bytes =  nil, output_buffer = nil)
          if Tempfile === @encrypted && @encrypted.closed?
            @encrypted.open
            @encrypted.binmode
          end
          @encrypted.read(bytes, output_buffer)
        end

        def rewind
          @encrypted.rewind
        end

        # @api private
        def close
          @encrypted.close if Tempfile === @encrypted
        end

        private

        def encrypt_to_stringio(cipher, plain_text)
          data = String.new
          data << cipher.update(plain_text) unless plain_text.empty?
          data << cipher.final
          data << cipher.auth_tag if Utils.cipher_authenticated?(cipher)
          StringIO.new(data)
        end

        def encrypt_to_tempfile(cipher, io)
          encrypted = Tempfile.new(self.object_id.to_s)
          encrypted.binmode
          while chunk = io.read(ONE_MEGABYTE)
            encrypted.write(cipher.update(chunk))
          end
          encrypted.write(cipher.final)
          encrypted.write(cipher.auth_tag) if Utils.cipher_authenticated?(cipher)
          encrypted.rewind
          encrypted
        end

      end
    end
  end
end
